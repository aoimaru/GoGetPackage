[app/sources/173035546.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:bf2e1bcb68040b02419edb45b43031ae1b18cdcc4e169ca5287f58dd24ba33ea" [label="/bin/sh -c apk add -U --no-cache bash tar gzip xz procps git curl ruby ruby-dev alpine-sdk libffi-dev rpm dpkg openssh-client ncurses &&    curl -sSL https://download.docker.com/linux/static/stable/x86_64/docker-18.06.1-ce.tgz | tar -C /usr/bin --strip-components=1 -xzf -" shape="box"];
  "sha256:bfb1a230694c96198b291ce9f00e27646495e82da84c6d4e37b52720da24b242" [label="/bin/sh -c set -e -x   && mkdir -p /usr/share/coverage /usr/share/testresults /usr/share/dist   && go get -u golang.org/x/tools/cmd/...   && go get -u github.com/axw/gocov/gocov   && go get -u gopkg.in/matm/v1/gocov-html   && go get -u -t github.com/cee-dub/go-junit-report   && go get -u github.com/aktau/github-release   && go get -u github.com/mitchellh/gox   && gem install --no-ri --no-rdoc fpm etc   && gem sources -c" shape="box"];
  "sha256:8b529b74763ccfa143683306847abb4e01586ae56aac8fa3b5d6c6fc6c1d4ac9" [label="sha256:8b529b74763ccfa143683306847abb4e01586ae56aac8fa3b5d6c6fc6c1d4ac9" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:bf2e1bcb68040b02419edb45b43031ae1b18cdcc4e169ca5287f58dd24ba33ea" [label=""];
  "sha256:bf2e1bcb68040b02419edb45b43031ae1b18cdcc4e169ca5287f58dd24ba33ea" -> "sha256:bfb1a230694c96198b291ce9f00e27646495e82da84c6d4e37b52720da24b242" [label=""];
  "sha256:bfb1a230694c96198b291ce9f00e27646495e82da84c6d4e37b52720da24b242" -> "sha256:8b529b74763ccfa143683306847abb4e01586ae56aac8fa3b5d6c6fc6c1d4ac9" [label=""];
}

