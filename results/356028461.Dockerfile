[app/sources/356028461.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:61000af9f6a1f149eabcd732f9edce7c357d22348f5f2eba5342504106be557c" [label="/bin/sh -c mkdir -p /go/src/github.com/bfosberry/bonano" shape="box"];
  "sha256:a88a07c82c733d84ebaf453dd95d65772adb77d95c7998595bf5afeb49ab7fe8" [label="local://context" shape="ellipse"];
  "sha256:0cc9b15f5db1c26acd5fd912c573833552cb46b991262c97e337308e5853662f" [label="copy{src=/, dest=/go/src/github.com/bfosberry/bonano}" shape="note"];
  "sha256:4d2532769bf3b12fe703a5861d4a541012de676a1b0a0d3136d7fde51b885031" [label="mkdir{path=/go/src/github.com/bfosberry/bonano}" shape="note"];
  "sha256:d90a063e12a124e0b58c7ff38bdfcd749ba71342f3c0f2c5a3cc59adae629964" [label="/bin/sh -c go get ./..." shape="box"];
  "sha256:d4cf1f63adb0320e9799ad52461bc8b544b3addda66a2aff1f1e937566797eb2" [label="/bin/sh -c go build -o cmd/local ./cmd/main.go" shape="box"];
  "sha256:57c2cc3bae2bd429de62f135f1ee247c5f59eb69fce241c5d77e9ce0d2bfbd1e" [label="sha256:57c2cc3bae2bd429de62f135f1ee247c5f59eb69fce241c5d77e9ce0d2bfbd1e" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:61000af9f6a1f149eabcd732f9edce7c357d22348f5f2eba5342504106be557c" [label=""];
  "sha256:61000af9f6a1f149eabcd732f9edce7c357d22348f5f2eba5342504106be557c" -> "sha256:0cc9b15f5db1c26acd5fd912c573833552cb46b991262c97e337308e5853662f" [label=""];
  "sha256:a88a07c82c733d84ebaf453dd95d65772adb77d95c7998595bf5afeb49ab7fe8" -> "sha256:0cc9b15f5db1c26acd5fd912c573833552cb46b991262c97e337308e5853662f" [label=""];
  "sha256:0cc9b15f5db1c26acd5fd912c573833552cb46b991262c97e337308e5853662f" -> "sha256:4d2532769bf3b12fe703a5861d4a541012de676a1b0a0d3136d7fde51b885031" [label=""];
  "sha256:4d2532769bf3b12fe703a5861d4a541012de676a1b0a0d3136d7fde51b885031" -> "sha256:d90a063e12a124e0b58c7ff38bdfcd749ba71342f3c0f2c5a3cc59adae629964" [label=""];
  "sha256:d90a063e12a124e0b58c7ff38bdfcd749ba71342f3c0f2c5a3cc59adae629964" -> "sha256:d4cf1f63adb0320e9799ad52461bc8b544b3addda66a2aff1f1e937566797eb2" [label=""];
  "sha256:d4cf1f63adb0320e9799ad52461bc8b544b3addda66a2aff1f1e937566797eb2" -> "sha256:57c2cc3bae2bd429de62f135f1ee247c5f59eb69fce241c5d77e9ce0d2bfbd1e" [label=""];
}

