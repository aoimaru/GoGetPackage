[app/sources/482028757.Dockerfile]
digraph {
  "sha256:8b7bd0029644f1504b4fedcd73db34bc137c6537cecf1b971d7a968a3320317f" [label="local://context" shape="ellipse"];
  "sha256:6e89e37889d8a5067798914cbdaa400597b0ad48fc9fb7cdbb2b01aa006c9f7a" [label="docker-image://docker.io/library/golang:1" shape="ellipse"];
  "sha256:c48c0fc0237871b808596698f606ccdebe0c6721708e9a60017837fecaee2708" [label="mkdir{path=/app}" shape="note"];
  "sha256:cc75469450b6bbe3b255ad44c3e3bd8c8fabf515dd8d3830fa757b9dda7a5c10" [label="copy{src=/go.mod, dest=/app/}" shape="note"];
  "sha256:068fc066584e8597546b2fffdaebfce68b6287ef5fb0201a0c163cd53955594b" [label="/bin/sh -c go mod download" shape="box"];
  "sha256:d901b8091f6e4d8f8cf5c5adba79b0aa1d9950d5d1290620a9bad0e780a816ca" [label="copy{src=/init.go, dest=/app/}" shape="note"];
  "sha256:39aa1552d98fd8774d3ed7e272a3123aebb712c787d2771b4558027bc642e213" [label="/bin/sh -c GOARCH=amd64 GOOS=linux go build init.go" shape="box"];
  "sha256:f034997cbc86225211942da87cda3f83b09dec0d0cf69121872ceb0098b7f793" [label="docker-image://docker.io/lambci/lambda-base:latest" shape="ellipse"];
  "sha256:e690adae1dad1987d27b1f8e90f717ace91194a99376730fcc418796788ac461" [label="copy{src=/app/init, dest=/var/runtime/init}" shape="note"];
  "sha256:58b83bd022a714cdc63df28081696c2e6cffb343a153cbb8aec93fe8970a6701" [label="sha256:58b83bd022a714cdc63df28081696c2e6cffb343a153cbb8aec93fe8970a6701" shape="plaintext"];
  "sha256:6e89e37889d8a5067798914cbdaa400597b0ad48fc9fb7cdbb2b01aa006c9f7a" -> "sha256:c48c0fc0237871b808596698f606ccdebe0c6721708e9a60017837fecaee2708" [label=""];
  "sha256:c48c0fc0237871b808596698f606ccdebe0c6721708e9a60017837fecaee2708" -> "sha256:cc75469450b6bbe3b255ad44c3e3bd8c8fabf515dd8d3830fa757b9dda7a5c10" [label=""];
  "sha256:8b7bd0029644f1504b4fedcd73db34bc137c6537cecf1b971d7a968a3320317f" -> "sha256:cc75469450b6bbe3b255ad44c3e3bd8c8fabf515dd8d3830fa757b9dda7a5c10" [label=""];
  "sha256:cc75469450b6bbe3b255ad44c3e3bd8c8fabf515dd8d3830fa757b9dda7a5c10" -> "sha256:068fc066584e8597546b2fffdaebfce68b6287ef5fb0201a0c163cd53955594b" [label=""];
  "sha256:068fc066584e8597546b2fffdaebfce68b6287ef5fb0201a0c163cd53955594b" -> "sha256:d901b8091f6e4d8f8cf5c5adba79b0aa1d9950d5d1290620a9bad0e780a816ca" [label=""];
  "sha256:8b7bd0029644f1504b4fedcd73db34bc137c6537cecf1b971d7a968a3320317f" -> "sha256:d901b8091f6e4d8f8cf5c5adba79b0aa1d9950d5d1290620a9bad0e780a816ca" [label=""];
  "sha256:d901b8091f6e4d8f8cf5c5adba79b0aa1d9950d5d1290620a9bad0e780a816ca" -> "sha256:39aa1552d98fd8774d3ed7e272a3123aebb712c787d2771b4558027bc642e213" [label=""];
  "sha256:f034997cbc86225211942da87cda3f83b09dec0d0cf69121872ceb0098b7f793" -> "sha256:e690adae1dad1987d27b1f8e90f717ace91194a99376730fcc418796788ac461" [label=""];
  "sha256:39aa1552d98fd8774d3ed7e272a3123aebb712c787d2771b4558027bc642e213" -> "sha256:e690adae1dad1987d27b1f8e90f717ace91194a99376730fcc418796788ac461" [label=""];
  "sha256:e690adae1dad1987d27b1f8e90f717ace91194a99376730fcc418796788ac461" -> "sha256:58b83bd022a714cdc63df28081696c2e6cffb343a153cbb8aec93fe8970a6701" [label=""];
}

