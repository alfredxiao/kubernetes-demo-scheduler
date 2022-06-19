FROM golang:1.18-alpine
RUN mkdir /mybin
COPY ./main /mybin/my-scheduler

ENTRYPOINT ["/mybin/my-scheduler"]
