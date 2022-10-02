#You are building an image from a Parent image i'll be using Python:3 for this simmulation
FROM python:3

WORKDIR /the/workdir/path 
#The path is a directory in which your image will reside

COPY requirements.txt ./
#simply copies the additional app info

Run pip install --no-cache-dir -r requirements.txt
#runs the additional app 

Copy . .
#Copies all apps to the working directory

CMD [ "python", "server.py"] 
#This tells Docker what Container to run allowing it to spin  up the application inside the container

#Go ahead to build and run the image using the following commands
# docker build -t mypythonapp .
# docker run -it --name my-new-python-app mypythonapp
