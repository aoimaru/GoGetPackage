[app/sources/246055618.Dockerfile]
digraph {
  "sha256:2defa40816baaed889cb2f2885e51fe818055f74006ff55c1ab39561bc60360a" [label="docker-image://docker.io/library/swift:5.0.1@sha256:2f6451d66ffd2bedd71575a8b5e2e15d2a2491537aa53eddb2e602e029dc249f" shape="ellipse"];
  "sha256:568f1ff9e8c62de3249b991c278b7a885af6c0f4a4807a47f9e5e822f7bdfe56" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:f3443311f50526812f66c766df4508f8ef0bc7aa38b6db6b6b88c82826c2307f" [label="/bin/sh -c apt-get -qy install openssl libssl-dev uuid-dev" shape="box"];
  "sha256:e724515cc2c63641937a327ffa5f0dff9ff19720c16079d227c13d58d4239d16" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:6ea0f85759f0ad5ecaddc581241f432a0faba7db74430c7668787fea2fc88835" [label="local://context" shape="ellipse"];
  "sha256:be4874b83f1e017b24bf42441b111dbe10c876aaa5563cac1c7bcabf01809a5c" [label="copy{src=/Package.swift, dest=/usr/src/app/},copy{src=/main.swift, dest=/usr/src/app/}" shape="note"];
  "sha256:1f43307905703ac1f4030c23edfb980081a81a75d2144c0b105dbdf54abf594b" [label="/bin/sh -c swift build -c release" shape="box"];
  "sha256:0b59fa89d5bb91f1c292c03a4f5821d6e799bc9519d6daa6c2dd159ff314c190" [label="sha256:0b59fa89d5bb91f1c292c03a4f5821d6e799bc9519d6daa6c2dd159ff314c190" shape="plaintext"];
  "sha256:2defa40816baaed889cb2f2885e51fe818055f74006ff55c1ab39561bc60360a" -> "sha256:568f1ff9e8c62de3249b991c278b7a885af6c0f4a4807a47f9e5e822f7bdfe56" [label=""];
  "sha256:568f1ff9e8c62de3249b991c278b7a885af6c0f4a4807a47f9e5e822f7bdfe56" -> "sha256:f3443311f50526812f66c766df4508f8ef0bc7aa38b6db6b6b88c82826c2307f" [label=""];
  "sha256:f3443311f50526812f66c766df4508f8ef0bc7aa38b6db6b6b88c82826c2307f" -> "sha256:e724515cc2c63641937a327ffa5f0dff9ff19720c16079d227c13d58d4239d16" [label=""];
  "sha256:e724515cc2c63641937a327ffa5f0dff9ff19720c16079d227c13d58d4239d16" -> "sha256:be4874b83f1e017b24bf42441b111dbe10c876aaa5563cac1c7bcabf01809a5c" [label=""];
  "sha256:6ea0f85759f0ad5ecaddc581241f432a0faba7db74430c7668787fea2fc88835" -> "sha256:be4874b83f1e017b24bf42441b111dbe10c876aaa5563cac1c7bcabf01809a5c" [label=""];
  "sha256:be4874b83f1e017b24bf42441b111dbe10c876aaa5563cac1c7bcabf01809a5c" -> "sha256:1f43307905703ac1f4030c23edfb980081a81a75d2144c0b105dbdf54abf594b" [label=""];
  "sha256:1f43307905703ac1f4030c23edfb980081a81a75d2144c0b105dbdf54abf594b" -> "sha256:0b59fa89d5bb91f1c292c03a4f5821d6e799bc9519d6daa6c2dd159ff314c190" [label=""];
}

