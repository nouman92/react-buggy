FROM node:12

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
# COPY package-lock.json ./
RUN npm install
# RUN npm install react-scripts@3.4.1 -g --silent      

# Install trufflehog 
RUN npm install trufflehog

# Run trufflehog
RUN trufflehog https://github.com/SadiaAshfaq2812/react-buggy.git
# RUN docker pull gesellix/trufflehog
# RUN docker run gesellix/trufflehog --json --regex https://github.com/SadiaAshfaq2812/react-buggy.git > trufflehog

# add app
COPY . ./

# start app
CMD ["npm", "start"]
