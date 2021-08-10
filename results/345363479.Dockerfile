[app/sources/345363479.Dockerfile]
digraph {
  "sha256:9d7f638579667566d0bcdb2b3a04de39d633dd79edf7c3d664176adfc7dc52c6" [label="docker-image://docker.io/balenalib/apalis-imx6q-fedora:26-run" shape="ellipse"];
  "sha256:32168104c21337e188ea8df2a54af38b6db28357d6211742d56ac75f86303b97" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:40ce68626e39c1516cf6a1b52644f0fc830d441254e05f017183faeaf2128938" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:3c77ed0d2176c4150c37d6d03884e9b1c79bfe71ebe3562049385c2472baefe8" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:1797df71eb0094edd4e79ca3a3367cd7b0cd12eae3579ba914716fcd788eb49e" [label="mkdir{path=/go}" shape="note"];
  "sha256:c832ee568f6315ff0c03a14ae20f159ff805d5abaefcfe4a77e44bd47d0c45ca" [label="sha256:c832ee568f6315ff0c03a14ae20f159ff805d5abaefcfe4a77e44bd47d0c45ca" shape="plaintext"];
  "sha256:9d7f638579667566d0bcdb2b3a04de39d633dd79edf7c3d664176adfc7dc52c6" -> "sha256:32168104c21337e188ea8df2a54af38b6db28357d6211742d56ac75f86303b97" [label=""];
  "sha256:32168104c21337e188ea8df2a54af38b6db28357d6211742d56ac75f86303b97" -> "sha256:40ce68626e39c1516cf6a1b52644f0fc830d441254e05f017183faeaf2128938" [label=""];
  "sha256:40ce68626e39c1516cf6a1b52644f0fc830d441254e05f017183faeaf2128938" -> "sha256:3c77ed0d2176c4150c37d6d03884e9b1c79bfe71ebe3562049385c2472baefe8" [label=""];
  "sha256:3c77ed0d2176c4150c37d6d03884e9b1c79bfe71ebe3562049385c2472baefe8" -> "sha256:1797df71eb0094edd4e79ca3a3367cd7b0cd12eae3579ba914716fcd788eb49e" [label=""];
  "sha256:1797df71eb0094edd4e79ca3a3367cd7b0cd12eae3579ba914716fcd788eb49e" -> "sha256:c832ee568f6315ff0c03a14ae20f159ff805d5abaefcfe4a77e44bd47d0c45ca" [label=""];
}

