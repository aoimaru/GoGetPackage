[app/sources/344671175.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:9262f19735713480b5c85f4ec1836711bc08b6320d38bc3f300f57d08dfe64a1" [label="local://context" shape="ellipse"];
  "sha256:787b576b99af841cb5eac118eaad41418861190acd978efaa76a8aed23a70959" [label="copy{src=/, dest=/go/src/rank}" shape="note"];
  "sha256:fe3d3e4b22f13201f33569300e6029df86df2a1f71ed52c01e8ca4630de14aeb" [label="/bin/sh -c go install rank" shape="box"];
  "sha256:3d1c701fae9c9f731973166103f0b7deb9f613c711ba442cc5bbd4c25f535c34" [label="/bin/sh -c mkdir /data" shape="box"];
  "sha256:a4f43196eebe174914d6fe9e6144749232718ceb4b349af13d145f2d166fa14d" [label="sha256:a4f43196eebe174914d6fe9e6144749232718ceb4b349af13d145f2d166fa14d" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:787b576b99af841cb5eac118eaad41418861190acd978efaa76a8aed23a70959" [label=""];
  "sha256:9262f19735713480b5c85f4ec1836711bc08b6320d38bc3f300f57d08dfe64a1" -> "sha256:787b576b99af841cb5eac118eaad41418861190acd978efaa76a8aed23a70959" [label=""];
  "sha256:787b576b99af841cb5eac118eaad41418861190acd978efaa76a8aed23a70959" -> "sha256:fe3d3e4b22f13201f33569300e6029df86df2a1f71ed52c01e8ca4630de14aeb" [label=""];
  "sha256:fe3d3e4b22f13201f33569300e6029df86df2a1f71ed52c01e8ca4630de14aeb" -> "sha256:3d1c701fae9c9f731973166103f0b7deb9f613c711ba442cc5bbd4c25f535c34" [label=""];
  "sha256:3d1c701fae9c9f731973166103f0b7deb9f613c711ba442cc5bbd4c25f535c34" -> "sha256:a4f43196eebe174914d6fe9e6144749232718ceb4b349af13d145f2d166fa14d" [label=""];
}

