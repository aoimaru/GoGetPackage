[app/sources/366117957.Dockerfile]
digraph {
  "sha256:9003f684491200045ddc209b6cb8a3b0149f5aec9c7cf4161d7c51bcd89f681c" [label="local://context" shape="ellipse"];
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" [label="docker-image://docker.io/library/golang:1.5" shape="ellipse"];
  "sha256:0c439843d62b98df7f3618432020afe7efd5a0905682cf9bfd621963fae2d228" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:065ebf87c607a949280dd91f41f27e2d83fd8249726ce415f676ff6b5e0e6f0d" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:0149598d9d72c1c17fd179e9e1a575ea242ab4cabc582338958578d80995b905" [label="sha256:0149598d9d72c1c17fd179e9e1a575ea242ab4cabc582338958578d80995b905" shape="plaintext"];
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" -> "sha256:0c439843d62b98df7f3618432020afe7efd5a0905682cf9bfd621963fae2d228" [label=""];
  "sha256:9003f684491200045ddc209b6cb8a3b0149f5aec9c7cf4161d7c51bcd89f681c" -> "sha256:0c439843d62b98df7f3618432020afe7efd5a0905682cf9bfd621963fae2d228" [label=""];
  "sha256:0c439843d62b98df7f3618432020afe7efd5a0905682cf9bfd621963fae2d228" -> "sha256:065ebf87c607a949280dd91f41f27e2d83fd8249726ce415f676ff6b5e0e6f0d" [label=""];
  "sha256:065ebf87c607a949280dd91f41f27e2d83fd8249726ce415f676ff6b5e0e6f0d" -> "sha256:0149598d9d72c1c17fd179e9e1a575ea242ab4cabc582338958578d80995b905" [label=""];
}

