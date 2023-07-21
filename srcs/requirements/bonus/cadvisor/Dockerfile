FROM alpine:3.14

RUN apk update && apk add curl 

RUN curl -LO https://github.com/google/cadvisor/releases/download/v0.47.2/cadvisor-v0.47.2-linux-amd64 && chmod +x cadvisor-v0.47.2-linux-amd64

CMD [ "./cadvisor-v0.47.2-linux-amd64" ]