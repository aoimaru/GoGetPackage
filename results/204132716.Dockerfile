[app/sources/204132716.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:a60329279732a03ebf317195c009be98330ae16379566e1186a3daa9c653d818" [label="/bin/sh -c apk add --update curl jq && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:172fb6a750614a32aaabda4d26cabc424f5431a46a22fb057e1a78d52f893b7d" [label="local://context" shape="ellipse"];
  "sha256:55a25ff92f950dfba0b69542dd602625ba538e41858cb1a855841273482e9711" [label="copy{src=/hostIP.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:0e3504367eb3f5c0d484c2e7e98a151450f27c2284e50d152c0dc1514127091e" [label="docker-image://docker.io/library/golang:1.9.2-alpine" shape="ellipse"];
  "sha256:801ccd234ad1ded272ba5eb129b39c89b44404af1fcee45199e1ed207848b849" [label="copy{src=/, dest=/go/src/github.com/linkerd/linkerd-examples/docker/helloworld/}" shape="note"];
  "sha256:c33879375e2b20aed2f0ba055b934c5d626edaa1555c9a97afb3eadf0061b71e" [label="/bin/sh -c go build -o /go/bin/helloworld        /go/src/github.com/linkerd/linkerd-examples/docker/helloworld/main.go" shape="box"];
  "sha256:ca951483234ca0d6a677561e1542173a0e1bd88fe97b6d07d62cee148893ee0e" [label="/bin/sh -c go build -o /go/bin/helloworld-client /go/src/github.com/linkerd/linkerd-examples/docker/helloworld/helloworld-client/main.go" shape="box"];
  "sha256:3a42f8ecec396065369d6537ac089d78a64bd12d15db48a745ebee1a06611b80" [label="copy{src=/go/bin/helloworld, dest=/usr/local/bin/helloworld}" shape="note"];
  "sha256:a9eeb94295460eb4d1e385b1d6d144692025d872007d095cf38aa72bdbf6b0c2" [label="copy{src=/go/bin/helloworld-client, dest=/usr/local/bin/helloworld-client}" shape="note"];
  "sha256:3b67491ddcf8c8d5a04fc108ba643ef22892238c03fff7ae8ba429cbbf9118ce" [label="sha256:3b67491ddcf8c8d5a04fc108ba643ef22892238c03fff7ae8ba429cbbf9118ce" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:a60329279732a03ebf317195c009be98330ae16379566e1186a3daa9c653d818" [label=""];
  "sha256:a60329279732a03ebf317195c009be98330ae16379566e1186a3daa9c653d818" -> "sha256:55a25ff92f950dfba0b69542dd602625ba538e41858cb1a855841273482e9711" [label=""];
  "sha256:172fb6a750614a32aaabda4d26cabc424f5431a46a22fb057e1a78d52f893b7d" -> "sha256:55a25ff92f950dfba0b69542dd602625ba538e41858cb1a855841273482e9711" [label=""];
  "sha256:0e3504367eb3f5c0d484c2e7e98a151450f27c2284e50d152c0dc1514127091e" -> "sha256:801ccd234ad1ded272ba5eb129b39c89b44404af1fcee45199e1ed207848b849" [label=""];
  "sha256:172fb6a750614a32aaabda4d26cabc424f5431a46a22fb057e1a78d52f893b7d" -> "sha256:801ccd234ad1ded272ba5eb129b39c89b44404af1fcee45199e1ed207848b849" [label=""];
  "sha256:801ccd234ad1ded272ba5eb129b39c89b44404af1fcee45199e1ed207848b849" -> "sha256:c33879375e2b20aed2f0ba055b934c5d626edaa1555c9a97afb3eadf0061b71e" [label=""];
  "sha256:c33879375e2b20aed2f0ba055b934c5d626edaa1555c9a97afb3eadf0061b71e" -> "sha256:ca951483234ca0d6a677561e1542173a0e1bd88fe97b6d07d62cee148893ee0e" [label=""];
  "sha256:55a25ff92f950dfba0b69542dd602625ba538e41858cb1a855841273482e9711" -> "sha256:3a42f8ecec396065369d6537ac089d78a64bd12d15db48a745ebee1a06611b80" [label=""];
  "sha256:ca951483234ca0d6a677561e1542173a0e1bd88fe97b6d07d62cee148893ee0e" -> "sha256:3a42f8ecec396065369d6537ac089d78a64bd12d15db48a745ebee1a06611b80" [label=""];
  "sha256:3a42f8ecec396065369d6537ac089d78a64bd12d15db48a745ebee1a06611b80" -> "sha256:a9eeb94295460eb4d1e385b1d6d144692025d872007d095cf38aa72bdbf6b0c2" [label=""];
  "sha256:ca951483234ca0d6a677561e1542173a0e1bd88fe97b6d07d62cee148893ee0e" -> "sha256:a9eeb94295460eb4d1e385b1d6d144692025d872007d095cf38aa72bdbf6b0c2" [label=""];
  "sha256:a9eeb94295460eb4d1e385b1d6d144692025d872007d095cf38aa72bdbf6b0c2" -> "sha256:3b67491ddcf8c8d5a04fc108ba643ef22892238c03fff7ae8ba429cbbf9118ce" [label=""];
}

