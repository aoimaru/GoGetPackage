[app/sources/317957099.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:c87790ff88cd6e253fff900bc672306c6e4913412df61bf5c538f988d74b3f00" [label="local://context" shape="ellipse"];
  "sha256:8c71afdae5fbf4abc175ffa28d69e96d36e58e2d36683c701e196526b8da07cc" [label="docker-image://docker.io/library/golang:1.10.1" shape="ellipse"];
  "sha256:341ccd3a75ef52fa37d66a0a7fb9140924eb64d92aeebc08fef8d5c3daa373c9" [label="/bin/sh -c curl https://github.com/golang/dep/releases/download/v0.4.1/dep-linux-amd64 -L -o /usr/bin/dep" shape="box"];
  "sha256:b29ce7eec4f9820dedc44f8f3fdd6c1000f81804cd6863a3f7c74e38544df3a3" [label="/bin/sh -c chmod +x /usr/bin/dep" shape="box"];
  "sha256:f3c988d2d97d5560d652ecfc1e5a21e07c2f371865f73b879e78ac6de86eaac4" [label="mkdir{path=/go/src/github.com/piontec/netperf-operator}" shape="note"];
  "sha256:af7f7d974c07f0fca94ae1ce95a93143d932435534f39a33722aaf439c5d0f84" [label="copy{src=/Gopkg.*, dest=/go/src/github.com/piontec/netperf-operator/}" shape="note"];
  "sha256:514239d4be4b16875befac59be8cbcfca96228e9518ba27c78bea5a8a2830c12" [label="copy{src=/pkg, dest=/go/src/github.com/piontec/netperf-operator/pkg}" shape="note"];
  "sha256:c08b42da24e7be5e355714f8e631c984221e7b4a9fa7587433a071acccaff76b" [label="copy{src=/cmd, dest=/go/src/github.com/piontec/netperf-operator/cmd}" shape="note"];
  "sha256:e2684814d904e44f23db2bce3c6c5db8c2389e01edcd034d452309c81803a60a" [label="/bin/sh -c dep ensure" shape="box"];
  "sha256:77938936a28c3b2d8d8b9cc911990698a0bb71d8c65ec9d91949bf99f09f315c" [label="/bin/sh -c pwd" shape="box"];
  "sha256:939008c24e1d12cfac242f13da8c4ac4afe2c6d455cec0486e1d531d4b287a06" [label="/bin/sh -c ls -la" shape="box"];
  "sha256:e47224b3dc7cff3a5c86b61045a8b0ec763de186267e89d398230f41f63a98b4" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -o netperf-operator cmd/netperf-operator/main.go" shape="box"];
  "sha256:0fbf0cb5b70ea3594fd21c521b1e3b58cd0595879f9b658da4e2f3f05306973e" [label="copy{src=/go/src/github.com/piontec/netperf-operator/netperf-operator, dest=/}" shape="note"];
  "sha256:96d5e123c9a8f129550d1467ce7074eb77cc4acd2a8f6061b916794781a4f901" [label="sha256:96d5e123c9a8f129550d1467ce7074eb77cc4acd2a8f6061b916794781a4f901" shape="plaintext"];
  "sha256:8c71afdae5fbf4abc175ffa28d69e96d36e58e2d36683c701e196526b8da07cc" -> "sha256:341ccd3a75ef52fa37d66a0a7fb9140924eb64d92aeebc08fef8d5c3daa373c9" [label=""];
  "sha256:341ccd3a75ef52fa37d66a0a7fb9140924eb64d92aeebc08fef8d5c3daa373c9" -> "sha256:b29ce7eec4f9820dedc44f8f3fdd6c1000f81804cd6863a3f7c74e38544df3a3" [label=""];
  "sha256:b29ce7eec4f9820dedc44f8f3fdd6c1000f81804cd6863a3f7c74e38544df3a3" -> "sha256:f3c988d2d97d5560d652ecfc1e5a21e07c2f371865f73b879e78ac6de86eaac4" [label=""];
  "sha256:f3c988d2d97d5560d652ecfc1e5a21e07c2f371865f73b879e78ac6de86eaac4" -> "sha256:af7f7d974c07f0fca94ae1ce95a93143d932435534f39a33722aaf439c5d0f84" [label=""];
  "sha256:c87790ff88cd6e253fff900bc672306c6e4913412df61bf5c538f988d74b3f00" -> "sha256:af7f7d974c07f0fca94ae1ce95a93143d932435534f39a33722aaf439c5d0f84" [label=""];
  "sha256:af7f7d974c07f0fca94ae1ce95a93143d932435534f39a33722aaf439c5d0f84" -> "sha256:514239d4be4b16875befac59be8cbcfca96228e9518ba27c78bea5a8a2830c12" [label=""];
  "sha256:c87790ff88cd6e253fff900bc672306c6e4913412df61bf5c538f988d74b3f00" -> "sha256:514239d4be4b16875befac59be8cbcfca96228e9518ba27c78bea5a8a2830c12" [label=""];
  "sha256:514239d4be4b16875befac59be8cbcfca96228e9518ba27c78bea5a8a2830c12" -> "sha256:c08b42da24e7be5e355714f8e631c984221e7b4a9fa7587433a071acccaff76b" [label=""];
  "sha256:c87790ff88cd6e253fff900bc672306c6e4913412df61bf5c538f988d74b3f00" -> "sha256:c08b42da24e7be5e355714f8e631c984221e7b4a9fa7587433a071acccaff76b" [label=""];
  "sha256:c08b42da24e7be5e355714f8e631c984221e7b4a9fa7587433a071acccaff76b" -> "sha256:e2684814d904e44f23db2bce3c6c5db8c2389e01edcd034d452309c81803a60a" [label=""];
  "sha256:e2684814d904e44f23db2bce3c6c5db8c2389e01edcd034d452309c81803a60a" -> "sha256:77938936a28c3b2d8d8b9cc911990698a0bb71d8c65ec9d91949bf99f09f315c" [label=""];
  "sha256:77938936a28c3b2d8d8b9cc911990698a0bb71d8c65ec9d91949bf99f09f315c" -> "sha256:939008c24e1d12cfac242f13da8c4ac4afe2c6d455cec0486e1d531d4b287a06" [label=""];
  "sha256:939008c24e1d12cfac242f13da8c4ac4afe2c6d455cec0486e1d531d4b287a06" -> "sha256:e47224b3dc7cff3a5c86b61045a8b0ec763de186267e89d398230f41f63a98b4" [label=""];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:0fbf0cb5b70ea3594fd21c521b1e3b58cd0595879f9b658da4e2f3f05306973e" [label=""];
  "sha256:e47224b3dc7cff3a5c86b61045a8b0ec763de186267e89d398230f41f63a98b4" -> "sha256:0fbf0cb5b70ea3594fd21c521b1e3b58cd0595879f9b658da4e2f3f05306973e" [label=""];
  "sha256:0fbf0cb5b70ea3594fd21c521b1e3b58cd0595879f9b658da4e2f3f05306973e" -> "sha256:96d5e123c9a8f129550d1467ce7074eb77cc4acd2a8f6061b916794781a4f901" [label=""];
}

