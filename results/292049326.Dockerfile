[app/sources/292049326.Dockerfile]
digraph {
  "sha256:409e37d1ddb42ab0978736b9276b0cf9456a9bba9474acd09133b4172cecf1ff" [label="local://context" shape="ellipse"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:c4fd62cd86f77db1fc11292cf4a7263220088b91ef2258b4acef49f3e7068713" [label="mkdir{path=/go/src/github.com/martin-helmich/cloudnativego-backend}" shape="note"];
  "sha256:7f18bc8cacfc8eb0bc565427b1d5b3407e95548bc9ecd55e390ae191c467ea20" [label="copy{src=/, dest=/go/src/github.com/martin-helmich/cloudnativego-backend/}" shape="note"];
  "sha256:e86dccd2c8082752c663ab64b224a48407f0c32d33000ca6fdf33980b5ecb4f5" [label="mkdir{path=/go/src/github.com/martin-helmich/cloudnativego-backend/src/eventservice}" shape="note"];
  "sha256:98ea895e855ca126fe44099b9a28d81106d4fdff2f7b00579d3fa64c3aca7c7c" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o eventservice" shape="box"];
  "sha256:5ba2d7790988fdcd84259b859c25723be14ee499982870ccfc4b8a259f70e325" [label="copy{src=/go/src/github.com/martin-helmich/cloudnativego-backend/src/eventservice/eventservice, dest=/eventservice}" shape="note"];
  "sha256:a0b254b34dea1a3593e4dcf0f8b1191658c008f91871f6acf7676797c1f170ad" [label="sha256:a0b254b34dea1a3593e4dcf0f8b1191658c008f91871f6acf7676797c1f170ad" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:c4fd62cd86f77db1fc11292cf4a7263220088b91ef2258b4acef49f3e7068713" [label=""];
  "sha256:c4fd62cd86f77db1fc11292cf4a7263220088b91ef2258b4acef49f3e7068713" -> "sha256:7f18bc8cacfc8eb0bc565427b1d5b3407e95548bc9ecd55e390ae191c467ea20" [label=""];
  "sha256:409e37d1ddb42ab0978736b9276b0cf9456a9bba9474acd09133b4172cecf1ff" -> "sha256:7f18bc8cacfc8eb0bc565427b1d5b3407e95548bc9ecd55e390ae191c467ea20" [label=""];
  "sha256:7f18bc8cacfc8eb0bc565427b1d5b3407e95548bc9ecd55e390ae191c467ea20" -> "sha256:e86dccd2c8082752c663ab64b224a48407f0c32d33000ca6fdf33980b5ecb4f5" [label=""];
  "sha256:e86dccd2c8082752c663ab64b224a48407f0c32d33000ca6fdf33980b5ecb4f5" -> "sha256:98ea895e855ca126fe44099b9a28d81106d4fdff2f7b00579d3fa64c3aca7c7c" [label=""];
  "sha256:98ea895e855ca126fe44099b9a28d81106d4fdff2f7b00579d3fa64c3aca7c7c" -> "sha256:5ba2d7790988fdcd84259b859c25723be14ee499982870ccfc4b8a259f70e325" [label=""];
  "sha256:5ba2d7790988fdcd84259b859c25723be14ee499982870ccfc4b8a259f70e325" -> "sha256:a0b254b34dea1a3593e4dcf0f8b1191658c008f91871f6acf7676797c1f170ad" [label=""];
}

