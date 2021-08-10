[app/sources/297946942.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" [label="docker-image://docker.io/library/openjdk:8" shape="ellipse"];
  "sha256:477f5f0daa33af12c14a450f4be2bf05b22a3ab7a2db96c7277daefeafd14fbf" [label="mkdir{path=/usr/src/datacollector-edge}" shape="note"];
  "sha256:7b689a4c31a659a458e6902c29bcf0387b787623034a75e46c001ed8c7c033b9" [label="/bin/sh -c git init" shape="box"];
  "sha256:e951396e71d870cded95314a7dd4094e03ba7b74a909b268be664f547f506589" [label="local://context" shape="ellipse"];
  "sha256:9a3463390935ab1a2803f268aa00013d38f3492a1c76befe7c8f507ef724c7be" [label="copy{src=/gradle, dest=/usr/src/datacollector-edge/gradle}" shape="note"];
  "sha256:5b4315a51a5f88c54875a852d7dc9ccdfec84958f7b76edaeaa9a6a64b195c34" [label="copy{src=/gradlew, dest=/usr/src/datacollector-edge/},copy{src=/build.gradle, dest=/usr/src/datacollector-edge/},copy{src=/gradle.properties, dest=/usr/src/datacollector-edge/}" shape="note"];
  "sha256:2463d5d6ee9f38dd24e8bf3b9a3ea77f2fb449b8789d3543233e4664f68939de" [label="/bin/sh -c ./gradlew --no-daemon init" shape="box"];
  "sha256:5380b121c800847225cf69a4938cb6a9f2126676a9c771c8a3f4a33a8abc2c2f" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a21e9e762255ce5f54f39a399721c7c650c5484f79c9417e6c60c5ca0e5f521e" [label="/bin/sh -c curl -L \"https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-${TF_TYPE}-$(go env GOOS)-x86_64-1.10.0.tar.gz\" | tar -C ${TARGET_DIRECTORY} -xz && ldconfig" shape="box"];
  "sha256:2e2c8cdc9896942d53afd036f9cf1c06007d55b3685faf629173ff04b72042ff" [label="copy{src=/, dest=/usr/src/datacollector-edge/}" shape="note"];
  "sha256:6e85488ce08671e58fb5fc2e623f0b9c751fcb924aece1d9f341b75c820f3169" [label="/bin/sh -c ./gradlew --no-daemon -Prelease -PincludeStage=\"kafka javascript tensorflow\" installLinuxAmd64" shape="box"];
  "sha256:16c546afaec3aec68d37794f81fdb20b6e2e48415357e6773df7be688406f5b4" [label="copy{src=/usr/local/lib/libtensorflow.so, dest=/usr/local/lib/},copy{src=/usr/local/lib/libtensorflow_framework.so, dest=/usr/local/lib/}" shape="note"];
  "sha256:627de53029e6c119906dae04b4223d07a9d8d9bd2f14f9094ef4f4ccb00dff08" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:71a04147814114b69e4b0f20a6b0a209b4b5873c81f661b4b1243d20dec979f5" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:337d2b77e26afbcf8d0186d7895fb1309c8ebbaae7e3dc6b6a6c2b95df85ca86" [label="copy{src=/usr/src/datacollector-edge/dist, dest=/opt/datacollector-edge/}" shape="note"];
  "sha256:7fe5d24fe919acbe58f5244bd1adbe179eb7c53d475aef8461bbb4b4311ef436" [label="sha256:7fe5d24fe919acbe58f5244bd1adbe179eb7c53d475aef8461bbb4b4311ef436" shape="plaintext"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" -> "sha256:477f5f0daa33af12c14a450f4be2bf05b22a3ab7a2db96c7277daefeafd14fbf" [label=""];
  "sha256:477f5f0daa33af12c14a450f4be2bf05b22a3ab7a2db96c7277daefeafd14fbf" -> "sha256:7b689a4c31a659a458e6902c29bcf0387b787623034a75e46c001ed8c7c033b9" [label=""];
  "sha256:7b689a4c31a659a458e6902c29bcf0387b787623034a75e46c001ed8c7c033b9" -> "sha256:9a3463390935ab1a2803f268aa00013d38f3492a1c76befe7c8f507ef724c7be" [label=""];
  "sha256:e951396e71d870cded95314a7dd4094e03ba7b74a909b268be664f547f506589" -> "sha256:9a3463390935ab1a2803f268aa00013d38f3492a1c76befe7c8f507ef724c7be" [label=""];
  "sha256:9a3463390935ab1a2803f268aa00013d38f3492a1c76befe7c8f507ef724c7be" -> "sha256:5b4315a51a5f88c54875a852d7dc9ccdfec84958f7b76edaeaa9a6a64b195c34" [label=""];
  "sha256:e951396e71d870cded95314a7dd4094e03ba7b74a909b268be664f547f506589" -> "sha256:5b4315a51a5f88c54875a852d7dc9ccdfec84958f7b76edaeaa9a6a64b195c34" [label=""];
  "sha256:5b4315a51a5f88c54875a852d7dc9ccdfec84958f7b76edaeaa9a6a64b195c34" -> "sha256:2463d5d6ee9f38dd24e8bf3b9a3ea77f2fb449b8789d3543233e4664f68939de" [label=""];
  "sha256:2463d5d6ee9f38dd24e8bf3b9a3ea77f2fb449b8789d3543233e4664f68939de" -> "sha256:5380b121c800847225cf69a4938cb6a9f2126676a9c771c8a3f4a33a8abc2c2f" [label=""];
  "sha256:5380b121c800847225cf69a4938cb6a9f2126676a9c771c8a3f4a33a8abc2c2f" -> "sha256:a21e9e762255ce5f54f39a399721c7c650c5484f79c9417e6c60c5ca0e5f521e" [label=""];
  "sha256:a21e9e762255ce5f54f39a399721c7c650c5484f79c9417e6c60c5ca0e5f521e" -> "sha256:2e2c8cdc9896942d53afd036f9cf1c06007d55b3685faf629173ff04b72042ff" [label=""];
  "sha256:e951396e71d870cded95314a7dd4094e03ba7b74a909b268be664f547f506589" -> "sha256:2e2c8cdc9896942d53afd036f9cf1c06007d55b3685faf629173ff04b72042ff" [label=""];
  "sha256:2e2c8cdc9896942d53afd036f9cf1c06007d55b3685faf629173ff04b72042ff" -> "sha256:6e85488ce08671e58fb5fc2e623f0b9c751fcb924aece1d9f341b75c820f3169" [label=""];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:16c546afaec3aec68d37794f81fdb20b6e2e48415357e6773df7be688406f5b4" [label=""];
  "sha256:6e85488ce08671e58fb5fc2e623f0b9c751fcb924aece1d9f341b75c820f3169" -> "sha256:16c546afaec3aec68d37794f81fdb20b6e2e48415357e6773df7be688406f5b4" [label=""];
  "sha256:16c546afaec3aec68d37794f81fdb20b6e2e48415357e6773df7be688406f5b4" -> "sha256:627de53029e6c119906dae04b4223d07a9d8d9bd2f14f9094ef4f4ccb00dff08" [label=""];
  "sha256:627de53029e6c119906dae04b4223d07a9d8d9bd2f14f9094ef4f4ccb00dff08" -> "sha256:71a04147814114b69e4b0f20a6b0a209b4b5873c81f661b4b1243d20dec979f5" [label=""];
  "sha256:6e85488ce08671e58fb5fc2e623f0b9c751fcb924aece1d9f341b75c820f3169" -> "sha256:71a04147814114b69e4b0f20a6b0a209b4b5873c81f661b4b1243d20dec979f5" [label=""];
  "sha256:71a04147814114b69e4b0f20a6b0a209b4b5873c81f661b4b1243d20dec979f5" -> "sha256:337d2b77e26afbcf8d0186d7895fb1309c8ebbaae7e3dc6b6a6c2b95df85ca86" [label=""];
  "sha256:6e85488ce08671e58fb5fc2e623f0b9c751fcb924aece1d9f341b75c820f3169" -> "sha256:337d2b77e26afbcf8d0186d7895fb1309c8ebbaae7e3dc6b6a6c2b95df85ca86" [label=""];
  "sha256:337d2b77e26afbcf8d0186d7895fb1309c8ebbaae7e3dc6b6a6c2b95df85ca86" -> "sha256:7fe5d24fe919acbe58f5244bd1adbe179eb7c53d475aef8461bbb4b4311ef436" [label=""];
}

