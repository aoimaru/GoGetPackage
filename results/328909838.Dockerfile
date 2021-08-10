[app/sources/328909838.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:05fec8df6b533fe613dff5701d474ba565a40477e8b88a70e8cdb881ae2b2a6b" [label="/bin/sh -c apt-get -qy update" shape="box"];
  "sha256:eddc5de436fd66d684de14f59daf0c8e95ef0f32fe1d69027fa13053558b5c74" [label="/bin/sh -c apt-get -y install golang-go" shape="box"];
  "sha256:d3d965191bd4cf0c0c2a3708a7f1250500e792be718331f54e174bbf929d0aff" [label="/bin/sh -c apt-get -y install git" shape="box"];
  "sha256:1e0a5b7d18aef69fa7b9f87e8dcb627ca0d859e1b0e0fcbef50580b3df743795" [label="/bin/sh -c apt-get -y install mercurial subversion" shape="box"];
  "sha256:82af36147b92abf12cb1ff9f6787ac082f4afe614e55fb4ca0f7c1433686562e" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/ActiveState/tail/" shape="box"];
  "sha256:dae3e81b65cd10bf97396b80b301247d31f5b6054ac88dd38e96416203c38a19" [label="local://context" shape="ellipse"];
  "sha256:dad86735875e73b1584cd0a8e9dbf1a12ac9230967c4416206770750986d981e" [label="copy{src=/, dest=/go/src/github.com/ActiveState/tail/}" shape="note"];
  "sha256:162fcc589c7236528fb7f02c09276ea786e91540705ecd3b1a594be03b2bd8fe" [label="/bin/sh -c go get -v github.com/ActiveState/tail" shape="box"];
  "sha256:0e0b9e880e0682842b86b90ac5a9007c526e6833b4dbe0128cda0876edd2fafa" [label="/bin/sh -c go test -v github.com/ActiveState/tail" shape="box"];
  "sha256:96b787f2ecf8f77f417cea8c94ceeab21186edc7862b7d9c02f91a0fb2925345" [label="/bin/sh -c go install -v github.com/ActiveState/tail" shape="box"];
  "sha256:ab0af434bf76b2aa05d3ae696f5442fc2c5d7e9454d2a5ff97b42643427ebc70" [label="/bin/sh -c go install -v github.com/ActiveState/tail/cmd/gotail" shape="box"];
  "sha256:98fad0bc30238520ba66be5f771186aa81c024678c16cc3a3f1a8452099354da" [label="/bin/sh -c $GOPATH/bin/gotail -h || true" shape="box"];
  "sha256:2d6a810db11516e5b110b1f748e4c8ae4ddc650b5f53b0dfc241dc22a5d393b8" [label="sha256:2d6a810db11516e5b110b1f748e4c8ae4ddc650b5f53b0dfc241dc22a5d393b8" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:05fec8df6b533fe613dff5701d474ba565a40477e8b88a70e8cdb881ae2b2a6b" [label=""];
  "sha256:05fec8df6b533fe613dff5701d474ba565a40477e8b88a70e8cdb881ae2b2a6b" -> "sha256:eddc5de436fd66d684de14f59daf0c8e95ef0f32fe1d69027fa13053558b5c74" [label=""];
  "sha256:eddc5de436fd66d684de14f59daf0c8e95ef0f32fe1d69027fa13053558b5c74" -> "sha256:d3d965191bd4cf0c0c2a3708a7f1250500e792be718331f54e174bbf929d0aff" [label=""];
  "sha256:d3d965191bd4cf0c0c2a3708a7f1250500e792be718331f54e174bbf929d0aff" -> "sha256:1e0a5b7d18aef69fa7b9f87e8dcb627ca0d859e1b0e0fcbef50580b3df743795" [label=""];
  "sha256:1e0a5b7d18aef69fa7b9f87e8dcb627ca0d859e1b0e0fcbef50580b3df743795" -> "sha256:82af36147b92abf12cb1ff9f6787ac082f4afe614e55fb4ca0f7c1433686562e" [label=""];
  "sha256:82af36147b92abf12cb1ff9f6787ac082f4afe614e55fb4ca0f7c1433686562e" -> "sha256:dad86735875e73b1584cd0a8e9dbf1a12ac9230967c4416206770750986d981e" [label=""];
  "sha256:dae3e81b65cd10bf97396b80b301247d31f5b6054ac88dd38e96416203c38a19" -> "sha256:dad86735875e73b1584cd0a8e9dbf1a12ac9230967c4416206770750986d981e" [label=""];
  "sha256:dad86735875e73b1584cd0a8e9dbf1a12ac9230967c4416206770750986d981e" -> "sha256:162fcc589c7236528fb7f02c09276ea786e91540705ecd3b1a594be03b2bd8fe" [label=""];
  "sha256:162fcc589c7236528fb7f02c09276ea786e91540705ecd3b1a594be03b2bd8fe" -> "sha256:0e0b9e880e0682842b86b90ac5a9007c526e6833b4dbe0128cda0876edd2fafa" [label=""];
  "sha256:0e0b9e880e0682842b86b90ac5a9007c526e6833b4dbe0128cda0876edd2fafa" -> "sha256:96b787f2ecf8f77f417cea8c94ceeab21186edc7862b7d9c02f91a0fb2925345" [label=""];
  "sha256:96b787f2ecf8f77f417cea8c94ceeab21186edc7862b7d9c02f91a0fb2925345" -> "sha256:ab0af434bf76b2aa05d3ae696f5442fc2c5d7e9454d2a5ff97b42643427ebc70" [label=""];
  "sha256:ab0af434bf76b2aa05d3ae696f5442fc2c5d7e9454d2a5ff97b42643427ebc70" -> "sha256:98fad0bc30238520ba66be5f771186aa81c024678c16cc3a3f1a8452099354da" [label=""];
  "sha256:98fad0bc30238520ba66be5f771186aa81c024678c16cc3a3f1a8452099354da" -> "sha256:2d6a810db11516e5b110b1f748e4c8ae4ddc650b5f53b0dfc241dc22a5d393b8" [label=""];
}

