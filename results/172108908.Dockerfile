[app/sources/172108908.Dockerfile]
digraph {
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" [label="docker-image://docker.io/library/golang:1.7" shape="ellipse"];
  "sha256:be034597fb91e3a3959bf6a349934ca1f019af8a10e77a8db08748c483cd2bbf" [label="/bin/sh -c set -ex  && go version  && apt-get update  && apt-get install -y openssh-client rsync zip wget gnupg  && mkdir -p /go/src/github.com/Luzifer  && git clone https://github.com/Luzifer/gobuilder.git /go/src/github.com/Luzifer/gobuilder  && go install github.com/Luzifer/gobuilder/cmd/configreader  && go install github.com/Luzifer/gobuilder/cmd/asset-sync  && rm -rf /go/src/*" shape="box"];
  "sha256:2f0e12d8ebd28594725743b3b99e0cca213aa89e9af255f28d34e5ffabcd97ec" [label="local://context" shape="ellipse"];
  "sha256:bb3bd5565cbfca04c7e87bc95a7a280d6955fbadee886a754816064544475f15" [label="copy{src=/builder.sh, dest=/usr/bin/builder.sh}" shape="note"];
  "sha256:fb8fdf174c7d69ec0ad90de6f7eac3fd749b07c75e5f04951fae2ac1a03b2e66" [label="copy{src=/gpgkey.asc.enc, dest=/root/gpgkey.asc.enc}" shape="note"];
  "sha256:662db88b7c2911ad07cf54a5e7693bff03f40a0b7e4ba238693b0f7c01c5cfb6" [label="/bin/sh -c mkdir /root/.ssh  && echo \"Host *\\n\\tStrictHostKeyChecking no\\n\" >> ~/.ssh/config  && chmod 700 /root/.ssh  && gpg --list-keys 2>&1 1>/dev/null  && echo \"keyserver-options auto-key-retrieve\" >> ~/.gnupg/gpg.conf  && sed -i \"s/^keyserver .*$/keyserver hkp:\\/\\/keyserver.ubuntu.com/\" ~/.gnupg/gpg.conf" shape="box"];
  "sha256:ba988215f56c309676e11f80f6ca2d8207b2bc409459571b8e3ae093eaad0f53" [label="sha256:ba988215f56c309676e11f80f6ca2d8207b2bc409459571b8e3ae093eaad0f53" shape="plaintext"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" -> "sha256:be034597fb91e3a3959bf6a349934ca1f019af8a10e77a8db08748c483cd2bbf" [label=""];
  "sha256:be034597fb91e3a3959bf6a349934ca1f019af8a10e77a8db08748c483cd2bbf" -> "sha256:bb3bd5565cbfca04c7e87bc95a7a280d6955fbadee886a754816064544475f15" [label=""];
  "sha256:2f0e12d8ebd28594725743b3b99e0cca213aa89e9af255f28d34e5ffabcd97ec" -> "sha256:bb3bd5565cbfca04c7e87bc95a7a280d6955fbadee886a754816064544475f15" [label=""];
  "sha256:bb3bd5565cbfca04c7e87bc95a7a280d6955fbadee886a754816064544475f15" -> "sha256:fb8fdf174c7d69ec0ad90de6f7eac3fd749b07c75e5f04951fae2ac1a03b2e66" [label=""];
  "sha256:2f0e12d8ebd28594725743b3b99e0cca213aa89e9af255f28d34e5ffabcd97ec" -> "sha256:fb8fdf174c7d69ec0ad90de6f7eac3fd749b07c75e5f04951fae2ac1a03b2e66" [label=""];
  "sha256:fb8fdf174c7d69ec0ad90de6f7eac3fd749b07c75e5f04951fae2ac1a03b2e66" -> "sha256:662db88b7c2911ad07cf54a5e7693bff03f40a0b7e4ba238693b0f7c01c5cfb6" [label=""];
  "sha256:662db88b7c2911ad07cf54a5e7693bff03f40a0b7e4ba238693b0f7c01c5cfb6" -> "sha256:ba988215f56c309676e11f80f6ca2d8207b2bc409459571b8e3ae093eaad0f53" [label=""];
}

