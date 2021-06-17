FROM python:3-alpine
# RUN apk add --no-cache git && 
RUN pip install gitdb2==3.0.0 trufflehog
RUN adduser -S truffleHog
USER truffleHog
WORKDIR /proj
ENTRYPOINT [ "trufflehog" ]
CMD [ "-h" ]

FROM node:12

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./

# COPY package-lock.json ./
# RUN npm install -g trufflehog
# RUN trufflehog
RUN npm install
RUN dxa4481/trufflehog
RUN dxa4481/trufflehog --regex --entropy=False https://github.com/SadiaAshfaq2812/react-buggy.git
# RUN docker pull gesellix/trufflehog
# RUN docker run gesellix/trufflehog --json --regex https://github.com/SadiaAshfaq2812/react-buggy.git > trufflehog
  
# RUN npm install react-scripts@3.4.1 -g --silent

# RUN npm install trufflehog

      
# RUN trufflehog -c ./config.json



# add app
COPY . ./

# Define environment variables for Cloud Run
ENV PORT 3000
ENV HOST 0.0.0.0
EXPOSE 3000

# start app
#CMD ["npm", "start"]