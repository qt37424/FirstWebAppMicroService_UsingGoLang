# Configuration
- To build or rebuild docker, run: 
`docker-compose up -d`

# PORT Number for each service in app
- The microservice port using for broker-service and front-end still is `:8080:85`
- The microservice port using for authentication-service is `8080:90`


- To kill the port is running: 
+ First, we should find the PID is using this port: `netstat -ano|findstr "PID :{portNumber}"`
+ Second, use this command to kill PID is using port you want to shutdown: `taskkill /pid {PIDNumber} /f`