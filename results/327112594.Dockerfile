[app/sources/327112594.Dockerfile]
digraph {
  "sha256:f369807abee076adce486e19fa9c23d8d0f8d97b41a0499afc0bf1f15dc764ce" [label="local://context" shape="ellipse"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:042c1d4ddcb71c3cec897b3d03f1f57ec51fb1257dcde65bd8988d0acbfc7790" [label="mkdir{path=/app}" shape="note"];
  "sha256:75771593154e45c7cb28483e33c63ee315f80b580ee88a0ff533495fee877c7b" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:0cae87d06b7032f6913f36940be32c40a3ceb216e31c01dbff425d9a84b53c52" [label="/bin/sh -c npm install" shape="box"];
  "sha256:2641124c97d34c6c4072abd20394de14412c5cb5a61083e902e46acc5107bc92" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:76e41c9d8580bd507b1e3124bc1c304b535057f5f6fd6c6bdbd5788b5ef34e8e" [label="sha256:76e41c9d8580bd507b1e3124bc1c304b535057f5f6fd6c6bdbd5788b5ef34e8e" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:042c1d4ddcb71c3cec897b3d03f1f57ec51fb1257dcde65bd8988d0acbfc7790" [label=""];
  "sha256:042c1d4ddcb71c3cec897b3d03f1f57ec51fb1257dcde65bd8988d0acbfc7790" -> "sha256:75771593154e45c7cb28483e33c63ee315f80b580ee88a0ff533495fee877c7b" [label=""];
  "sha256:f369807abee076adce486e19fa9c23d8d0f8d97b41a0499afc0bf1f15dc764ce" -> "sha256:75771593154e45c7cb28483e33c63ee315f80b580ee88a0ff533495fee877c7b" [label=""];
  "sha256:75771593154e45c7cb28483e33c63ee315f80b580ee88a0ff533495fee877c7b" -> "sha256:0cae87d06b7032f6913f36940be32c40a3ceb216e31c01dbff425d9a84b53c52" [label=""];
  "sha256:0cae87d06b7032f6913f36940be32c40a3ceb216e31c01dbff425d9a84b53c52" -> "sha256:2641124c97d34c6c4072abd20394de14412c5cb5a61083e902e46acc5107bc92" [label=""];
  "sha256:f369807abee076adce486e19fa9c23d8d0f8d97b41a0499afc0bf1f15dc764ce" -> "sha256:2641124c97d34c6c4072abd20394de14412c5cb5a61083e902e46acc5107bc92" [label=""];
  "sha256:2641124c97d34c6c4072abd20394de14412c5cb5a61083e902e46acc5107bc92" -> "sha256:76e41c9d8580bd507b1e3124bc1c304b535057f5f6fd6c6bdbd5788b5ef34e8e" [label=""];
}

