[app/sources/137842604.Dockerfile]
digraph {
  "sha256:ad0ef5a06e423d39ff0e3108d98212ce0ff629e0c76304d1baa14891c6bf3a44" [label="docker-image://docker.io/library/golang:1.7.3" shape="ellipse"];
  "sha256:e3e750e09344fdc029cf49106e1fb1d14a1bbb84b89857f034af071feab77492" [label="mkdir{path=/go/src/github.com/alexellis/href-counter}" shape="note"];
  "sha256:16450c2ed3f20b0ff8ed1df1b6b24f6afdfc6eeab0aaa888cf1282b0a74efc05" [label="/bin/sh -c go get -d -v golang.org/x/net/html" shape="box"];
  "sha256:084779a54a7b35f26dcbb74822de73298c569318cb8e64af94396322297f5173" [label="local://context" shape="ellipse"];
  "sha256:bd6c247ea591db0d40f35082b369f7e5177c7199e46330d876f116405db03bf1" [label="copy{src=/app.go, dest=/go/src/github.com/alexellis/href-counter/}" shape="note"];
  "sha256:30340fa0752392234af493c56754421d9b55bfd3ff145ee5f377cbf98ee8bc48" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app ." shape="box"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:bfbb035813e9e161add4e401fb8ab58241ef3446bed44f6941bdb255bbe8c3fb" [label="mkdir{path=/root}" shape="note"];
  "sha256:cfbb40e11e25e0a8e8b525d20100bbf82a4a67f68faa460278bcf29397e74158" [label="copy{src=/go/src/github.com/alexellis/href-counter/app, dest=/root/}" shape="note"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:9236b99ae3eb634240f7b1a893bc4db2553517e3dc6129eae91275d021553d59" [label="copy{src=/etc/nginx/nginx.conf, dest=/nginx.conf}" shape="note"];
  "sha256:ad3b193962c48f3d5d24e4f77cbd4dafecc710517425bb12b481f1f6328a35ad" [label="sha256:ad3b193962c48f3d5d24e4f77cbd4dafecc710517425bb12b481f1f6328a35ad" shape="plaintext"];
  "sha256:ad0ef5a06e423d39ff0e3108d98212ce0ff629e0c76304d1baa14891c6bf3a44" -> "sha256:e3e750e09344fdc029cf49106e1fb1d14a1bbb84b89857f034af071feab77492" [label=""];
  "sha256:e3e750e09344fdc029cf49106e1fb1d14a1bbb84b89857f034af071feab77492" -> "sha256:16450c2ed3f20b0ff8ed1df1b6b24f6afdfc6eeab0aaa888cf1282b0a74efc05" [label=""];
  "sha256:16450c2ed3f20b0ff8ed1df1b6b24f6afdfc6eeab0aaa888cf1282b0a74efc05" -> "sha256:bd6c247ea591db0d40f35082b369f7e5177c7199e46330d876f116405db03bf1" [label=""];
  "sha256:084779a54a7b35f26dcbb74822de73298c569318cb8e64af94396322297f5173" -> "sha256:bd6c247ea591db0d40f35082b369f7e5177c7199e46330d876f116405db03bf1" [label=""];
  "sha256:bd6c247ea591db0d40f35082b369f7e5177c7199e46330d876f116405db03bf1" -> "sha256:30340fa0752392234af493c56754421d9b55bfd3ff145ee5f377cbf98ee8bc48" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label=""];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" -> "sha256:bfbb035813e9e161add4e401fb8ab58241ef3446bed44f6941bdb255bbe8c3fb" [label=""];
  "sha256:bfbb035813e9e161add4e401fb8ab58241ef3446bed44f6941bdb255bbe8c3fb" -> "sha256:cfbb40e11e25e0a8e8b525d20100bbf82a4a67f68faa460278bcf29397e74158" [label=""];
  "sha256:30340fa0752392234af493c56754421d9b55bfd3ff145ee5f377cbf98ee8bc48" -> "sha256:cfbb40e11e25e0a8e8b525d20100bbf82a4a67f68faa460278bcf29397e74158" [label=""];
  "sha256:cfbb40e11e25e0a8e8b525d20100bbf82a4a67f68faa460278bcf29397e74158" -> "sha256:9236b99ae3eb634240f7b1a893bc4db2553517e3dc6129eae91275d021553d59" [label=""];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:9236b99ae3eb634240f7b1a893bc4db2553517e3dc6129eae91275d021553d59" [label=""];
  "sha256:9236b99ae3eb634240f7b1a893bc4db2553517e3dc6129eae91275d021553d59" -> "sha256:ad3b193962c48f3d5d24e4f77cbd4dafecc710517425bb12b481f1f6328a35ad" [label=""];
}

