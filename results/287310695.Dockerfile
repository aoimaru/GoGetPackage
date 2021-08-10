[app/sources/287310695.Dockerfile]
digraph {
  "sha256:9b248f3c56b95c07a51a2be4f1ee0fd06077c3119f456e6ae73e4db750bf741b" [label="local://context" shape="ellipse"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:928021a8c8faf5bf9c311b05bb66d8a28c73cec832bf12aa944fd28b75f26d55" [label="/bin/sh -c go get -u github.com/golang/dep/cmd/dep" shape="box"];
  "sha256:102d148b1e8c410973c2ab940b07d2e8e25ddccd396b0a07254ec4a884275a5c" [label="copy{src=/, dest=/go/src/{{.ProjectPath}}}" shape="note"];
  "sha256:04469a06e3ac693bc37c201bdf4c1a84bc85359e6f63f64f655d292aa375d228" [label="mkdir{path=/go/src/{{.ProjectPath}}}" shape="note"];
  "sha256:ac3d18a09410c32966e1f0a42931923eed1ef34e0398e29741da22b7318a5f43" [label="/bin/sh -c make clean" shape="box"];
  "sha256:4e10d54f8a259a84b4f5b694f49fffa094ec16398ff8f89f4576a5193b2c7b7f" [label="/bin/sh -c make all" shape="box"];
  "sha256:f4aad4b1f0969730fc13fb99ff11425bc51f6303784599db999413a2d1b85a0f" [label="sha256:f4aad4b1f0969730fc13fb99ff11425bc51f6303784599db999413a2d1b85a0f" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:928021a8c8faf5bf9c311b05bb66d8a28c73cec832bf12aa944fd28b75f26d55" [label=""];
  "sha256:928021a8c8faf5bf9c311b05bb66d8a28c73cec832bf12aa944fd28b75f26d55" -> "sha256:102d148b1e8c410973c2ab940b07d2e8e25ddccd396b0a07254ec4a884275a5c" [label=""];
  "sha256:9b248f3c56b95c07a51a2be4f1ee0fd06077c3119f456e6ae73e4db750bf741b" -> "sha256:102d148b1e8c410973c2ab940b07d2e8e25ddccd396b0a07254ec4a884275a5c" [label=""];
  "sha256:102d148b1e8c410973c2ab940b07d2e8e25ddccd396b0a07254ec4a884275a5c" -> "sha256:04469a06e3ac693bc37c201bdf4c1a84bc85359e6f63f64f655d292aa375d228" [label=""];
  "sha256:04469a06e3ac693bc37c201bdf4c1a84bc85359e6f63f64f655d292aa375d228" -> "sha256:ac3d18a09410c32966e1f0a42931923eed1ef34e0398e29741da22b7318a5f43" [label=""];
  "sha256:ac3d18a09410c32966e1f0a42931923eed1ef34e0398e29741da22b7318a5f43" -> "sha256:4e10d54f8a259a84b4f5b694f49fffa094ec16398ff8f89f4576a5193b2c7b7f" [label=""];
  "sha256:4e10d54f8a259a84b4f5b694f49fffa094ec16398ff8f89f4576a5193b2c7b7f" -> "sha256:f4aad4b1f0969730fc13fb99ff11425bc51f6303784599db999413a2d1b85a0f" [label=""];
}

