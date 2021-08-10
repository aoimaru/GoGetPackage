[app/sources/318617419.Dockerfile]
digraph {
  "sha256:597b25c9e7e5d90b1aaa58bd0f722196150b274d720fc28379a42fd6d0a68fd9" [label="docker-image://docker.io/library/golang:1.10.1-alpine3.7" shape="ellipse"];
  "sha256:c7844b426b0845fa6bd2d1cc5da842db7ebe413828c86f8d80d45bf68b3cf2c0" [label="/bin/sh -c apk update &&     apk add --no-cache git gcc musl-dev &&     apk add glide" shape="box"];
  "sha256:bdceefe7a387ccd17b12616376563ddf35a4bca73f89876d03f3c2f4b6d00208" [label="mkdir{path=/app}" shape="note"];
  "sha256:9d44d86de2b0259eb1d400611fcb9cbac52c98f77d808185f80c0d6b77ffbccc" [label="local://context" shape="ellipse"];
  "sha256:1932d731bc1a17f21f7fcd1d88258b75ada6fc20b7225adf266f8809d76f717c" [label="copy{src=/glide.yaml, dest=/go/src/github.com/ashleyschuett/gce-ingress-backend-services/},copy{src=/glide.lock, dest=/go/src/github.com/ashleyschuett/gce-ingress-backend-services/}" shape="note"];
  "sha256:82eeac510b2b0909787e95015c6e8b7c9728574e90b9f57dba382aaf2c83149d" [label="/bin/sh -c cd $SRC_DIR &&         glide install -v" shape="box"];
  "sha256:20376723f9d44a0448397bc5f8d11114125968f8ff49bab607c5c90309d1c304" [label="copy{src=/, dest=/go/src/github.com/ashleyschuett/gce-ingress-backend-services/}" shape="note"];
  "sha256:247f25b72a8434e7aa72ac54488dd9dd49b34e9019a29939d4e896191dcf7a99" [label="/bin/sh -c cd $SRC_DIR &&     CGO_ENABLED=0 GOOS=linux GOARCH=amd64         go build -ldflags         -a -tags netgo         -o gce-ingress-backend-services ./ &&     cp gce-ingress-backend-services /app/" shape="box"];
  "sha256:e8a597c804b8a3847721edc83d90ab8107767ac317fcf5d95c61f0739b36ad8d" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/ca-certificates.crt}" shape="note"];
  "sha256:ef03e7f2829e10e04a10e97b0bcd11ac804535b69a3c9fad01f51a0c32a0ea58" [label="copy{src=/app/app/gce-ingress-backend-services, dest=/}" shape="note"];
  "sha256:1227b24d48adade6e313ae30e579a0a60cc6ef1f5c6ac95a46e783b458e4d335" [label="sha256:1227b24d48adade6e313ae30e579a0a60cc6ef1f5c6ac95a46e783b458e4d335" shape="plaintext"];
  "sha256:597b25c9e7e5d90b1aaa58bd0f722196150b274d720fc28379a42fd6d0a68fd9" -> "sha256:c7844b426b0845fa6bd2d1cc5da842db7ebe413828c86f8d80d45bf68b3cf2c0" [label=""];
  "sha256:c7844b426b0845fa6bd2d1cc5da842db7ebe413828c86f8d80d45bf68b3cf2c0" -> "sha256:bdceefe7a387ccd17b12616376563ddf35a4bca73f89876d03f3c2f4b6d00208" [label=""];
  "sha256:bdceefe7a387ccd17b12616376563ddf35a4bca73f89876d03f3c2f4b6d00208" -> "sha256:1932d731bc1a17f21f7fcd1d88258b75ada6fc20b7225adf266f8809d76f717c" [label=""];
  "sha256:9d44d86de2b0259eb1d400611fcb9cbac52c98f77d808185f80c0d6b77ffbccc" -> "sha256:1932d731bc1a17f21f7fcd1d88258b75ada6fc20b7225adf266f8809d76f717c" [label=""];
  "sha256:1932d731bc1a17f21f7fcd1d88258b75ada6fc20b7225adf266f8809d76f717c" -> "sha256:82eeac510b2b0909787e95015c6e8b7c9728574e90b9f57dba382aaf2c83149d" [label=""];
  "sha256:82eeac510b2b0909787e95015c6e8b7c9728574e90b9f57dba382aaf2c83149d" -> "sha256:20376723f9d44a0448397bc5f8d11114125968f8ff49bab607c5c90309d1c304" [label=""];
  "sha256:9d44d86de2b0259eb1d400611fcb9cbac52c98f77d808185f80c0d6b77ffbccc" -> "sha256:20376723f9d44a0448397bc5f8d11114125968f8ff49bab607c5c90309d1c304" [label=""];
  "sha256:20376723f9d44a0448397bc5f8d11114125968f8ff49bab607c5c90309d1c304" -> "sha256:247f25b72a8434e7aa72ac54488dd9dd49b34e9019a29939d4e896191dcf7a99" [label=""];
  "sha256:247f25b72a8434e7aa72ac54488dd9dd49b34e9019a29939d4e896191dcf7a99" -> "sha256:e8a597c804b8a3847721edc83d90ab8107767ac317fcf5d95c61f0739b36ad8d" [label=""];
  "sha256:e8a597c804b8a3847721edc83d90ab8107767ac317fcf5d95c61f0739b36ad8d" -> "sha256:ef03e7f2829e10e04a10e97b0bcd11ac804535b69a3c9fad01f51a0c32a0ea58" [label=""];
  "sha256:247f25b72a8434e7aa72ac54488dd9dd49b34e9019a29939d4e896191dcf7a99" -> "sha256:ef03e7f2829e10e04a10e97b0bcd11ac804535b69a3c9fad01f51a0c32a0ea58" [label=""];
  "sha256:ef03e7f2829e10e04a10e97b0bcd11ac804535b69a3c9fad01f51a0c32a0ea58" -> "sha256:1227b24d48adade6e313ae30e579a0a60cc6ef1f5c6ac95a46e783b458e4d335" [label=""];
}

