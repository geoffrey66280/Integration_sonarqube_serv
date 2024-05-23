# Build stage
FROM node:alpine AS build
WORKDIR /usr/src/app
COPY . .
RUN npm install -g @angular/cli
RUN npm install
RUN ng build --prod

# Run stage
FROM nginx:alpine
COPY --from=build /usr/src/app/dist /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]