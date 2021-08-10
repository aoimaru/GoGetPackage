[app/sources/293008482.Dockerfile]
digraph {
  "sha256:4a46789e0169512f0b6c600c50ac58b00c58474b539667b967a8f67d2ade62c6" [label="docker-image://docker.io/library/golang:1.7.5-alpine" shape="ellipse"];
  "sha256:44f139a8d3cbee7818368eba0690499a2e3e1b9f4a5e76a7644960385b534350" [label="/bin/sh -c apk add -U git bash curl gcc musl-dev make" shape="box"];
  "sha256:2a1de65c15d5cf7fad14b4470e0695dfd37a5c637edf58cb7fcdbd39209c9650" [label="/bin/sh -c mkdir -p /go/src /go/bin /go/pkg" shape="box"];
  "sha256:aa2112a8a74f4235ec0e547f0eeed4de2438943a5485e3cebbaf6532fbb7690a" [label="/bin/sh -c export GLIDE=v0.11.1;         export TARGET=/go/src/github.com/Masterminds;         mkdir -p ${TARGET} &&         git clone https://github.com/Masterminds/glide.git ${TARGET}/glide &&         cd ${TARGET}/glide &&         git checkout $GLIDE &&         make build &&         cp ./glide /usr/bin/glide &&         cd / && rm -rf /go/src/* /go/bin/* /go/pkg/*" shape="box"];
  "sha256:2861732a9518214418c74be52bee8515049b343d6544b7127f20f7615eed77d6" [label="local://context" shape="ellipse"];
  "sha256:2b7eaf81882b75df5960a2a941d20cd912caad957ae6f5fd06f432ad896af375" [label="copy{src=/glide.yaml, dest=/manvendor/}" shape="note"];
  "sha256:97d41c25069d4b0657c9b56a6115bbb1b7e1532844ded6e198853af87df0c371" [label="copy{src=/glide.lock, dest=/manvendor/}" shape="note"];
  "sha256:bcc67096b3eedcdfe0baa43ada28df74e8e8d7e3a49453a35b7e9113ebe78dcf" [label="mkdir{path=/manvendor}" shape="note"];
  "sha256:6df9772f3e338ca72d6769f77e91c92807d6ad8c124be6284236b1901e48a121" [label="/bin/sh -c glide install && mv vendor src" shape="box"];
  "sha256:1e7043028222d91a543f419ffeb9a6dd2826600dcace8d6890b692a4c4ee386b" [label="/bin/sh -c go build -o /usr/bin/go-md2man github.com/cpuguy83/go-md2man" shape="box"];
  "sha256:966978209b3987cbcae93e88ed2cf9295143753e45b2974cb1d1a82ed4ff9b4a" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:016a652a9e32beacae2bde95dba90170ec4b50af90c9433c3b85b8ec735457c8" [label="sha256:016a652a9e32beacae2bde95dba90170ec4b50af90c9433c3b85b8ec735457c8" shape="plaintext"];
  "sha256:4a46789e0169512f0b6c600c50ac58b00c58474b539667b967a8f67d2ade62c6" -> "sha256:44f139a8d3cbee7818368eba0690499a2e3e1b9f4a5e76a7644960385b534350" [label=""];
  "sha256:44f139a8d3cbee7818368eba0690499a2e3e1b9f4a5e76a7644960385b534350" -> "sha256:2a1de65c15d5cf7fad14b4470e0695dfd37a5c637edf58cb7fcdbd39209c9650" [label=""];
  "sha256:2a1de65c15d5cf7fad14b4470e0695dfd37a5c637edf58cb7fcdbd39209c9650" -> "sha256:aa2112a8a74f4235ec0e547f0eeed4de2438943a5485e3cebbaf6532fbb7690a" [label=""];
  "sha256:aa2112a8a74f4235ec0e547f0eeed4de2438943a5485e3cebbaf6532fbb7690a" -> "sha256:2b7eaf81882b75df5960a2a941d20cd912caad957ae6f5fd06f432ad896af375" [label=""];
  "sha256:2861732a9518214418c74be52bee8515049b343d6544b7127f20f7615eed77d6" -> "sha256:2b7eaf81882b75df5960a2a941d20cd912caad957ae6f5fd06f432ad896af375" [label=""];
  "sha256:2b7eaf81882b75df5960a2a941d20cd912caad957ae6f5fd06f432ad896af375" -> "sha256:97d41c25069d4b0657c9b56a6115bbb1b7e1532844ded6e198853af87df0c371" [label=""];
  "sha256:2861732a9518214418c74be52bee8515049b343d6544b7127f20f7615eed77d6" -> "sha256:97d41c25069d4b0657c9b56a6115bbb1b7e1532844ded6e198853af87df0c371" [label=""];
  "sha256:97d41c25069d4b0657c9b56a6115bbb1b7e1532844ded6e198853af87df0c371" -> "sha256:bcc67096b3eedcdfe0baa43ada28df74e8e8d7e3a49453a35b7e9113ebe78dcf" [label=""];
  "sha256:bcc67096b3eedcdfe0baa43ada28df74e8e8d7e3a49453a35b7e9113ebe78dcf" -> "sha256:6df9772f3e338ca72d6769f77e91c92807d6ad8c124be6284236b1901e48a121" [label=""];
  "sha256:6df9772f3e338ca72d6769f77e91c92807d6ad8c124be6284236b1901e48a121" -> "sha256:1e7043028222d91a543f419ffeb9a6dd2826600dcace8d6890b692a4c4ee386b" [label=""];
  "sha256:1e7043028222d91a543f419ffeb9a6dd2826600dcace8d6890b692a4c4ee386b" -> "sha256:966978209b3987cbcae93e88ed2cf9295143753e45b2974cb1d1a82ed4ff9b4a" [label=""];
  "sha256:966978209b3987cbcae93e88ed2cf9295143753e45b2974cb1d1a82ed4ff9b4a" -> "sha256:016a652a9e32beacae2bde95dba90170ec4b50af90c9433c3b85b8ec735457c8" [label=""];
}

