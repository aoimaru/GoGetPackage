[app/sources/335172305.Dockerfile]
digraph {
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" [label="docker-image://docker.io/library/golang:1.5" shape="ellipse"];
  "sha256:d8dc0366816168953487aba3f4e9a35578478df25dfd5a85a074e7bbd3ed637f" [label="local://context" shape="ellipse"];
  "sha256:c560165cca1e54ef4c4fcd1fea111b3a2ddc9252e6de7a2657e1724b03cf3845" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:0be63e5430bc9afe3811382f3499aca88e0e99895a05b49f577bc4cb592b0976" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:4c972d869400118cfdb99d0b3b79a0df2c32489e7958cae7d324d1f519d753c2" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:a91d06312b3fc8ef9911ebd23251f5a2c7f9da03e1fb78b1857d5a6f54547750" [label="sha256:a91d06312b3fc8ef9911ebd23251f5a2c7f9da03e1fb78b1857d5a6f54547750" shape="plaintext"];
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" -> "sha256:c560165cca1e54ef4c4fcd1fea111b3a2ddc9252e6de7a2657e1724b03cf3845" [label=""];
  "sha256:d8dc0366816168953487aba3f4e9a35578478df25dfd5a85a074e7bbd3ed637f" -> "sha256:c560165cca1e54ef4c4fcd1fea111b3a2ddc9252e6de7a2657e1724b03cf3845" [label=""];
  "sha256:c560165cca1e54ef4c4fcd1fea111b3a2ddc9252e6de7a2657e1724b03cf3845" -> "sha256:0be63e5430bc9afe3811382f3499aca88e0e99895a05b49f577bc4cb592b0976" [label=""];
  "sha256:0be63e5430bc9afe3811382f3499aca88e0e99895a05b49f577bc4cb592b0976" -> "sha256:4c972d869400118cfdb99d0b3b79a0df2c32489e7958cae7d324d1f519d753c2" [label=""];
  "sha256:4c972d869400118cfdb99d0b3b79a0df2c32489e7958cae7d324d1f519d753c2" -> "sha256:a91d06312b3fc8ef9911ebd23251f5a2c7f9da03e1fb78b1857d5a6f54547750" [label=""];
}

