[app/sources/461803106.Dockerfile]
digraph {
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" [label="docker-image://docker.io/s390x/ubuntu:xenial" shape="ellipse"];
  "sha256:12a46d9e476f8542fd04be05c8d64eb70c642454ba1e521445822fcbe6b84324" [label="/bin/sh -c apt-get update && apt-get install -y git golang-go" shape="box"];
  "sha256:22f95638cf4dc215328eda42b277721166af5898c06b60d7b0fe653fc331f01c" [label="/bin/sh -c mkdir -p /go/src /go/bin /go/pkg" shape="box"];
  "sha256:edde2035871097ee472aff68d06284125c152efebcd0b2cd429eb11332fc247c" [label="/bin/sh -c export GLIDE=v0.11.1;         export TARGET=/go/src/github.com/Masterminds;         mkdir -p ${TARGET} &&         git clone https://github.com/Masterminds/glide.git ${TARGET}/glide &&         cd ${TARGET}/glide &&         git checkout $GLIDE &&         make build &&         cp ./glide /usr/bin/glide &&         cd / && rm -rf /go/src/* /go/bin/* /go/pkg/*" shape="box"];
  "sha256:da0aa2addaaf343c125aa0cdbd4d86120218210f6aaee8973770f26f9203f645" [label="local://context" shape="ellipse"];
  "sha256:b4838495899f69a48f0fd59ca4ed66514f20e2b9899892ad0bb87300058a7ba1" [label="copy{src=/glide.yaml, dest=/manvendor/}" shape="note"];
  "sha256:b6d0dab73fdea407e143bf474dab8fb2d04fa52161c474ea04c00121477f99d7" [label="copy{src=/glide.lock, dest=/manvendor/}" shape="note"];
  "sha256:b379c72b00f23c53795e72db66dd7241332480c8ddb9ec5c326b01cd87726942" [label="mkdir{path=/manvendor}" shape="note"];
  "sha256:edce793fd5ab506a118e4c244704df7961f8e4fcdf671c42fae1c782ba9ab6f1" [label="/bin/sh -c glide install && mv vendor src" shape="box"];
  "sha256:cb8faa6bf4a5f5a3d85c8cc03b0f127cec60c201dd128ae20dabce0b495fa91e" [label="/bin/sh -c go build -o /usr/bin/go-md2man github.com/cpuguy83/go-md2man" shape="box"];
  "sha256:ac0976e60e58fb1123a6037317a394d7250a75958ee1d95a38561e89dc4f121b" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:f546bb52ca7b2f9f718392d9b54fe4d2dc902b8de0e36fb6561238e5223408b5" [label="sha256:f546bb52ca7b2f9f718392d9b54fe4d2dc902b8de0e36fb6561238e5223408b5" shape="plaintext"];
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" -> "sha256:12a46d9e476f8542fd04be05c8d64eb70c642454ba1e521445822fcbe6b84324" [label=""];
  "sha256:12a46d9e476f8542fd04be05c8d64eb70c642454ba1e521445822fcbe6b84324" -> "sha256:22f95638cf4dc215328eda42b277721166af5898c06b60d7b0fe653fc331f01c" [label=""];
  "sha256:22f95638cf4dc215328eda42b277721166af5898c06b60d7b0fe653fc331f01c" -> "sha256:edde2035871097ee472aff68d06284125c152efebcd0b2cd429eb11332fc247c" [label=""];
  "sha256:edde2035871097ee472aff68d06284125c152efebcd0b2cd429eb11332fc247c" -> "sha256:b4838495899f69a48f0fd59ca4ed66514f20e2b9899892ad0bb87300058a7ba1" [label=""];
  "sha256:da0aa2addaaf343c125aa0cdbd4d86120218210f6aaee8973770f26f9203f645" -> "sha256:b4838495899f69a48f0fd59ca4ed66514f20e2b9899892ad0bb87300058a7ba1" [label=""];
  "sha256:b4838495899f69a48f0fd59ca4ed66514f20e2b9899892ad0bb87300058a7ba1" -> "sha256:b6d0dab73fdea407e143bf474dab8fb2d04fa52161c474ea04c00121477f99d7" [label=""];
  "sha256:da0aa2addaaf343c125aa0cdbd4d86120218210f6aaee8973770f26f9203f645" -> "sha256:b6d0dab73fdea407e143bf474dab8fb2d04fa52161c474ea04c00121477f99d7" [label=""];
  "sha256:b6d0dab73fdea407e143bf474dab8fb2d04fa52161c474ea04c00121477f99d7" -> "sha256:b379c72b00f23c53795e72db66dd7241332480c8ddb9ec5c326b01cd87726942" [label=""];
  "sha256:b379c72b00f23c53795e72db66dd7241332480c8ddb9ec5c326b01cd87726942" -> "sha256:edce793fd5ab506a118e4c244704df7961f8e4fcdf671c42fae1c782ba9ab6f1" [label=""];
  "sha256:edce793fd5ab506a118e4c244704df7961f8e4fcdf671c42fae1c782ba9ab6f1" -> "sha256:cb8faa6bf4a5f5a3d85c8cc03b0f127cec60c201dd128ae20dabce0b495fa91e" [label=""];
  "sha256:cb8faa6bf4a5f5a3d85c8cc03b0f127cec60c201dd128ae20dabce0b495fa91e" -> "sha256:ac0976e60e58fb1123a6037317a394d7250a75958ee1d95a38561e89dc4f121b" [label=""];
  "sha256:ac0976e60e58fb1123a6037317a394d7250a75958ee1d95a38561e89dc4f121b" -> "sha256:f546bb52ca7b2f9f718392d9b54fe4d2dc902b8de0e36fb6561238e5223408b5" [label=""];
}

