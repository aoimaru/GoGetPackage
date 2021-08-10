[app/sources/313421213.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:8246256f539e8fb8178b22d9a99aa84ec7212104366c8e6e33d922ae535579ad" [label="/bin/sh -c apt-get update && apt-get upgrade -q -y &&   apt-get install -y --no-install-recommends golang-1.9 git make gcc libc-dev ca-certificates &&   git clone --depth 1 --branch release/1.8 https://github.com/vntchain/go-vnt &&   (cd go-vnt && make gvnt) &&   cp go-vnt/build/bin/gvnt /gvnt &&   apt-get remove -y golang-1.9 git make gcc libc-dev && apt autoremove -y && apt-get clean &&   rm -rf /go-vnt" shape="box"];
  "sha256:0da4b2e292049a0c4ae0bb6a5020d7b9dd1f0c0ae82e7b5ad535cb74d86c5ec0" [label="sha256:0da4b2e292049a0c4ae0bb6a5020d7b9dd1f0c0ae82e7b5ad535cb74d86c5ec0" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:8246256f539e8fb8178b22d9a99aa84ec7212104366c8e6e33d922ae535579ad" [label=""];
  "sha256:8246256f539e8fb8178b22d9a99aa84ec7212104366c8e6e33d922ae535579ad" -> "sha256:0da4b2e292049a0c4ae0bb6a5020d7b9dd1f0c0ae82e7b5ad535cb74d86c5ec0" [label=""];
}

