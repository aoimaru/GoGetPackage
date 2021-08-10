[app/sources/356756251.Dockerfile]
digraph {
  "sha256:b904fa1a3f6ae3d8598d3cfc97d9a4b52dab1aa59755a4f1f64378dc6bad4f49" [label="docker-image://docker.io/pypge/base:latest" shape="ellipse"];
  "sha256:23a6f84bc6a4eb449d5e15260cd01a2a663294ff5e58070424e97c4488ddab71" [label="local://context" shape="ellipse"];
  "sha256:9a357d610df1713c65843bcab8370bdcf19d0292938777437996f70f5df8d67f" [label="copy{src=/data, dest=/data}" shape="note"];
  "sha256:8f07978211289f03096cbce6dbe0b4aeb17dd2f5062ea70231e14d183ed45277" [label="sha256:8f07978211289f03096cbce6dbe0b4aeb17dd2f5062ea70231e14d183ed45277" shape="plaintext"];
  "sha256:b904fa1a3f6ae3d8598d3cfc97d9a4b52dab1aa59755a4f1f64378dc6bad4f49" -> "sha256:9a357d610df1713c65843bcab8370bdcf19d0292938777437996f70f5df8d67f" [label=""];
  "sha256:23a6f84bc6a4eb449d5e15260cd01a2a663294ff5e58070424e97c4488ddab71" -> "sha256:9a357d610df1713c65843bcab8370bdcf19d0292938777437996f70f5df8d67f" [label=""];
  "sha256:9a357d610df1713c65843bcab8370bdcf19d0292938777437996f70f5df8d67f" -> "sha256:8f07978211289f03096cbce6dbe0b4aeb17dd2f5062ea70231e14d183ed45277" [label=""];
}

