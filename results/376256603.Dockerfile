[app/sources/376256603.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:9eea5d650b825da65e2ab754f6722386c49ae91790700ce14a784f05616a3ad2" [label="/bin/sh -c apt-get update && apt-get upgrade -q -y &&   apt-get install -y --no-install-recommends golang-1.9 git make gcc libc-dev ca-certificates &&   git clone --depth 1 --branch release/1.8 https://github.com/ethereum/go-ethereum &&   (cd go-ethereum && make geth) &&   cp go-ethereum/build/bin/geth /geth &&   apt-get remove -y golang-1.9 git make gcc libc-dev && apt autoremove -y && apt-get clean &&   rm -rf /go-ethereum" shape="box"];
  "sha256:d90382694dda406d3fd4979f6cf409333ce934c178a066ae46f8fb1cb0077a96" [label="sha256:d90382694dda406d3fd4979f6cf409333ce934c178a066ae46f8fb1cb0077a96" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:9eea5d650b825da65e2ab754f6722386c49ae91790700ce14a784f05616a3ad2" [label=""];
  "sha256:9eea5d650b825da65e2ab754f6722386c49ae91790700ce14a784f05616a3ad2" -> "sha256:d90382694dda406d3fd4979f6cf409333ce934c178a066ae46f8fb1cb0077a96" [label=""];
}

