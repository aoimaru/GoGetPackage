[app/sources/224072239.Dockerfile]
digraph {
  "sha256:52684c4f05c65d94a07df9aef9d0d04c6b9730d59940a0180dd4378e6639a36a" [label="local://context" shape="ellipse"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:081620d053361a81482004de3645efe47d446173fa1ba0fe372c118cac6dc103" [label="/bin/sh -c mkdir -p /service" shape="box"];
  "sha256:57147e0b7136290060c8b46939c614ab5dfe4ff528658e65558288d4981d0b17" [label="mkdir{path=/service}" shape="note"];
  "sha256:6d67bed8f8665e2cd87258d91a143f023ba96ea9673cebe554233d24a0f7e647" [label="/bin/sh -c apk add --no-cache \t\tgit \t&& go get github.com/julienschmidt/httprouter \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:2f9fb92735181021e986c3f4a50bc41f66728720ffa444df4db715df89bef4e2" [label="/bin/sh -c apk del --purge \t\tgit \t&& rm -rf /var/cache/apk/* yara-3.5.0" shape="box"];
  "sha256:cbc50d1914fb5872eadfac7af3d612967842e60772122d46187559edae13dea1" [label="copy{src=/LICENSE, dest=/service}" shape="note"];
  "sha256:3756569694d99dab6bbde835733127cd410bcef93292a26d0e1e43ad4b263b15" [label="copy{src=/README.md, dest=/service}" shape="note"];
  "sha256:3d502b05def369a5417cc396ef0ad3dc497209a8ec258351f37b73b06974a79e" [label="copy{src=/vtsample.go, dest=/service}" shape="note"];
  "sha256:a2a17e47dce69a61b74619baaccef27545c044b9201fa66d1b4b37c44afbea13" [label="/bin/sh -c go build vtsample.go" shape="box"];
  "sha256:ecf9a4e9137b84aaa85854e75674ffe90d0735c02b4b3d09d1275e1d24f40314" [label="copy{src=/service.conf, dest=/service/service.conf}" shape="note"];
  "sha256:10cdb027b6f4acadf6d5ea786fa886dbecb589cbca757b14120acf26cc07dafb" [label="sha256:10cdb027b6f4acadf6d5ea786fa886dbecb589cbca757b14120acf26cc07dafb" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:081620d053361a81482004de3645efe47d446173fa1ba0fe372c118cac6dc103" [label=""];
  "sha256:081620d053361a81482004de3645efe47d446173fa1ba0fe372c118cac6dc103" -> "sha256:57147e0b7136290060c8b46939c614ab5dfe4ff528658e65558288d4981d0b17" [label=""];
  "sha256:57147e0b7136290060c8b46939c614ab5dfe4ff528658e65558288d4981d0b17" -> "sha256:6d67bed8f8665e2cd87258d91a143f023ba96ea9673cebe554233d24a0f7e647" [label=""];
  "sha256:6d67bed8f8665e2cd87258d91a143f023ba96ea9673cebe554233d24a0f7e647" -> "sha256:2f9fb92735181021e986c3f4a50bc41f66728720ffa444df4db715df89bef4e2" [label=""];
  "sha256:2f9fb92735181021e986c3f4a50bc41f66728720ffa444df4db715df89bef4e2" -> "sha256:cbc50d1914fb5872eadfac7af3d612967842e60772122d46187559edae13dea1" [label=""];
  "sha256:52684c4f05c65d94a07df9aef9d0d04c6b9730d59940a0180dd4378e6639a36a" -> "sha256:cbc50d1914fb5872eadfac7af3d612967842e60772122d46187559edae13dea1" [label=""];
  "sha256:cbc50d1914fb5872eadfac7af3d612967842e60772122d46187559edae13dea1" -> "sha256:3756569694d99dab6bbde835733127cd410bcef93292a26d0e1e43ad4b263b15" [label=""];
  "sha256:52684c4f05c65d94a07df9aef9d0d04c6b9730d59940a0180dd4378e6639a36a" -> "sha256:3756569694d99dab6bbde835733127cd410bcef93292a26d0e1e43ad4b263b15" [label=""];
  "sha256:3756569694d99dab6bbde835733127cd410bcef93292a26d0e1e43ad4b263b15" -> "sha256:3d502b05def369a5417cc396ef0ad3dc497209a8ec258351f37b73b06974a79e" [label=""];
  "sha256:52684c4f05c65d94a07df9aef9d0d04c6b9730d59940a0180dd4378e6639a36a" -> "sha256:3d502b05def369a5417cc396ef0ad3dc497209a8ec258351f37b73b06974a79e" [label=""];
  "sha256:3d502b05def369a5417cc396ef0ad3dc497209a8ec258351f37b73b06974a79e" -> "sha256:a2a17e47dce69a61b74619baaccef27545c044b9201fa66d1b4b37c44afbea13" [label=""];
  "sha256:a2a17e47dce69a61b74619baaccef27545c044b9201fa66d1b4b37c44afbea13" -> "sha256:ecf9a4e9137b84aaa85854e75674ffe90d0735c02b4b3d09d1275e1d24f40314" [label=""];
  "sha256:52684c4f05c65d94a07df9aef9d0d04c6b9730d59940a0180dd4378e6639a36a" -> "sha256:ecf9a4e9137b84aaa85854e75674ffe90d0735c02b4b3d09d1275e1d24f40314" [label=""];
  "sha256:ecf9a4e9137b84aaa85854e75674ffe90d0735c02b4b3d09d1275e1d24f40314" -> "sha256:10cdb027b6f4acadf6d5ea786fa886dbecb589cbca757b14120acf26cc07dafb" [label=""];
}

