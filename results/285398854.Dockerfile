[app/sources/285398854.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:900894ab2f5a28750df4c92920c87d2ada1902300aecd7d052259290ebb37d99" [label="/bin/sh -c apk add git" shape="box"];
  "sha256:250c217274fff6efcc25d24611845d041d2be4926bc307909dc4ac36eb145ee0" [label="/bin/sh -c go get github.com/rakyll/statik" shape="box"];
  "sha256:33b65cd4fdc86857070eef3401f26eef94f25d0b1e0e8fe6fbcaadc2146a59e4" [label="local://context" shape="ellipse"];
  "sha256:1af5c67510ddb63a97926038dc038fb2376c5a55084e9c90fb86d4c7d7c6ef53" [label="copy{src=/markdeck/helper, dest=/helper}" shape="note"];
  "sha256:90361add17afa1d63d1d20b964a8828c11fec7cf235232b60cba0cb3a4f9bbc2" [label="/bin/sh -c statik -src=/helper" shape="box"];
  "sha256:c11a637944aed49c10eb209fdd4dc1a043a6a8010d5ea7f06a33b5c403697c4c" [label="/bin/sh -c ls -al" shape="box"];
  "sha256:c0035d69e644cec3d9e8aa651373e9c183f54a44fc7905d6b6daa3146ce4094b" [label="/bin/sh -c cp /helper/main.go /main.go" shape="box"];
  "sha256:8ed314982143891483ceae51b2807dea060d6489f8f256f7108d274093238ffe" [label="/bin/sh -c mkdir /build" shape="box"];
  "sha256:722ecbe5efa86b92c88d2347981627d4f4c87dd81e4b61c43ced25b70cd045fd" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -ldflags '-extldflags \"-static\"' -o /build/helper ." shape="box"];
  "sha256:5154fd08d0f466a6bd42206283612f5ab2874d25569276121eee7eccc346c2df" [label="copy{src=/build/helper, dest=/helper}" shape="note"];
  "sha256:1aa20233c8fb5009c053e07d10f09407b5224b7763d1dc4424ccea2d863feb19" [label="sha256:1aa20233c8fb5009c053e07d10f09407b5224b7763d1dc4424ccea2d863feb19" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:900894ab2f5a28750df4c92920c87d2ada1902300aecd7d052259290ebb37d99" [label=""];
  "sha256:900894ab2f5a28750df4c92920c87d2ada1902300aecd7d052259290ebb37d99" -> "sha256:250c217274fff6efcc25d24611845d041d2be4926bc307909dc4ac36eb145ee0" [label=""];
  "sha256:250c217274fff6efcc25d24611845d041d2be4926bc307909dc4ac36eb145ee0" -> "sha256:1af5c67510ddb63a97926038dc038fb2376c5a55084e9c90fb86d4c7d7c6ef53" [label=""];
  "sha256:33b65cd4fdc86857070eef3401f26eef94f25d0b1e0e8fe6fbcaadc2146a59e4" -> "sha256:1af5c67510ddb63a97926038dc038fb2376c5a55084e9c90fb86d4c7d7c6ef53" [label=""];
  "sha256:1af5c67510ddb63a97926038dc038fb2376c5a55084e9c90fb86d4c7d7c6ef53" -> "sha256:90361add17afa1d63d1d20b964a8828c11fec7cf235232b60cba0cb3a4f9bbc2" [label=""];
  "sha256:90361add17afa1d63d1d20b964a8828c11fec7cf235232b60cba0cb3a4f9bbc2" -> "sha256:c11a637944aed49c10eb209fdd4dc1a043a6a8010d5ea7f06a33b5c403697c4c" [label=""];
  "sha256:c11a637944aed49c10eb209fdd4dc1a043a6a8010d5ea7f06a33b5c403697c4c" -> "sha256:c0035d69e644cec3d9e8aa651373e9c183f54a44fc7905d6b6daa3146ce4094b" [label=""];
  "sha256:c0035d69e644cec3d9e8aa651373e9c183f54a44fc7905d6b6daa3146ce4094b" -> "sha256:8ed314982143891483ceae51b2807dea060d6489f8f256f7108d274093238ffe" [label=""];
  "sha256:8ed314982143891483ceae51b2807dea060d6489f8f256f7108d274093238ffe" -> "sha256:722ecbe5efa86b92c88d2347981627d4f4c87dd81e4b61c43ced25b70cd045fd" [label=""];
  "sha256:722ecbe5efa86b92c88d2347981627d4f4c87dd81e4b61c43ced25b70cd045fd" -> "sha256:5154fd08d0f466a6bd42206283612f5ab2874d25569276121eee7eccc346c2df" [label=""];
  "sha256:5154fd08d0f466a6bd42206283612f5ab2874d25569276121eee7eccc346c2df" -> "sha256:1aa20233c8fb5009c053e07d10f09407b5224b7763d1dc4424ccea2d863feb19" [label=""];
}

