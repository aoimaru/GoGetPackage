[app/sources/484096006.Dockerfile]
digraph {
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:dd01cf64a7d5b1ad7ec1ad36b7175401abb06a5643cf88b63ddc059fce5319c1" [label="local://context" shape="ellipse"];
  "sha256:629c89d0f158a6223c09a9c0b6f34f2c82081a235b3415ccd314cd536fff549b" [label="copy{src=/, dest=/go/src/github.com/MickayG/moby-kafka-logdriver}" shape="note"];
  "sha256:b849264268e59a397199c3b225e198368259d53141a70aa8e14239d85f815d69" [label="mkdir{path=/go/src/github.com/MickayG/moby-kafka-logdriver}" shape="note"];
  "sha256:2edade435b1081798f9c46820378a9fd902ad4bc6f8d9f7c34c11f7f2f75eaeb" [label="/bin/sh -c go build --ldflags '-extldflags \"-static\"' -o kafka-logdriver" shape="box"];
  "sha256:b045ed9fead3580d95019dec14b686f2e781b812a257addada7d092fc981c4b6" [label="/bin/sh -c mkdir -p /kafka-logdriver/rootfs/usr/bin/" shape="box"];
  "sha256:d9fb3eed70a577b9df2092498782c00b60820a08457a2154eb9678fa1d56b7ad" [label="/bin/sh -c cp kafka-logdriver /kafka-logdriver/rootfs/usr/bin/" shape="box"];
  "sha256:e34ffcd985b7099a7540e7818d26708141e788e4ecad4c96faec25f8f367d751" [label="/bin/sh -c cp config.json /kafka-logdriver" shape="box"];
  "sha256:631916d67c73da44749b029338ab2039781ed57b038adf7d805620c5be9c3963" [label="/bin/sh -c tar -zcvf kafka-logdriver.tar.gz kafka-logdriver" shape="box"];
  "sha256:b914042861ed84bc4a39f02329414f2906ad42f9ee8e785c36eb6930cf4b13cc" [label="sha256:b914042861ed84bc4a39f02329414f2906ad42f9ee8e785c36eb6930cf4b13cc" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:629c89d0f158a6223c09a9c0b6f34f2c82081a235b3415ccd314cd536fff549b" [label=""];
  "sha256:dd01cf64a7d5b1ad7ec1ad36b7175401abb06a5643cf88b63ddc059fce5319c1" -> "sha256:629c89d0f158a6223c09a9c0b6f34f2c82081a235b3415ccd314cd536fff549b" [label=""];
  "sha256:629c89d0f158a6223c09a9c0b6f34f2c82081a235b3415ccd314cd536fff549b" -> "sha256:b849264268e59a397199c3b225e198368259d53141a70aa8e14239d85f815d69" [label=""];
  "sha256:b849264268e59a397199c3b225e198368259d53141a70aa8e14239d85f815d69" -> "sha256:2edade435b1081798f9c46820378a9fd902ad4bc6f8d9f7c34c11f7f2f75eaeb" [label=""];
  "sha256:2edade435b1081798f9c46820378a9fd902ad4bc6f8d9f7c34c11f7f2f75eaeb" -> "sha256:b045ed9fead3580d95019dec14b686f2e781b812a257addada7d092fc981c4b6" [label=""];
  "sha256:b045ed9fead3580d95019dec14b686f2e781b812a257addada7d092fc981c4b6" -> "sha256:d9fb3eed70a577b9df2092498782c00b60820a08457a2154eb9678fa1d56b7ad" [label=""];
  "sha256:d9fb3eed70a577b9df2092498782c00b60820a08457a2154eb9678fa1d56b7ad" -> "sha256:e34ffcd985b7099a7540e7818d26708141e788e4ecad4c96faec25f8f367d751" [label=""];
  "sha256:e34ffcd985b7099a7540e7818d26708141e788e4ecad4c96faec25f8f367d751" -> "sha256:631916d67c73da44749b029338ab2039781ed57b038adf7d805620c5be9c3963" [label=""];
  "sha256:631916d67c73da44749b029338ab2039781ed57b038adf7d805620c5be9c3963" -> "sha256:b914042861ed84bc4a39f02329414f2906ad42f9ee8e785c36eb6930cf4b13cc" [label=""];
}

