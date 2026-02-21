how to install docker windows
how to install docker on linux ( CLI)

plan - task
Dockers – 4th week 21st feb 
create a linux container
docker run -itd ubuntu

docker run -d -p 80:80 nginx // create a contaomer of nginx withiut interative session as this is a servie, -p 80:80 means map port my system port 80 to container port 80.

 

 

 

Docker ps -//in linux 

sudo usermod -aG docker adminuser  // add user to docker grp to add permision 

newgrp docker to apply the changes to your current terminal session. 

To create ubuntu image in docker  

docker run -itd ubuntu // To create ubuntu image in docker 
<img width="1047" height="398" alt="image" src="https://github.com/user-attachments/assets/d1c603ff-c21c-4048-9c53-9a345b758224" />


 
cretae docker file from local image
cretae local image

docker build -t myappname:latest .    // -t myapp:latest → tags the image with a name and version. but
. → means “build from the current directory.”

Steps to Build a Docker Image from a Dockerfile

Prepare Your Project Directory

Create a folder for your project and place your application files inside it.
Add a Dockerfile (no file extension) in the same directory.
Write Your Dockerfile
Example:

Dockerfile

Copy code
# Use an official Python runtime as a base image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy local files to container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the app
CMD ["python", "app.py"]
Build the Docker Image
Open a terminal in the same directory as your Dockerfile and run:

Bash
docker build -t myapp:latest .


-t myapp:latest → tags the image with a name and version.
. → means “build from the current directory.”

Verify the Image
docker images

Copy code
docker images
You should see myapp listed.

Run the Container

Bash

Copy code
docker run -d -p 5000:5000 myapp:latest
-d → runs in detached mode.
-p 5000:5000 → maps container port 5000 to your machine’s port 5000.
