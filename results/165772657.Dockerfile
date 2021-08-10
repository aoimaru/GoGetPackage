[app/sources/165772657.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:7987159fe7501e0cc7dfcce4b3efedfc879d8a676e820cbc6bfb06669510a769" [label="/bin/sh -c apt-get update && apt-get install -y \tapt-transport-https \tca-certificates \tcurl     --no-install-recommends     && rm -rf /var/lib/apt/lists/* \t&& curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \t&& echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | tee /etc/apt/sources.list.d/yarn.list" shape="box"];
  "sha256:ca1e39b735c67962945801d69a0097815fca08be6877506ca68dbb5f5a65f7af" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash -" shape="box"];
  "sha256:d968bebdb6cedf280c8c6a463e5534a9b4765581e278a0f472f009cbfbeee3fe" [label="/bin/sh -c apt-get update && apt-get install -y \tgcc \tgit \tg++ \tmake \tnodejs \tpkgconf \tpython \tyarn \tzip     --no-install-recommends     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:820d18e09c3c024bbb85b071d59d0db07731537084dd464a61a9297e83733d4d" [label="/bin/sh -c go get github.com/hashicorp/nomad" shape="box"];
  "sha256:3ab76cd6a35108d97d6dff1726d58218c4c03028e3cfa36363ad109dd175259b" [label="mkdir{path=/go/src/github.com/hashicorp/nomad}" shape="note"];
  "sha256:9c876beb8b0357836f2ba9bdfbd63b01d8bcb01be84c018d5048e4b37ad39a2d" [label="/bin/sh -c git checkout \"${NOMAD_VERSION}\"" shape="box"];
  "sha256:5fbbed68cf02d7887bbce1c1b63bf503f09837975da0fc3d36928f9f353237fa" [label="/bin/sh -c set -x \t&& make bootstrap ember-dist static-assets \t&& CGO_ENABLED=1 GOOS=linux GOARCH=amd64 \t\tgo build \t\t-ldflags \"-X github.com/hashicorp/nomad/version.GitCommit=$(git rev-parse HEAD) -extldflags -static \" \t\t-tags \"ui release\" \t\t-o /usr/bin/nomad" shape="box"];
  "sha256:f64ae0a15d4bac1854cd3d1d823eb20c4dd7a4e74b249f656a9c3c018b832565" [label="copy{src=/usr/bin/nomad, dest=/usr/bin/nomad}" shape="note"];
  "sha256:203c1db1a3876f4620824c906fe2718da70fd084fdd33db8cfc62459ce44dc27" [label="copy{src=/etc/ssl/certs, dest=/etc/ssl/certs}" shape="note"];
  "sha256:b7db9461066d3e97cd26e3b2bc39dc1b4fe26fa7bb1f44ba6930ec0351f8464e" [label="sha256:b7db9461066d3e97cd26e3b2bc39dc1b4fe26fa7bb1f44ba6930ec0351f8464e" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:7987159fe7501e0cc7dfcce4b3efedfc879d8a676e820cbc6bfb06669510a769" [label=""];
  "sha256:7987159fe7501e0cc7dfcce4b3efedfc879d8a676e820cbc6bfb06669510a769" -> "sha256:ca1e39b735c67962945801d69a0097815fca08be6877506ca68dbb5f5a65f7af" [label=""];
  "sha256:ca1e39b735c67962945801d69a0097815fca08be6877506ca68dbb5f5a65f7af" -> "sha256:d968bebdb6cedf280c8c6a463e5534a9b4765581e278a0f472f009cbfbeee3fe" [label=""];
  "sha256:d968bebdb6cedf280c8c6a463e5534a9b4765581e278a0f472f009cbfbeee3fe" -> "sha256:820d18e09c3c024bbb85b071d59d0db07731537084dd464a61a9297e83733d4d" [label=""];
  "sha256:820d18e09c3c024bbb85b071d59d0db07731537084dd464a61a9297e83733d4d" -> "sha256:3ab76cd6a35108d97d6dff1726d58218c4c03028e3cfa36363ad109dd175259b" [label=""];
  "sha256:3ab76cd6a35108d97d6dff1726d58218c4c03028e3cfa36363ad109dd175259b" -> "sha256:9c876beb8b0357836f2ba9bdfbd63b01d8bcb01be84c018d5048e4b37ad39a2d" [label=""];
  "sha256:9c876beb8b0357836f2ba9bdfbd63b01d8bcb01be84c018d5048e4b37ad39a2d" -> "sha256:5fbbed68cf02d7887bbce1c1b63bf503f09837975da0fc3d36928f9f353237fa" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:f64ae0a15d4bac1854cd3d1d823eb20c4dd7a4e74b249f656a9c3c018b832565" [label=""];
  "sha256:5fbbed68cf02d7887bbce1c1b63bf503f09837975da0fc3d36928f9f353237fa" -> "sha256:f64ae0a15d4bac1854cd3d1d823eb20c4dd7a4e74b249f656a9c3c018b832565" [label=""];
  "sha256:f64ae0a15d4bac1854cd3d1d823eb20c4dd7a4e74b249f656a9c3c018b832565" -> "sha256:203c1db1a3876f4620824c906fe2718da70fd084fdd33db8cfc62459ce44dc27" [label=""];
  "sha256:5fbbed68cf02d7887bbce1c1b63bf503f09837975da0fc3d36928f9f353237fa" -> "sha256:203c1db1a3876f4620824c906fe2718da70fd084fdd33db8cfc62459ce44dc27" [label=""];
  "sha256:203c1db1a3876f4620824c906fe2718da70fd084fdd33db8cfc62459ce44dc27" -> "sha256:b7db9461066d3e97cd26e3b2bc39dc1b4fe26fa7bb1f44ba6930ec0351f8464e" [label=""];
}

