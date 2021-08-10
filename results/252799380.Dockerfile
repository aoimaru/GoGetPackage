[app/sources/252799380.Dockerfile]
digraph {
  "sha256:b45cbab0a283af0f160945e3ab58505d0965394d495a807ee7be6e82ee89e86c" [label="docker-image://docker.io/sylvainlasnier/ubuntu@sha256:d0f11cefee1853e018bfd880d5e0f05c6ef524ceead09421f87cfe8874267d45" shape="ellipse"];
  "sha256:f0906c624aa86cb1b780a14db85d0a45182bc4644023097084865c15239349af" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c0d1b71a5bb39b02ce583c23a704b13f9925c2b8130f719c6bc4cba34da4a428" [label="/bin/sh -c apt-get -y install python-software-properties software-properties-common" shape="box"];
  "sha256:29f8797060a0c9539f239613264d1fbc40928d6447adf957ee98ef529fc461d2" [label="/bin/sh -c yes | apt-add-repository ppa:developmentseed/mapbox" shape="box"];
  "sha256:888b277b5a0409f1c656b0baefcdec03db2b7e69f6c02b8af8c484b94139b9cb" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ea0a02f9f88afc71556d8dcabf400bc322bd11f61470cc0fb3ee4be0b7acd603" [label="/bin/sh -c apt-get install --yes tilemill" shape="box"];
  "sha256:a6686dfd6ac46b07a153a7e33ea338f56df2e20e3a947be1f1db38b52fdad28e" [label="local://context" shape="ellipse"];
  "sha256:01315a1235dc06c952207ef7fbd0c79f5285f3a80966af8d3bca0d7c2e918951" [label="copy{src=/tilemillconfig.json, dest=/etc/tilemillconfig.json}" shape="note"];
  "sha256:d8bffd86146d055c77af5265898f11754296bb4c064591face865e6e05a93f52" [label="sha256:d8bffd86146d055c77af5265898f11754296bb4c064591face865e6e05a93f52" shape="plaintext"];
  "sha256:b45cbab0a283af0f160945e3ab58505d0965394d495a807ee7be6e82ee89e86c" -> "sha256:f0906c624aa86cb1b780a14db85d0a45182bc4644023097084865c15239349af" [label=""];
  "sha256:f0906c624aa86cb1b780a14db85d0a45182bc4644023097084865c15239349af" -> "sha256:c0d1b71a5bb39b02ce583c23a704b13f9925c2b8130f719c6bc4cba34da4a428" [label=""];
  "sha256:c0d1b71a5bb39b02ce583c23a704b13f9925c2b8130f719c6bc4cba34da4a428" -> "sha256:29f8797060a0c9539f239613264d1fbc40928d6447adf957ee98ef529fc461d2" [label=""];
  "sha256:29f8797060a0c9539f239613264d1fbc40928d6447adf957ee98ef529fc461d2" -> "sha256:888b277b5a0409f1c656b0baefcdec03db2b7e69f6c02b8af8c484b94139b9cb" [label=""];
  "sha256:888b277b5a0409f1c656b0baefcdec03db2b7e69f6c02b8af8c484b94139b9cb" -> "sha256:ea0a02f9f88afc71556d8dcabf400bc322bd11f61470cc0fb3ee4be0b7acd603" [label=""];
  "sha256:ea0a02f9f88afc71556d8dcabf400bc322bd11f61470cc0fb3ee4be0b7acd603" -> "sha256:01315a1235dc06c952207ef7fbd0c79f5285f3a80966af8d3bca0d7c2e918951" [label=""];
  "sha256:a6686dfd6ac46b07a153a7e33ea338f56df2e20e3a947be1f1db38b52fdad28e" -> "sha256:01315a1235dc06c952207ef7fbd0c79f5285f3a80966af8d3bca0d7c2e918951" [label=""];
  "sha256:01315a1235dc06c952207ef7fbd0c79f5285f3a80966af8d3bca0d7c2e918951" -> "sha256:d8bffd86146d055c77af5265898f11754296bb4c064591face865e6e05a93f52" [label=""];
}

