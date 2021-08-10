[app/sources/274227729.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/hpcloud/tail/" shape="box"];
  "sha256:67939225b9bcb9558d6d035d90ad2ea855d065a173ed7f9db461241e859c1d09" [label="local://context" shape="ellipse"];
  "sha256:09878b9453603e9b7c0a9c4c14284e01c5de96fd8796d950712f9c22741f6b60" [label="copy{src=/, dest=/src/github.com/hpcloud/tail/}" shape="note"];
  "sha256:ced4ed0a59e0069684a751fc4f66bb57cbc8ff702de84e302b6c6895fc9f5758" [label="/bin/sh -c go get -v github.com/hpcloud/tail" shape="box"];
  "sha256:f67b22be61749270a2d6ef5058dd6c4873dca89f58b4fccc5053f03134c702f1" [label="/bin/sh -c go test -v github.com/hpcloud/tail" shape="box"];
  "sha256:9e070f81590bc16728c2f00fb56cf1212732b79a70712efc8e247f90a8b5381e" [label="/bin/sh -c go install -v github.com/hpcloud/tail" shape="box"];
  "sha256:08851a0bd4437bbe2cefc300f2c4e05c42185f52f10f250d4345541fd5b7c7de" [label="/bin/sh -c go install -v github.com/hpcloud/tail/cmd/gotail" shape="box"];
  "sha256:de44b33025505ba1896f34ce017741ed8eee708696ecfaf0bb91907f3a02b06c" [label="/bin/sh -c $GOPATH/bin/gotail -h || true" shape="box"];
  "sha256:7d4e8d5bf1c3ce8e6005d40063d1387d77051cf5aaae7385f687975a38721548" [label="sha256:7d4e8d5bf1c3ce8e6005d40063d1387d77051cf5aaae7385f687975a38721548" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label=""];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" -> "sha256:09878b9453603e9b7c0a9c4c14284e01c5de96fd8796d950712f9c22741f6b60" [label=""];
  "sha256:67939225b9bcb9558d6d035d90ad2ea855d065a173ed7f9db461241e859c1d09" -> "sha256:09878b9453603e9b7c0a9c4c14284e01c5de96fd8796d950712f9c22741f6b60" [label=""];
  "sha256:09878b9453603e9b7c0a9c4c14284e01c5de96fd8796d950712f9c22741f6b60" -> "sha256:ced4ed0a59e0069684a751fc4f66bb57cbc8ff702de84e302b6c6895fc9f5758" [label=""];
  "sha256:ced4ed0a59e0069684a751fc4f66bb57cbc8ff702de84e302b6c6895fc9f5758" -> "sha256:f67b22be61749270a2d6ef5058dd6c4873dca89f58b4fccc5053f03134c702f1" [label=""];
  "sha256:f67b22be61749270a2d6ef5058dd6c4873dca89f58b4fccc5053f03134c702f1" -> "sha256:9e070f81590bc16728c2f00fb56cf1212732b79a70712efc8e247f90a8b5381e" [label=""];
  "sha256:9e070f81590bc16728c2f00fb56cf1212732b79a70712efc8e247f90a8b5381e" -> "sha256:08851a0bd4437bbe2cefc300f2c4e05c42185f52f10f250d4345541fd5b7c7de" [label=""];
  "sha256:08851a0bd4437bbe2cefc300f2c4e05c42185f52f10f250d4345541fd5b7c7de" -> "sha256:de44b33025505ba1896f34ce017741ed8eee708696ecfaf0bb91907f3a02b06c" [label=""];
  "sha256:de44b33025505ba1896f34ce017741ed8eee708696ecfaf0bb91907f3a02b06c" -> "sha256:7d4e8d5bf1c3ce8e6005d40063d1387d77051cf5aaae7385f687975a38721548" [label=""];
}

