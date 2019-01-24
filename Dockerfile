FROM alpine

RUN apk --no-cache add docker bash rsync

RUN apk --no-cache add python py-pip &&\
    pip install docker-compose &&\
    apk --no-cache del py-pip
