[app/sources/338239303.Dockerfile]
digraph {
  "sha256:5aa21f0a3f6a61c09228d749bfe20fa09b9255840b840809d5267662b6d4a636" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:0452d65e2a3ed6c568a040c0394060bb8adc58ee9aeeefa162fdbaf3c0f7ed59" [label="/bin/sh -c apk add --update musl-dev go git fuse" shape="box"];
  "sha256:85d297572c479f92417a6a46461649b5f67e78483385f8c0d7027e3521e37f7a" [label="/bin/sh -c mkdir /go" shape="box"];
  "sha256:79dd43ee66445fa633948d0f65cba0f4a1cd2c1b6fe5612e103a0efe13cefbcc" [label="/bin/sh -c GOPATH=/go go get -u github.com/googlecloudplatform/gcsfuse" shape="box"];
  "sha256:450262f4ec60d1f4c3ac5040e8066cd35bbf96fbfe85f394453a648879221275" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:2ec19d7f28f90f7c774f0a5d5584cb693549cca441efec11f6002d82b6d206c5" [label="sha256:2ec19d7f28f90f7c774f0a5d5584cb693549cca441efec11f6002d82b6d206c5" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:0452d65e2a3ed6c568a040c0394060bb8adc58ee9aeeefa162fdbaf3c0f7ed59" [label=""];
  "sha256:0452d65e2a3ed6c568a040c0394060bb8adc58ee9aeeefa162fdbaf3c0f7ed59" -> "sha256:85d297572c479f92417a6a46461649b5f67e78483385f8c0d7027e3521e37f7a" [label=""];
  "sha256:85d297572c479f92417a6a46461649b5f67e78483385f8c0d7027e3521e37f7a" -> "sha256:79dd43ee66445fa633948d0f65cba0f4a1cd2c1b6fe5612e103a0efe13cefbcc" [label=""];
  "sha256:79dd43ee66445fa633948d0f65cba0f4a1cd2c1b6fe5612e103a0efe13cefbcc" -> "sha256:450262f4ec60d1f4c3ac5040e8066cd35bbf96fbfe85f394453a648879221275" [label=""];
  "sha256:5aa21f0a3f6a61c09228d749bfe20fa09b9255840b840809d5267662b6d4a636" -> "sha256:450262f4ec60d1f4c3ac5040e8066cd35bbf96fbfe85f394453a648879221275" [label=""];
  "sha256:450262f4ec60d1f4c3ac5040e8066cd35bbf96fbfe85f394453a648879221275" -> "sha256:2ec19d7f28f90f7c774f0a5d5584cb693549cca441efec11f6002d82b6d206c5" [label=""];
}

