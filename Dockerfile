FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY index.js /usr/share/nginx/html/index.js
COPY index.test.js /usr/share/nginx/html/index.test.js
COPY package.json /usr/share/nginx/html/package.json

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]