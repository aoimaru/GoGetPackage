[app/sources/252788238.Dockerfile]
digraph {
  "sha256:946935cddf9259dd58e4d7a3c76840014d23b1a9a0ecdadee89ea14805ec4b35" [label="docker-image://docker.io/library/python:2.7-onbuild" shape="ellipse"];
  "sha256:597db65688c3b28ee9afe6ea5cfdb773a293781186f15a05ec8dfe328e9152ec" [label="/bin/sh -c echo $timezone > /etc/timezone && ln -sfn /usr/share/zoneinfo/$timezone /etc/localtime && dpkg-reconfigure -f noninteractive tzdata" shape="box"];
  "sha256:c5c597ed540313f3929ea07041c2ab2804b07447c34374b90906837e236dcd1c" [label="/bin/sh -c apt-get update && apt-get install -y python-protobuf" shape="box"];
  "sha256:e7a5ee19f04b088dd019e8c36f88d79aee4fbde4008a2f5359aa478346f44376" [label="sha256:e7a5ee19f04b088dd019e8c36f88d79aee4fbde4008a2f5359aa478346f44376" shape="plaintext"];
  "sha256:946935cddf9259dd58e4d7a3c76840014d23b1a9a0ecdadee89ea14805ec4b35" -> "sha256:597db65688c3b28ee9afe6ea5cfdb773a293781186f15a05ec8dfe328e9152ec" [label=""];
  "sha256:597db65688c3b28ee9afe6ea5cfdb773a293781186f15a05ec8dfe328e9152ec" -> "sha256:c5c597ed540313f3929ea07041c2ab2804b07447c34374b90906837e236dcd1c" [label=""];
  "sha256:c5c597ed540313f3929ea07041c2ab2804b07447c34374b90906837e236dcd1c" -> "sha256:e7a5ee19f04b088dd019e8c36f88d79aee4fbde4008a2f5359aa478346f44376" [label=""];
}

