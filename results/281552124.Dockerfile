[app/sources/281552124.Dockerfile]
digraph {
  "sha256:bb6b04e789abc09047e8588c14f6509b7f35510a96b59871c06bb922123848fd" [label="docker-image://docker.io/library/golang:1.9@sha256:8b5968585131604a92af02f5690713efadf029cc8dad53f79280b87a80eb1354" shape="ellipse"];
  "sha256:c878b4cef29a3f8f9677ae248e7c14edadf924fb1e66a9d33b59cca0ca19cdde" [label="/bin/sh -c go get -u github.com/golang/dep/cmd/dep" shape="box"];
  "sha256:2936a458ca24a03b64d964401427a67c0dfe1b0938e180378cb7beac646f98eb" [label="/bin/sh -c go get -u github.com/alecthomas/gometalinter" shape="box"];
  "sha256:455f546a91a3b5e287de1e6ab61d3e687e2ce214386eb3c910588c59c0506255" [label="/bin/sh -c gometalinter --install" shape="box"];
  "sha256:13b060c898df5da60f2b9423179bcaa32cb127c339df2caeb3bca054acf06cfc" [label="/bin/sh -c go get -u github.com/golang/mock/gomock" shape="box"];
  "sha256:65b254aa1c13870a61bbe6f68bee5f8313761b4fc54d90228fd7f4cc9886dd0c" [label="/bin/sh -c go get -u github.com/golang/mock/mockgen" shape="box"];
  "sha256:b389448ec163db98afcfd00a88c3fa77eb61718244f2932457ce942dde44c658" [label="mkdir{path=/go/src/github.com/MYOB-Technology/ops-kube-db-operator}" shape="note"];
  "sha256:7c314527fcbff9e0c1f7553e07267d87b3dd9b9e80e804cdb8b9df50e1a79dd6" [label="local://context" shape="ellipse"];
  "sha256:f791d1b2b223cd0425e07ee485120debeb1b7d67299c11a99ef3af9b626874db" [label="copy{src=/Gopkg.lock, dest=/go/src/github.com/MYOB-Technology/ops-kube-db-operator/},copy{src=/Gopkg.toml, dest=/go/src/github.com/MYOB-Technology/ops-kube-db-operator/}" shape="note"];
  "sha256:46d795abb2d0847ba458e70010a00fdb23c98fd7906ffa25325f7bf634f51208" [label="/bin/sh -c dep ensure -vendor-only" shape="box"];
  "sha256:9d55b715f62064272916cbca0995fff052add797fb13d0e6df7d9ddceefe328f" [label="copy{src=/main.go, dest=/go/src/github.com/MYOB-Technology/ops-kube-db-operator/}" shape="note"];
  "sha256:f66c6a028cdb9e8ab08250d773942c0aab8828388e22d8920dc30d533fd79a32" [label="copy{src=/pkg, dest=/go/src/github.com/MYOB-Technology/ops-kube-db-operator/pkg}" shape="note"];
  "sha256:ed8ca6eba9026ca9cfbcf5c7cf6fe442da028e5d902ccd4b4e08f389065be212" [label="/bin/sh -c go install -v" shape="box"];
  "sha256:506bfce7142c8a8d4e224725c76f0e4aefb8adba925ed8762d86796f273a5d69" [label="copy{src=/go/bin/dep, dest=/go/bin/dep}" shape="note"];
  "sha256:3d2604e186f70a1a760c1b9181d90d716646835b425009a641c1cef4827c6a8d" [label="mkdir{path=/go/src/github.com/MYOB-Technology/ops-kube-db-operator}" shape="note"];
  "sha256:80d98dd6c4251bfeff5033230f9ea85b0cf7c616c34e983d5c4f015856df8bf5" [label="copy{src=/, dest=/go/src/github.com/MYOB-Technology/ops-kube-db-operator}" shape="note"];
  "sha256:70552dbdcde326b73cdced38fed4546f3392fc4e69e910e5baab0896755f4e01" [label="/bin/sh -c dep ensure -v" shape="box"];
  "sha256:ff01e60c3b4df7eccd2bf768d841bbdbbfc890af9c0b581ba8700148aa929ec6" [label="/bin/sh -c CGO_ENABLED=0 go build -o /build/postgres-operator -ldflags \"-X main.version=$VERSION\" -v" shape="box"];
  "sha256:33e491982e5ab2fa7b9f1637670dc5a7b56086be96041f6f1646ab1bdf8c5d7a" [label="copy{src=/build/postgres-operator, dest=/app}" shape="note"];
  "sha256:942f34150cb89e3d58c1ceee134bd177a5fcde9810ab9fb02100a39ef963bb56" [label="sha256:942f34150cb89e3d58c1ceee134bd177a5fcde9810ab9fb02100a39ef963bb56" shape="plaintext"];
  "sha256:bb6b04e789abc09047e8588c14f6509b7f35510a96b59871c06bb922123848fd" -> "sha256:c878b4cef29a3f8f9677ae248e7c14edadf924fb1e66a9d33b59cca0ca19cdde" [label=""];
  "sha256:c878b4cef29a3f8f9677ae248e7c14edadf924fb1e66a9d33b59cca0ca19cdde" -> "sha256:2936a458ca24a03b64d964401427a67c0dfe1b0938e180378cb7beac646f98eb" [label=""];
  "sha256:2936a458ca24a03b64d964401427a67c0dfe1b0938e180378cb7beac646f98eb" -> "sha256:455f546a91a3b5e287de1e6ab61d3e687e2ce214386eb3c910588c59c0506255" [label=""];
  "sha256:455f546a91a3b5e287de1e6ab61d3e687e2ce214386eb3c910588c59c0506255" -> "sha256:13b060c898df5da60f2b9423179bcaa32cb127c339df2caeb3bca054acf06cfc" [label=""];
  "sha256:13b060c898df5da60f2b9423179bcaa32cb127c339df2caeb3bca054acf06cfc" -> "sha256:65b254aa1c13870a61bbe6f68bee5f8313761b4fc54d90228fd7f4cc9886dd0c" [label=""];
  "sha256:65b254aa1c13870a61bbe6f68bee5f8313761b4fc54d90228fd7f4cc9886dd0c" -> "sha256:b389448ec163db98afcfd00a88c3fa77eb61718244f2932457ce942dde44c658" [label=""];
  "sha256:b389448ec163db98afcfd00a88c3fa77eb61718244f2932457ce942dde44c658" -> "sha256:f791d1b2b223cd0425e07ee485120debeb1b7d67299c11a99ef3af9b626874db" [label=""];
  "sha256:7c314527fcbff9e0c1f7553e07267d87b3dd9b9e80e804cdb8b9df50e1a79dd6" -> "sha256:f791d1b2b223cd0425e07ee485120debeb1b7d67299c11a99ef3af9b626874db" [label=""];
  "sha256:f791d1b2b223cd0425e07ee485120debeb1b7d67299c11a99ef3af9b626874db" -> "sha256:46d795abb2d0847ba458e70010a00fdb23c98fd7906ffa25325f7bf634f51208" [label=""];
  "sha256:46d795abb2d0847ba458e70010a00fdb23c98fd7906ffa25325f7bf634f51208" -> "sha256:9d55b715f62064272916cbca0995fff052add797fb13d0e6df7d9ddceefe328f" [label=""];
  "sha256:7c314527fcbff9e0c1f7553e07267d87b3dd9b9e80e804cdb8b9df50e1a79dd6" -> "sha256:9d55b715f62064272916cbca0995fff052add797fb13d0e6df7d9ddceefe328f" [label=""];
  "sha256:9d55b715f62064272916cbca0995fff052add797fb13d0e6df7d9ddceefe328f" -> "sha256:f66c6a028cdb9e8ab08250d773942c0aab8828388e22d8920dc30d533fd79a32" [label=""];
  "sha256:7c314527fcbff9e0c1f7553e07267d87b3dd9b9e80e804cdb8b9df50e1a79dd6" -> "sha256:f66c6a028cdb9e8ab08250d773942c0aab8828388e22d8920dc30d533fd79a32" [label=""];
  "sha256:f66c6a028cdb9e8ab08250d773942c0aab8828388e22d8920dc30d533fd79a32" -> "sha256:ed8ca6eba9026ca9cfbcf5c7cf6fe442da028e5d902ccd4b4e08f389065be212" [label=""];
  "sha256:bb6b04e789abc09047e8588c14f6509b7f35510a96b59871c06bb922123848fd" -> "sha256:506bfce7142c8a8d4e224725c76f0e4aefb8adba925ed8762d86796f273a5d69" [label=""];
  "sha256:ed8ca6eba9026ca9cfbcf5c7cf6fe442da028e5d902ccd4b4e08f389065be212" -> "sha256:506bfce7142c8a8d4e224725c76f0e4aefb8adba925ed8762d86796f273a5d69" [label=""];
  "sha256:506bfce7142c8a8d4e224725c76f0e4aefb8adba925ed8762d86796f273a5d69" -> "sha256:3d2604e186f70a1a760c1b9181d90d716646835b425009a641c1cef4827c6a8d" [label=""];
  "sha256:3d2604e186f70a1a760c1b9181d90d716646835b425009a641c1cef4827c6a8d" -> "sha256:80d98dd6c4251bfeff5033230f9ea85b0cf7c616c34e983d5c4f015856df8bf5" [label=""];
  "sha256:7c314527fcbff9e0c1f7553e07267d87b3dd9b9e80e804cdb8b9df50e1a79dd6" -> "sha256:80d98dd6c4251bfeff5033230f9ea85b0cf7c616c34e983d5c4f015856df8bf5" [label=""];
  "sha256:80d98dd6c4251bfeff5033230f9ea85b0cf7c616c34e983d5c4f015856df8bf5" -> "sha256:70552dbdcde326b73cdced38fed4546f3392fc4e69e910e5baab0896755f4e01" [label=""];
  "sha256:70552dbdcde326b73cdced38fed4546f3392fc4e69e910e5baab0896755f4e01" -> "sha256:ff01e60c3b4df7eccd2bf768d841bbdbbfc890af9c0b581ba8700148aa929ec6" [label=""];
  "sha256:ff01e60c3b4df7eccd2bf768d841bbdbbfc890af9c0b581ba8700148aa929ec6" -> "sha256:33e491982e5ab2fa7b9f1637670dc5a7b56086be96041f6f1646ab1bdf8c5d7a" [label=""];
  "sha256:33e491982e5ab2fa7b9f1637670dc5a7b56086be96041f6f1646ab1bdf8c5d7a" -> "sha256:942f34150cb89e3d58c1ceee134bd177a5fcde9810ab9fb02100a39ef963bb56" [label=""];
}

