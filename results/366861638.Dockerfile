[app/sources/366861638.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:8f8a5a2816d141577d635e09ba511af75739924963a61f4364957c8ec62f0290" [label="/bin/sh -c set -ex;   apk add --update   ca-certificates   curl   git   jq   openssh-client   perl   ruby   ruby-json   ruby-bundler   ;   rm -rf /var/cache/apk/*;" shape="box"];
  "sha256:522d8de0e6982ff7ca2330444315cc360d895d2f6e3e28c44b038f03e46ec1ee" [label="local://context" shape="ellipse"];
  "sha256:7178917bf16a670738e80ec07f7e0a88b588b7d8ab8cf85df68eb6ce46fc36dc" [label="copy{src=/Gemfile, dest=/opt/resource/},copy{src=/Gemfile.lock, dest=/opt/resource/}" shape="note"];
  "sha256:20c2985eab44978b91f7fde99d59d66822dd0823451cb0c979b10e5c492e9333" [label="/bin/sh -c cd /opt/resource && bundle install --without test development" shape="box"];
  "sha256:283db08167c1a74abd68fa4700c292e58ca1d2952e3ec8db793517f7601bdd73" [label="copy{src=/assets, dest=/opt/resource/}" shape="note"];
  "sha256:f10bfb4ab24cd943015bd0ff6f8c794b99eec3b5a15b3b8c0ed97fc46e0af58d" [label="/bin/sh -c chmod +x /opt/resource/*" shape="box"];
  "sha256:e8f544a8b93920aa9e0ef931d7129a00cd845ae6a9327c1e153d93aa267ddaec" [label="copy{src=/scripts/install_git_lfs.sh, dest=/install_git_lfs.sh}" shape="note"];
  "sha256:c5d4776a88c968567d9d0b7030bc953012afedbfb4e41df791691a8510559af5" [label="/bin/sh -c ./install_git_lfs.sh" shape="box"];
  "sha256:0e599a7eb2c3f2e00adaea1ac166a5853e25c1606016825ab7db37bd8d037653" [label="sha256:0e599a7eb2c3f2e00adaea1ac166a5853e25c1606016825ab7db37bd8d037653" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:8f8a5a2816d141577d635e09ba511af75739924963a61f4364957c8ec62f0290" [label=""];
  "sha256:8f8a5a2816d141577d635e09ba511af75739924963a61f4364957c8ec62f0290" -> "sha256:7178917bf16a670738e80ec07f7e0a88b588b7d8ab8cf85df68eb6ce46fc36dc" [label=""];
  "sha256:522d8de0e6982ff7ca2330444315cc360d895d2f6e3e28c44b038f03e46ec1ee" -> "sha256:7178917bf16a670738e80ec07f7e0a88b588b7d8ab8cf85df68eb6ce46fc36dc" [label=""];
  "sha256:7178917bf16a670738e80ec07f7e0a88b588b7d8ab8cf85df68eb6ce46fc36dc" -> "sha256:20c2985eab44978b91f7fde99d59d66822dd0823451cb0c979b10e5c492e9333" [label=""];
  "sha256:20c2985eab44978b91f7fde99d59d66822dd0823451cb0c979b10e5c492e9333" -> "sha256:283db08167c1a74abd68fa4700c292e58ca1d2952e3ec8db793517f7601bdd73" [label=""];
  "sha256:522d8de0e6982ff7ca2330444315cc360d895d2f6e3e28c44b038f03e46ec1ee" -> "sha256:283db08167c1a74abd68fa4700c292e58ca1d2952e3ec8db793517f7601bdd73" [label=""];
  "sha256:283db08167c1a74abd68fa4700c292e58ca1d2952e3ec8db793517f7601bdd73" -> "sha256:f10bfb4ab24cd943015bd0ff6f8c794b99eec3b5a15b3b8c0ed97fc46e0af58d" [label=""];
  "sha256:f10bfb4ab24cd943015bd0ff6f8c794b99eec3b5a15b3b8c0ed97fc46e0af58d" -> "sha256:e8f544a8b93920aa9e0ef931d7129a00cd845ae6a9327c1e153d93aa267ddaec" [label=""];
  "sha256:522d8de0e6982ff7ca2330444315cc360d895d2f6e3e28c44b038f03e46ec1ee" -> "sha256:e8f544a8b93920aa9e0ef931d7129a00cd845ae6a9327c1e153d93aa267ddaec" [label=""];
  "sha256:e8f544a8b93920aa9e0ef931d7129a00cd845ae6a9327c1e153d93aa267ddaec" -> "sha256:c5d4776a88c968567d9d0b7030bc953012afedbfb4e41df791691a8510559af5" [label=""];
  "sha256:c5d4776a88c968567d9d0b7030bc953012afedbfb4e41df791691a8510559af5" -> "sha256:0e599a7eb2c3f2e00adaea1ac166a5853e25c1606016825ab7db37bd8d037653" [label=""];
}

