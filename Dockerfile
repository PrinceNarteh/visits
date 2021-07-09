# Setting the base image
FROM node:alpine

# Setting the working directory
WORKDIR /app

# Copying package.json to the container
# and installing the dependencies
COPY ./package.json .
RUN npm install

# Copying the rest of the files
COPY . .

# Default commands
CMD ["npm", "start"]

