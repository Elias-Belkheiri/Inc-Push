FROM alpine:3.14

RUN apk update && apk add nodejs npm

RUN mkdir -p /vol/static-website/site

# COPY ./tools/index.html /vol/static-website

WORKDIR /vol/static-website

RUN npm init -y && npm install express

COPY ./tools/server.js .

COPY ./tools/site/* ./site

CMD [ "node" , "server.js" ]