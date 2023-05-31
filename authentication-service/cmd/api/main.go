package main

import (
	"authentication/cmd/data"
	"database/sql"
	"fmt"
	"log"
	"net/http"
	"os"
	"time"

	_ "github.com/go-sql-driver/mysql"
)

const webPort = "90"

var counts int64

type Config struct {
	DB     *sql.DB
	Models data.Models
}

func main() {
	log.Printf("Starting authentication service at %s\n", webPort)

	// TODO connect to DB
	conn := connectToDB()
	if conn == nil {
		log.Panic("Can't connect to Database!")
	}

	// set up config
	app := Config{
		DB:     conn,
		Models: data.New(conn),
	}

	srv := &http.Server{
		Addr:    fmt.Sprintf(":%s", webPort),
		Handler: app.routes(),
	}

	err := srv.ListenAndServe()
	if err != nil {
		log.Panic(err)
	}
	// ending for set up config
}

func openDB(dsn string) (*sql.DB, error) {
	// db, err := sql.Open("pgx", dsn) // That is used for connecting with Postgresql
	db, err := sql.Open("mysql", dsn)
	if err != nil {
		return nil, err
	}

	err = db.Ping()
	if err != nil {
		return nil, err
	}

	return db, nil
}

func connectToDB() *sql.DB {
	dsn := os.Getenv("DSN")

	for {
		connection, err := openDB(dsn)
		if err != nil {
			log.Println("Database not yet already ...")
			counts++
		} else {
			log.Println("Connected to Database")
			return connection
		}

		// In my opinion, this method will check the time to timeout
		if counts > 10 {
			log.Println(err)
			return nil
		}

		log.Println("Backing off for two seconds...")
		time.Sleep(2 * time.Second)
		continue
	}
}