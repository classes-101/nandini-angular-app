FROM node AS nandini
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build 
RUN ls

FROM nginx
COPY --from=nandini /app/dist/nandini/browser/ /usr/share/nginx/html/

