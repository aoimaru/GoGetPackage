[app/sources/228763189.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:af0c3e60990a7b4b3d1043e1d15596525ea36896631b65e2eee87e0c27fb2c5d" [label="mkdir{path=/app}" shape="note"];
  "sha256:47fee6339b5066a1187dc71ce2174a4a797a06127030c7abb7bc9b3032a0063a" [label="docker-image://docker.io/library/golang:1.10-alpine3.8" shape="ellipse"];
  "sha256:db94aa1871f1db7dce96871af224989c6f95ef226f3baf42b7248962f6a295ad" [label="/bin/sh -c apk add --update --no-cache git" shape="box"];
  "sha256:63580aa15c8d2eff2a5b413a04610db6406abb997343ec376b21fed5947f485e" [label="mkdir{path=/app}" shape="note"];
  "sha256:6f3e4475e252f9bf98b5c3d4be1149634a39ddeb1d6ee4b6f2266079c4422b7c" [label="local://context" shape="ellipse"];
  "sha256:c9c8e9b6a9a30665127c0194fd8fcca2200d1ad7eea90941d4ac86908087ed12" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:d90acdda6db632e4d2301eb96f32998043eb78cec22916251a939e77bb3e8c32" [label="/bin/sh -c go get ./..." shape="box"];
  "sha256:09cb1c15e910083ce5f42c619ac759145d7809d4a47efe4e65868027c323c66c" [label="mkdir{path=/app}" shape="note"];
  "sha256:c1958b1706a81991962c5644c0ad5d2922de7ddd41156249dec1f5df4c05d499" [label="/bin/sh -c go build -o grpc_gateway src/pkg/main/main.go" shape="box"];
  "sha256:4c8eb85038a8ec0d101f50fccfffc48771759b9f9583cf14990c5f449bfe2a27" [label="copy{src=/app/grpc_gateway, dest=/app/}" shape="note"];
  "sha256:3bb37e311d66f9f132600b96f5bddb4dafd8fd20fe08881d1e6a56c2d2c3cfe7" [label="copy{src=/app/config.yaml, dest=/app/}" shape="note"];
  "sha256:e282f06294bc1d8621ab71f9a87582e66f7c7b65ff7e46dc7a0a012f751c53e1" [label="copy{src=/app/src, dest=/app/}" shape="note"];
  "sha256:78ab5bb22a703b89bf35e0f59292e43d226c0c63bcb1929d0001dbf705c40514" [label="sha256:78ab5bb22a703b89bf35e0f59292e43d226c0c63bcb1929d0001dbf705c40514" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:af0c3e60990a7b4b3d1043e1d15596525ea36896631b65e2eee87e0c27fb2c5d" [label=""];
  "sha256:47fee6339b5066a1187dc71ce2174a4a797a06127030c7abb7bc9b3032a0063a" -> "sha256:db94aa1871f1db7dce96871af224989c6f95ef226f3baf42b7248962f6a295ad" [label=""];
  "sha256:db94aa1871f1db7dce96871af224989c6f95ef226f3baf42b7248962f6a295ad" -> "sha256:63580aa15c8d2eff2a5b413a04610db6406abb997343ec376b21fed5947f485e" [label=""];
  "sha256:63580aa15c8d2eff2a5b413a04610db6406abb997343ec376b21fed5947f485e" -> "sha256:c9c8e9b6a9a30665127c0194fd8fcca2200d1ad7eea90941d4ac86908087ed12" [label=""];
  "sha256:6f3e4475e252f9bf98b5c3d4be1149634a39ddeb1d6ee4b6f2266079c4422b7c" -> "sha256:c9c8e9b6a9a30665127c0194fd8fcca2200d1ad7eea90941d4ac86908087ed12" [label=""];
  "sha256:c9c8e9b6a9a30665127c0194fd8fcca2200d1ad7eea90941d4ac86908087ed12" -> "sha256:d90acdda6db632e4d2301eb96f32998043eb78cec22916251a939e77bb3e8c32" [label=""];
  "sha256:d90acdda6db632e4d2301eb96f32998043eb78cec22916251a939e77bb3e8c32" -> "sha256:09cb1c15e910083ce5f42c619ac759145d7809d4a47efe4e65868027c323c66c" [label=""];
  "sha256:09cb1c15e910083ce5f42c619ac759145d7809d4a47efe4e65868027c323c66c" -> "sha256:c1958b1706a81991962c5644c0ad5d2922de7ddd41156249dec1f5df4c05d499" [label=""];
  "sha256:af0c3e60990a7b4b3d1043e1d15596525ea36896631b65e2eee87e0c27fb2c5d" -> "sha256:4c8eb85038a8ec0d101f50fccfffc48771759b9f9583cf14990c5f449bfe2a27" [label=""];
  "sha256:c1958b1706a81991962c5644c0ad5d2922de7ddd41156249dec1f5df4c05d499" -> "sha256:4c8eb85038a8ec0d101f50fccfffc48771759b9f9583cf14990c5f449bfe2a27" [label=""];
  "sha256:4c8eb85038a8ec0d101f50fccfffc48771759b9f9583cf14990c5f449bfe2a27" -> "sha256:3bb37e311d66f9f132600b96f5bddb4dafd8fd20fe08881d1e6a56c2d2c3cfe7" [label=""];
  "sha256:c1958b1706a81991962c5644c0ad5d2922de7ddd41156249dec1f5df4c05d499" -> "sha256:3bb37e311d66f9f132600b96f5bddb4dafd8fd20fe08881d1e6a56c2d2c3cfe7" [label=""];
  "sha256:3bb37e311d66f9f132600b96f5bddb4dafd8fd20fe08881d1e6a56c2d2c3cfe7" -> "sha256:e282f06294bc1d8621ab71f9a87582e66f7c7b65ff7e46dc7a0a012f751c53e1" [label=""];
  "sha256:c1958b1706a81991962c5644c0ad5d2922de7ddd41156249dec1f5df4c05d499" -> "sha256:e282f06294bc1d8621ab71f9a87582e66f7c7b65ff7e46dc7a0a012f751c53e1" [label=""];
  "sha256:e282f06294bc1d8621ab71f9a87582e66f7c7b65ff7e46dc7a0a012f751c53e1" -> "sha256:78ab5bb22a703b89bf35e0f59292e43d226c0c63bcb1929d0001dbf705c40514" [label=""];
}

