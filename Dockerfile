#I don't know why `Run npm install` doesn't work make sure ran `npm install` before

#build

FROM node AS  builder
WORKDIR /app
COPY . .

RUN npm run build
FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY --from=builder /app/build .
CMD ["nginx", "-g", "daemon off;"]

#=====================================================

#start from local
FROM node
#Run mkdir /app/<project-name>
WORKDIR /app/<project-name>
COPY . .
CMD ["npm", "run", "start"]