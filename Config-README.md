# Configuration
- To build or rebuild docker, run: 
```
make up_build // run with MakeFile, if it's the first time you build, you should run this first (1)
```
Or
```
docker-compose up -d // run with Docker (2)
```

First (1) command line is contained execute of second (2) command line

# PORT Number for each service in app
- The microservice port using for broker-service and front-end still is `:8080:85`
- The microservice port using for authentication-service is `8081:85`

# To install Docker Mysql
Step 1: Pull MySQL Image, cause in my project I use MySQL 5.7, so I installed this version, if you want you can change the version
```
docker pull mysql:5.7
```

Step 2: Verify the Downloaded Image
```
docker images
```

Step 3: Run MySQL Image in a Container
```
docker run -d --name mySql-cont -e MYSQL_ROOT_PASSWORD=<password> mysql:5.7
```

Step 4: Verification
```
ps -a
```

Step 5: (if you've install mysql before)
Change the port in docker-compose.yml into 3307:3306 to avoid the same port when running

# Execute sql file into MySQL server
```
mysql -u root -p{your_password} < {path_to_your_sqlfile}
```

***

# Some Error

# Error when running MySQL container

When build, rebuild or run docker, if you have the below error:
l
![](/project/ErrorWhenRunning.PNG)

Don't worry, just connect your PC with the internet and build it again

# Error when two app running in the same port

- To kill the port is running: 
+ First, we should find the PID is using this port:
`netstat -ano|findstr "PID :{portNumber}"`
+ Second, use this command to kill PID is using port you want to shutdown: 
`taskkill /pid {PIDNumber} /f`
