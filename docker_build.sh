export BASEDIR=github.com/wongoo
export PROJECT=golang-jenkins-docker

docker run --rm \
  -w /go/src/$BASEDIR/$PROJECT \
  -v $(pwd):/go/src/$BASEDIR/$PROJECT \
  -it golang:1.10 \
  make build

