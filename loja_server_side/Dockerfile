FROM node:16-alpine
#Define the workdir
WORKDIR /app
#Copy app to workdir
COPY . .
#Install bash in alpine container
RUN apk add --no-cache bash
#Install dependencies
RUN npm install
#Open port 3342
EXPOSE 3342
#Run app
CMD ["npm","run","dev"]