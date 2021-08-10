[app/sources/291126567.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:efb84a80bcd3b2245f30105382ea1b8f201a36de0418d719be60c31c3417d9a4" [label="/bin/sh -c apk update && apk add gpsd --no-cache ca-certificates" shape="box"];
  "sha256:354f74e2bc3da5fe836cad93957a01946dd8c47ff6177b5b3f6e13cc798d33dd" [label="docker-image://docker.io/library/golang:1.10.0-alpine" shape="ellipse"];
  "sha256:4a0dc1141d801587421b586721f4d9298fbf5aa29d3fdec1c713805762a42ba3" [label="/bin/sh -c apk --no-cache update && apk add git" shape="box"];
  "sha256:155a34409ceb37b60db1e4af3a61b8907e6270f1cb9624c3641c9b6ae0d4e22d" [label="/bin/sh -c mkdir -p /build/bin" shape="box"];
  "sha256:ad6cbab50031313296059f9c77b139440d6ce190daf0e934f4afa04c0fd7a42c" [label="local://context" shape="ellipse"];
  "sha256:64afe67840aaeadbf52c5a32aeae5870135b41a351ff96ba146f570ba77a8f9c" [label="copy{src=/src, dest=/build/src}" shape="note"];
  "sha256:e9ccb97b379425989ac5a4e7a9258143ef30694d783fcb1bf6f6edf45d68dd0d" [label="mkdir{path=/build}" shape="note"];
  "sha256:3dc5db444e620693dda0b185ef80cab2bf4e86b091314192808666e017b649e6" [label="/bin/sh -c env GOPATH=/build GOOPTIONS_AMD64='CGO_ENABLED=0 GOOS=linux GOARCH=amd64' go get github.com/kellydunn/golang-geo" shape="box"];
  "sha256:c3d37b366451f1990bf70b4857da12350f21eff1d6c3a9119da03c41de154a5b" [label="/bin/sh -c env GOPATH=/build GOOPTIONS_AMD64='CGO_ENABLED=0 GOOS=linux GOARCH=amd64' go build -o /build/bin/amd64_gps /build/src/main.go" shape="box"];
  "sha256:9ed702df167b8f4b0227f2080d4d780ff30152a5c976a76ba64f46761bb661b7" [label="copy{src=/build/bin/amd64_gps, dest=/gps}" shape="note"];
  "sha256:0f1e60e3445c4ce6690f2954ce911c29f5b9c20f098edfa3b8bb7fc87318a939" [label="sha256:0f1e60e3445c4ce6690f2954ce911c29f5b9c20f098edfa3b8bb7fc87318a939" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:efb84a80bcd3b2245f30105382ea1b8f201a36de0418d719be60c31c3417d9a4" [label=""];
  "sha256:354f74e2bc3da5fe836cad93957a01946dd8c47ff6177b5b3f6e13cc798d33dd" -> "sha256:4a0dc1141d801587421b586721f4d9298fbf5aa29d3fdec1c713805762a42ba3" [label=""];
  "sha256:4a0dc1141d801587421b586721f4d9298fbf5aa29d3fdec1c713805762a42ba3" -> "sha256:155a34409ceb37b60db1e4af3a61b8907e6270f1cb9624c3641c9b6ae0d4e22d" [label=""];
  "sha256:155a34409ceb37b60db1e4af3a61b8907e6270f1cb9624c3641c9b6ae0d4e22d" -> "sha256:64afe67840aaeadbf52c5a32aeae5870135b41a351ff96ba146f570ba77a8f9c" [label=""];
  "sha256:ad6cbab50031313296059f9c77b139440d6ce190daf0e934f4afa04c0fd7a42c" -> "sha256:64afe67840aaeadbf52c5a32aeae5870135b41a351ff96ba146f570ba77a8f9c" [label=""];
  "sha256:64afe67840aaeadbf52c5a32aeae5870135b41a351ff96ba146f570ba77a8f9c" -> "sha256:e9ccb97b379425989ac5a4e7a9258143ef30694d783fcb1bf6f6edf45d68dd0d" [label=""];
  "sha256:e9ccb97b379425989ac5a4e7a9258143ef30694d783fcb1bf6f6edf45d68dd0d" -> "sha256:3dc5db444e620693dda0b185ef80cab2bf4e86b091314192808666e017b649e6" [label=""];
  "sha256:3dc5db444e620693dda0b185ef80cab2bf4e86b091314192808666e017b649e6" -> "sha256:c3d37b366451f1990bf70b4857da12350f21eff1d6c3a9119da03c41de154a5b" [label=""];
  "sha256:efb84a80bcd3b2245f30105382ea1b8f201a36de0418d719be60c31c3417d9a4" -> "sha256:9ed702df167b8f4b0227f2080d4d780ff30152a5c976a76ba64f46761bb661b7" [label=""];
  "sha256:c3d37b366451f1990bf70b4857da12350f21eff1d6c3a9119da03c41de154a5b" -> "sha256:9ed702df167b8f4b0227f2080d4d780ff30152a5c976a76ba64f46761bb661b7" [label=""];
  "sha256:9ed702df167b8f4b0227f2080d4d780ff30152a5c976a76ba64f46761bb661b7" -> "sha256:0f1e60e3445c4ce6690f2954ce911c29f5b9c20f098edfa3b8bb7fc87318a939" [label=""];
}

