[app/sources/291708483.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:d16c031260ae26b377d3a5b3c5eda0e9d0d19577872185e14c110d5be7b7c349" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:023115129b36505df45c388feba7ed7408d69c9474178291fa1bb0305591c4a0" [label="local://context" shape="ellipse"];
  "sha256:b157f395fc786b2e4b009d10ad5c87a7b29637d392931ab55dd023b9fb016c26" [label="docker-image://docker.io/library/golang:1.10.3-alpine3.8" shape="ellipse"];
  "sha256:23e46778ad65a7e858091efaf2158d45c583dd5ecb76848c1fbe1bcd1e6dc97c" [label="copy{src=/vent, dest=/src/github.com/monax/bosmarmot/vent}" shape="note"];
  "sha256:e02c397d8ba97b63acbf8eedae849d9f44e57ad39e0bdcd2ca2a0f230e3af0dd" [label="copy{src=/vendor, dest=/src/github.com/monax/bosmarmot/vent/vendor/}" shape="note"];
  "sha256:0d2a45bc9a2cce8614c93b53906cf29da4948963f1f02fd94d762e79fc7ecf66" [label="mkdir{path=/src/github.com/monax/bosmarmot/vent}" shape="note"];
  "sha256:b3be2f8330a57bd494670dcf636ed2e428ce215a521b4c345b90ec9f799315b1" [label="/bin/sh -c apk add --update gcc g++" shape="box"];
  "sha256:ce73790712540cbda3dc0f158cc62d2f1006b6d322530a8e8b1df3d72c9deb33" [label="/bin/sh -c go build --ldflags '-extldflags \"-static\"' -o bin/vent ." shape="box"];
  "sha256:874f9fa3ef4c89ecbfda972d96731e6fe34a8104bc66aad62ce2a0fd19ccac75" [label="copy{src=/go/src/github.com/monax/bosmarmot/vent/bin/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:31fd718aa9c8004968fc2650d1f197515f4444ff223be545f35d6bded66811e9" [label="sha256:31fd718aa9c8004968fc2650d1f197515f4444ff223be545f35d6bded66811e9" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:d16c031260ae26b377d3a5b3c5eda0e9d0d19577872185e14c110d5be7b7c349" [label=""];
  "sha256:b157f395fc786b2e4b009d10ad5c87a7b29637d392931ab55dd023b9fb016c26" -> "sha256:23e46778ad65a7e858091efaf2158d45c583dd5ecb76848c1fbe1bcd1e6dc97c" [label=""];
  "sha256:023115129b36505df45c388feba7ed7408d69c9474178291fa1bb0305591c4a0" -> "sha256:23e46778ad65a7e858091efaf2158d45c583dd5ecb76848c1fbe1bcd1e6dc97c" [label=""];
  "sha256:23e46778ad65a7e858091efaf2158d45c583dd5ecb76848c1fbe1bcd1e6dc97c" -> "sha256:e02c397d8ba97b63acbf8eedae849d9f44e57ad39e0bdcd2ca2a0f230e3af0dd" [label=""];
  "sha256:023115129b36505df45c388feba7ed7408d69c9474178291fa1bb0305591c4a0" -> "sha256:e02c397d8ba97b63acbf8eedae849d9f44e57ad39e0bdcd2ca2a0f230e3af0dd" [label=""];
  "sha256:e02c397d8ba97b63acbf8eedae849d9f44e57ad39e0bdcd2ca2a0f230e3af0dd" -> "sha256:0d2a45bc9a2cce8614c93b53906cf29da4948963f1f02fd94d762e79fc7ecf66" [label=""];
  "sha256:0d2a45bc9a2cce8614c93b53906cf29da4948963f1f02fd94d762e79fc7ecf66" -> "sha256:b3be2f8330a57bd494670dcf636ed2e428ce215a521b4c345b90ec9f799315b1" [label=""];
  "sha256:b3be2f8330a57bd494670dcf636ed2e428ce215a521b4c345b90ec9f799315b1" -> "sha256:ce73790712540cbda3dc0f158cc62d2f1006b6d322530a8e8b1df3d72c9deb33" [label=""];
  "sha256:d16c031260ae26b377d3a5b3c5eda0e9d0d19577872185e14c110d5be7b7c349" -> "sha256:874f9fa3ef4c89ecbfda972d96731e6fe34a8104bc66aad62ce2a0fd19ccac75" [label=""];
  "sha256:ce73790712540cbda3dc0f158cc62d2f1006b6d322530a8e8b1df3d72c9deb33" -> "sha256:874f9fa3ef4c89ecbfda972d96731e6fe34a8104bc66aad62ce2a0fd19ccac75" [label=""];
  "sha256:874f9fa3ef4c89ecbfda972d96731e6fe34a8104bc66aad62ce2a0fd19ccac75" -> "sha256:31fd718aa9c8004968fc2650d1f197515f4444ff223be545f35d6bded66811e9" [label=""];
}

