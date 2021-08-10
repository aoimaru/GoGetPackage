[app/sources/462210134.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:bfb960b2e2884468dfc33c00368b842bed9656b6e1670d1e3de7618299c2e846" [label="/bin/sh -c apt-get update && apt-get upgrade -q -y &&   apt-get install -y --no-install-recommends golang git make gcc libc-dev ca-certificates &&   git clone --depth 1 https://github.com/ethereum/go-ethereum &&   (cd go-ethereum && make geth) &&   cp go-ethereum/build/bin/geth /geth &&   apt-get remove -y golang git make gcc libc-dev && apt autoremove -y && apt-get clean &&   rm -rf /go-ethereum" shape="box"];
  "sha256:04d1800c5b1c9d7aee980c48a539056a18cec70b2228e1b04cf29a337ea5d359" [label="sha256:04d1800c5b1c9d7aee980c48a539056a18cec70b2228e1b04cf29a337ea5d359" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:bfb960b2e2884468dfc33c00368b842bed9656b6e1670d1e3de7618299c2e846" [label=""];
  "sha256:bfb960b2e2884468dfc33c00368b842bed9656b6e1670d1e3de7618299c2e846" -> "sha256:04d1800c5b1c9d7aee980c48a539056a18cec70b2228e1b04cf29a337ea5d359" [label=""];
}

