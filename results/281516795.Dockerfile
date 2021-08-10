[app/sources/281516795.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:655d7d9cf48c2249c7d0bb0eb82ad73c0b3979b46f413a56594cf08903a260c2" [label="/bin/sh -c apt-get update && apt-get upgrade -q -y &&   apt-get install -y --no-install-recommends golang git make gcc libc-dev ca-certificates &&   git clone --depth 1 --branch release/1.7 https://github.com/ethereum/go-ethereum &&   (cd go-ethereum && make geth) &&   cp go-ethereum/build/bin/geth /geth &&   apt-get remove -y golang git make gcc libc-dev && apt autoremove -y && apt-get clean &&   rm -rf /go-ethereum" shape="box"];
  "sha256:dd10649157b95b526b6341eb1e7715687324e69aeee1a09d1f988d1742f85237" [label="sha256:dd10649157b95b526b6341eb1e7715687324e69aeee1a09d1f988d1742f85237" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:655d7d9cf48c2249c7d0bb0eb82ad73c0b3979b46f413a56594cf08903a260c2" [label=""];
  "sha256:655d7d9cf48c2249c7d0bb0eb82ad73c0b3979b46f413a56594cf08903a260c2" -> "sha256:dd10649157b95b526b6341eb1e7715687324e69aeee1a09d1f988d1742f85237" [label=""];
}

