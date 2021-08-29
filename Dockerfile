FROM golang:alpine
VOLUME ["/git"]
ENV GIT_SYNC_DEST /git
ENTRYPOINT ["/go/bin/git-sync"]
