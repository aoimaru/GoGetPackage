[app/sources/465535680.Dockerfile]
digraph {
  "sha256:7005c74a56cab1082865f3b79a1c7b5520df2cc237b7542594a945d7c6798739" [label="local://context" shape="ellipse"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:6b041a86711cc4668fe8de810e2b5fe7bb15e36eade6785709f8b6b83397a1e7" [label="/bin/sh -c apt-get update && apt-get install -y --fix-missing vim emacs-nox less telnet" shape="box"];
  "sha256:581735fc5069d0207175a744104ebf47cb8b9774a0e2f2a35d23c2dc863782a9" [label="mkdir{path=/go/src}" shape="note"];
  "sha256:ff00b96627aeede7188a3185add362a0868c14199f71b1dd6f4fa099e62ff6fa" [label="copy{src=/src, dest=/go/src/}" shape="note"];
  "sha256:2d935befbb1ae79b71887df5a437c82e988f504cd44ad2406372d0da1e9411fd" [label="copy{src=/start.sh, dest=/go/src/}" shape="note"];
  "sha256:766a66768eb0332d95f47290b117113616bc32d9e12b3747a373d0b7f5f6c334" [label="mkdir{path=/go/src/monitor}" shape="note"];
  "sha256:d1de7120c7540a8dd08d5b171c1bab5a4b9f3bcd1f0cf0148c9c30d458096e96" [label="/bin/sh -c go-wrapper download monitor   # \"go get -d -v ./...\"" shape="box"];
  "sha256:65a6f3cd8b1e8d1a31ebc0ba4c798d6830460d5bc2facd357f8b3506a5090d6f" [label="/bin/sh -c go-wrapper install monitor   # \"go install -v ./...\"" shape="box"];
  "sha256:5637a4da055152e3f88abd85466f73d4c4cd432591148998220a539e00e400c8" [label="mkdir{path=/go/src}" shape="note"];
  "sha256:90913b69a91c30b62aaba1de7e69f5b97e30394e8297a286950ed934dc055049" [label="sha256:90913b69a91c30b62aaba1de7e69f5b97e30394e8297a286950ed934dc055049" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:6b041a86711cc4668fe8de810e2b5fe7bb15e36eade6785709f8b6b83397a1e7" [label=""];
  "sha256:6b041a86711cc4668fe8de810e2b5fe7bb15e36eade6785709f8b6b83397a1e7" -> "sha256:581735fc5069d0207175a744104ebf47cb8b9774a0e2f2a35d23c2dc863782a9" [label=""];
  "sha256:581735fc5069d0207175a744104ebf47cb8b9774a0e2f2a35d23c2dc863782a9" -> "sha256:ff00b96627aeede7188a3185add362a0868c14199f71b1dd6f4fa099e62ff6fa" [label=""];
  "sha256:7005c74a56cab1082865f3b79a1c7b5520df2cc237b7542594a945d7c6798739" -> "sha256:ff00b96627aeede7188a3185add362a0868c14199f71b1dd6f4fa099e62ff6fa" [label=""];
  "sha256:ff00b96627aeede7188a3185add362a0868c14199f71b1dd6f4fa099e62ff6fa" -> "sha256:2d935befbb1ae79b71887df5a437c82e988f504cd44ad2406372d0da1e9411fd" [label=""];
  "sha256:7005c74a56cab1082865f3b79a1c7b5520df2cc237b7542594a945d7c6798739" -> "sha256:2d935befbb1ae79b71887df5a437c82e988f504cd44ad2406372d0da1e9411fd" [label=""];
  "sha256:2d935befbb1ae79b71887df5a437c82e988f504cd44ad2406372d0da1e9411fd" -> "sha256:766a66768eb0332d95f47290b117113616bc32d9e12b3747a373d0b7f5f6c334" [label=""];
  "sha256:766a66768eb0332d95f47290b117113616bc32d9e12b3747a373d0b7f5f6c334" -> "sha256:d1de7120c7540a8dd08d5b171c1bab5a4b9f3bcd1f0cf0148c9c30d458096e96" [label=""];
  "sha256:d1de7120c7540a8dd08d5b171c1bab5a4b9f3bcd1f0cf0148c9c30d458096e96" -> "sha256:65a6f3cd8b1e8d1a31ebc0ba4c798d6830460d5bc2facd357f8b3506a5090d6f" [label=""];
  "sha256:65a6f3cd8b1e8d1a31ebc0ba4c798d6830460d5bc2facd357f8b3506a5090d6f" -> "sha256:5637a4da055152e3f88abd85466f73d4c4cd432591148998220a539e00e400c8" [label=""];
  "sha256:5637a4da055152e3f88abd85466f73d4c4cd432591148998220a539e00e400c8" -> "sha256:90913b69a91c30b62aaba1de7e69f5b97e30394e8297a286950ed934dc055049" [label=""];
}

