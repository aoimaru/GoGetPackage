[app/sources/454866137.Dockerfile]
digraph {
  "sha256:fab57a3de19506744a00b2947093dc679ded4c0dfba9847a2338539cc234113a" [label="docker-image://docker.io/docker/whalesay:latest@sha256:178598e51a26abbc958b8a2e48825c90bc22e641de3d31e18aaf55f3258ba93b" shape="ellipse"];
  "sha256:e88c7457be8a4ce5bd4dd6be130064b7b753832e8b39553e2e34e065aeb1c2a5" [label="/bin/sh -c sudo apt-get update" shape="box"];
  "sha256:f40e72797a2889f19ff2ab5d165850e32534c2f640128cc05e8cced79ec2da12" [label="/bin/sh -c apt-get install -y curl" shape="box"];
  "sha256:99a1193c848b73f5cd98fb913d155e0d0501bb3c230106cc8115eb08b6b182b3" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -" shape="box"];
  "sha256:b01ad22b319370c2e50e03e505b0745e51f1f663b0431932106d94802a5a6a40" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:fa301471bd6797ba2c839b1f5d7678295d0acf4073b18e66ed21afc8b7351eed" [label="local://context" shape="ellipse"];
  "sha256:9d8c9e49545a869e6d97f0d0fcb25262d7884aa99f784d2c3ac4ec215f5b1c50" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:055aaf783c21c55ecbbb120577411bd255e0547af41b3b0cef43eff54c53423d" [label="sha256:055aaf783c21c55ecbbb120577411bd255e0547af41b3b0cef43eff54c53423d" shape="plaintext"];
  "sha256:fab57a3de19506744a00b2947093dc679ded4c0dfba9847a2338539cc234113a" -> "sha256:e88c7457be8a4ce5bd4dd6be130064b7b753832e8b39553e2e34e065aeb1c2a5" [label=""];
  "sha256:e88c7457be8a4ce5bd4dd6be130064b7b753832e8b39553e2e34e065aeb1c2a5" -> "sha256:f40e72797a2889f19ff2ab5d165850e32534c2f640128cc05e8cced79ec2da12" [label=""];
  "sha256:f40e72797a2889f19ff2ab5d165850e32534c2f640128cc05e8cced79ec2da12" -> "sha256:99a1193c848b73f5cd98fb913d155e0d0501bb3c230106cc8115eb08b6b182b3" [label=""];
  "sha256:99a1193c848b73f5cd98fb913d155e0d0501bb3c230106cc8115eb08b6b182b3" -> "sha256:b01ad22b319370c2e50e03e505b0745e51f1f663b0431932106d94802a5a6a40" [label=""];
  "sha256:b01ad22b319370c2e50e03e505b0745e51f1f663b0431932106d94802a5a6a40" -> "sha256:9d8c9e49545a869e6d97f0d0fcb25262d7884aa99f784d2c3ac4ec215f5b1c50" [label=""];
  "sha256:fa301471bd6797ba2c839b1f5d7678295d0acf4073b18e66ed21afc8b7351eed" -> "sha256:9d8c9e49545a869e6d97f0d0fcb25262d7884aa99f784d2c3ac4ec215f5b1c50" [label=""];
  "sha256:9d8c9e49545a869e6d97f0d0fcb25262d7884aa99f784d2c3ac4ec215f5b1c50" -> "sha256:055aaf783c21c55ecbbb120577411bd255e0547af41b3b0cef43eff54c53423d" [label=""];
}

