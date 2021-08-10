[app/sources/160602774.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:be0104c49c9d31a3576cb0814f5fe816f2b74bad7faafdc620e45beacd6a5b96" [label="/bin/sh -c apt-get update && apt-get upgrade -q -y &&   apt-get install -y --no-install-recommends golang-1.9 git make gcc libc-dev ca-certificates &&   git clone --depth 1 https://github.com/ethereum/go-ethereum &&   (cd go-ethereum && make geth) &&   cp go-ethereum/build/bin/geth /geth &&   apt-get remove -y golang-1.9 git make gcc libc-dev && apt autoremove -y && apt-get clean &&   rm -rf /go-ethereum" shape="box"];
  "sha256:3c8f19c9e3fe37f3c77f3ca792ba165b05c500ed8356a5b63b53a7eb8ca676e7" [label="sha256:3c8f19c9e3fe37f3c77f3ca792ba165b05c500ed8356a5b63b53a7eb8ca676e7" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:be0104c49c9d31a3576cb0814f5fe816f2b74bad7faafdc620e45beacd6a5b96" [label=""];
  "sha256:be0104c49c9d31a3576cb0814f5fe816f2b74bad7faafdc620e45beacd6a5b96" -> "sha256:3c8f19c9e3fe37f3c77f3ca792ba165b05c500ed8356a5b63b53a7eb8ca676e7" [label=""];
}

