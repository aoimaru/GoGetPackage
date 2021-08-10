[app/sources/197968702.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:033f781922836764ecff7f96b7119a22a43735e9ab5845349f96ee07bb681f83" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:1d3d49b1b685d4d5a53e98c29fe19909017449a5c0f8fb2ce37992ba02ccb0f8" [label="mkdir{path=/root}" shape="note"];
  "sha256:ad0ef5a06e423d39ff0e3108d98212ce0ff629e0c76304d1baa14891c6bf3a44" [label="docker-image://docker.io/library/golang:1.7.3" shape="ellipse"];
  "sha256:e3e750e09344fdc029cf49106e1fb1d14a1bbb84b89857f034af071feab77492" [label="mkdir{path=/go/src/github.com/alexellis/href-counter}" shape="note"];
  "sha256:16450c2ed3f20b0ff8ed1df1b6b24f6afdfc6eeab0aaa888cf1282b0a74efc05" [label="/bin/sh -c go get -d -v golang.org/x/net/html" shape="box"];
  "sha256:833a98fa3d79fd4d2e0dc76e428f28de57883cb41c71d550824114d8b6e93cb9" [label="local://context" shape="ellipse"];
  "sha256:54de375063950de541ddf445a9b41d238e83e12032ff150bb484de863fa20cde" [label="copy{src=/app.go, dest=/go/src/github.com/alexellis/href-counter/}" shape="note"];
  "sha256:4c10c7ee5f9e313fe7280ceb623db85506e3071ccaff55e855af9fa265fdfb55" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app ." shape="box"];
  "sha256:31fa85be3c93b2064ba7bc8a4a7d7b01d1a0cb82a9304bc09da35433e47214b9" [label="copy{src=/go/src/github.com/alexellis/href-counter/app, dest=/root/}" shape="note"];
  "sha256:0c20b4cd2e826411df3f5d6165ec504b9c15e6ec39df489daf8913c35830c6dc" [label="sha256:0c20b4cd2e826411df3f5d6165ec504b9c15e6ec39df489daf8913c35830c6dc" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:033f781922836764ecff7f96b7119a22a43735e9ab5845349f96ee07bb681f83" [label=""];
  "sha256:033f781922836764ecff7f96b7119a22a43735e9ab5845349f96ee07bb681f83" -> "sha256:1d3d49b1b685d4d5a53e98c29fe19909017449a5c0f8fb2ce37992ba02ccb0f8" [label=""];
  "sha256:ad0ef5a06e423d39ff0e3108d98212ce0ff629e0c76304d1baa14891c6bf3a44" -> "sha256:e3e750e09344fdc029cf49106e1fb1d14a1bbb84b89857f034af071feab77492" [label=""];
  "sha256:e3e750e09344fdc029cf49106e1fb1d14a1bbb84b89857f034af071feab77492" -> "sha256:16450c2ed3f20b0ff8ed1df1b6b24f6afdfc6eeab0aaa888cf1282b0a74efc05" [label=""];
  "sha256:16450c2ed3f20b0ff8ed1df1b6b24f6afdfc6eeab0aaa888cf1282b0a74efc05" -> "sha256:54de375063950de541ddf445a9b41d238e83e12032ff150bb484de863fa20cde" [label=""];
  "sha256:833a98fa3d79fd4d2e0dc76e428f28de57883cb41c71d550824114d8b6e93cb9" -> "sha256:54de375063950de541ddf445a9b41d238e83e12032ff150bb484de863fa20cde" [label=""];
  "sha256:54de375063950de541ddf445a9b41d238e83e12032ff150bb484de863fa20cde" -> "sha256:4c10c7ee5f9e313fe7280ceb623db85506e3071ccaff55e855af9fa265fdfb55" [label=""];
  "sha256:1d3d49b1b685d4d5a53e98c29fe19909017449a5c0f8fb2ce37992ba02ccb0f8" -> "sha256:31fa85be3c93b2064ba7bc8a4a7d7b01d1a0cb82a9304bc09da35433e47214b9" [label=""];
  "sha256:4c10c7ee5f9e313fe7280ceb623db85506e3071ccaff55e855af9fa265fdfb55" -> "sha256:31fa85be3c93b2064ba7bc8a4a7d7b01d1a0cb82a9304bc09da35433e47214b9" [label=""];
  "sha256:31fa85be3c93b2064ba7bc8a4a7d7b01d1a0cb82a9304bc09da35433e47214b9" -> "sha256:0c20b4cd2e826411df3f5d6165ec504b9c15e6ec39df489daf8913c35830c6dc" [label=""];
}

