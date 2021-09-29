FROM node:16-alpine
#Define the workdir
WORKDIR /app
#Copy app to workdir
COPY . .
#Install bash in alpine container
RUN apk add --no-cache bash
#Install dependencies
RUN npm install
RUN npm install -y -g serve
#Build app
RUN npm run build
#Open port 5000
EXPOSE 5000
#Run app
CMD ["serve","-s","dist"]