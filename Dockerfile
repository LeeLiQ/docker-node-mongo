# this is the base image where our app image is based off
FROM node:10
# this is the path to where our app will be living in the container. 
# If it doesn't exist it will be created.
WORKDIR /usr/src/app
# copy dependency files to the working dir so that npm will install
# dependecies.
# the first param is the file(s) under the same dir with the Dockerfile
# the second param is the path starting from the current working dir.
COPY package*.json ./
# because we need to 
RUN npm install

# copy over everything else to the working directory
COPY . .
# this is the port our app listens to inside a container, just like 80 for nginx.
EXPOSE 3000

CMD ["npm", "start"]
