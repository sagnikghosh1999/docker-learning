FROM ubuntu

# Install the necessary packages
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

# Copy the source code
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY index.js index.js

# Install the dependencies
RUN npm install

# Run the application
ENTRYPOINT ["node", "index.js"]

