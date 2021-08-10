[app/sources/235412595.Dockerfile]
digraph {
  "sha256:ab845ac23178ee6eb69119a91ad421cc34aec54db4ebc436cafa2d55ccae5b27" [label="docker-image://docker.io/library/golang:1.10-alpine3.7@sha256:157d84f6624060d6af2715b56917b87d72772832e32acd49386cf43895e9f3bf" shape="ellipse"];
  "sha256:daf4a1cc00aa0ca7043adbdd511b9354ac0f692c3d8511714a93054efcf463ce" [label="/bin/sh -c echo \"http://mirrors.aliyun.com/alpine/v3.7/main\" > /etc/apk/repositories     && echo \"http://mirrors.aliyun.com/alpine/v3.7/community\" >> /etc/apk/repositories     && apk update     && apk --no-cache add ca-certificates openssl git     && go get -u -v github.com/voidint/gbb     && cd $GOPATH/src/github.com/voidint/gbb     && gbb --debug     && mv ./gbb $GOPATH/bin/gbb     && cd $GOPATH     && rm -rf $GOPATH/src $GOPATH/pkg" shape="box"];
  "sha256:7ed00753ed42ab56ae2a5b7bb819386a9a341029e2fbb1de810c5d41831fdc5d" [label="mkdir{path=/go}" shape="note"];
  "sha256:b2ec2026ec9216b1d5612f647b6fec07c0e872a11eef66d991a73bd07d5d650f" [label="sha256:b2ec2026ec9216b1d5612f647b6fec07c0e872a11eef66d991a73bd07d5d650f" shape="plaintext"];
  "sha256:ab845ac23178ee6eb69119a91ad421cc34aec54db4ebc436cafa2d55ccae5b27" -> "sha256:daf4a1cc00aa0ca7043adbdd511b9354ac0f692c3d8511714a93054efcf463ce" [label=""];
  "sha256:daf4a1cc00aa0ca7043adbdd511b9354ac0f692c3d8511714a93054efcf463ce" -> "sha256:7ed00753ed42ab56ae2a5b7bb819386a9a341029e2fbb1de810c5d41831fdc5d" [label=""];
  "sha256:7ed00753ed42ab56ae2a5b7bb819386a9a341029e2fbb1de810c5d41831fdc5d" -> "sha256:b2ec2026ec9216b1d5612f647b6fec07c0e872a11eef66d991a73bd07d5d650f" [label=""];
}

