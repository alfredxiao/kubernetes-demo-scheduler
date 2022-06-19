FROM golang:1.18-alpine
RUN mkdir /my-scheduler-src
ADD ./main.go /my-scheduler-src
ADD ./go.mod /my-scheduler-src
ADD ./go.sum /my-scheduler-src
WORKDIR /my-scheduler-src
ENV CGO_ENABLED=0
RUN go build -o main main.go
RUN mkdir /mybin
RUN cp /my-scheduler-src/main /mybin/my-scheduler

ENTRYPOINT ["/mybin/my-scheduler"]
