[app/sources/457613233.Dockerfile]
digraph {
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" [label="docker-image://docker.io/library/node:0.10" shape="ellipse"];
  "sha256:9c4425ee9468bdafed7ccaa70b3dddc413b150203b1615f883fb44956980fcfc" [label="/bin/sh -c mkdir app" shape="box"];
  "sha256:a2a4d8e568f53e68781fc86ee44c25186748fa70386e47dd996ea9bffece878b" [label="local://context" shape="ellipse"];
  "sha256:569fdca7113eedacc0d020cdf8e5fb079b1f4f0185bfeb27fbe236a56a0a6f09" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:17a6a493cc1cb7aab059dd1b545ab47c9f91e470d8994fd35a11fb56d91cc514" [label="mkdir{path=/app}" shape="note"];
  "sha256:bc2f217262f914c43751f4befccde05a77bfb1018491514e2ea796f8a01616cf" [label="/bin/sh -c npm install" shape="box"];
  "sha256:3b704eb46b400ffffef660419ab90cd8a03b086396249a3d06a702137085f6de" [label="/bin/sh -c npm install webpack@\"1.7\"" shape="box"];
  "sha256:aeeb34ed672b323852b28f8d15d25f8fb90a31a3d57d3e767ab32864774cd4cf" [label="sha256:aeeb34ed672b323852b28f8d15d25f8fb90a31a3d57d3e767ab32864774cd4cf" shape="plaintext"];
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" -> "sha256:9c4425ee9468bdafed7ccaa70b3dddc413b150203b1615f883fb44956980fcfc" [label=""];
  "sha256:9c4425ee9468bdafed7ccaa70b3dddc413b150203b1615f883fb44956980fcfc" -> "sha256:569fdca7113eedacc0d020cdf8e5fb079b1f4f0185bfeb27fbe236a56a0a6f09" [label=""];
  "sha256:a2a4d8e568f53e68781fc86ee44c25186748fa70386e47dd996ea9bffece878b" -> "sha256:569fdca7113eedacc0d020cdf8e5fb079b1f4f0185bfeb27fbe236a56a0a6f09" [label=""];
  "sha256:569fdca7113eedacc0d020cdf8e5fb079b1f4f0185bfeb27fbe236a56a0a6f09" -> "sha256:17a6a493cc1cb7aab059dd1b545ab47c9f91e470d8994fd35a11fb56d91cc514" [label=""];
  "sha256:17a6a493cc1cb7aab059dd1b545ab47c9f91e470d8994fd35a11fb56d91cc514" -> "sha256:bc2f217262f914c43751f4befccde05a77bfb1018491514e2ea796f8a01616cf" [label=""];
  "sha256:bc2f217262f914c43751f4befccde05a77bfb1018491514e2ea796f8a01616cf" -> "sha256:3b704eb46b400ffffef660419ab90cd8a03b086396249a3d06a702137085f6de" [label=""];
  "sha256:3b704eb46b400ffffef660419ab90cd8a03b086396249a3d06a702137085f6de" -> "sha256:aeeb34ed672b323852b28f8d15d25f8fb90a31a3d57d3e767ab32864774cd4cf" [label=""];
}

