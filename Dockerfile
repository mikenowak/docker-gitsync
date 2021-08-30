FROM golang:alpine
RUN apk add --no-cache git findutils
WORKDIR /go/src/app
ADD git-sync.go .
RUN go build -v git-sync.go
ENV GIT_SYNC_DEST /git
VOLUME ["/git"]
CMD ["/go/src/app/git-sync"]
