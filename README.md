# ALL OF THING NOTE

# In section 1 
## Video 5: 
- The mentor suggest install Make but I haven't installed it cause I think it's not necessary right now. In the future if u want to install let's following to this guide in this video

# In section 2:
- front-end is a platform UI using in this course that mentor create before, we just download and using it
- broker-service is created by following the instructor of the mentor, this is the api server supporting for front-end
## Video 13:
- broker-service.dockerfile is a file support for Docker compose how to build the image of this service
- docker-compose in project folder is a file help to make the server run inside that project folder
- port "8080:85" is mean 85 is a micro-service in a bigger-service of one project have run with port 8080
- "docker-compose up -d" in project folder is a command for build and run docker
- To run and rebuild just using the above command, that's enough

## Video 14: 
- The reason for link "http:\/\/localhost:8080" in the script of "test.page.gohtml" is this is the template of golang

## Video 15: 
- The type "..." I think it mean you can type many argument you like but you should make sure it have the same type when declaring

## Video 17: 
- When running Makefile, it not only run Makefile but also run Docker file
- When running a Makefile, make sure you have a TAB character at the front of the line.
Example: Makefile in project folder 

# In section 3:
## In no video:
- In my opinion, docker is an application using Virtual Ubuntu (or maybe real ubuntu if you install docker in ubuntu OS) so when run docker-compose, all of the service will be depend on the application is install in the virtual Docker machine, so if run a images related to MySQL, if you are not installed Docker MySQL, you can't run this images. => I try it again, and I realize