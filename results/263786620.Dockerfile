[app/sources/263786620.Dockerfile]
digraph {
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" [label="docker-image://docker.io/library/golang:1.5" shape="ellipse"];
  "sha256:0c9995e88875bf41a263242bb560a44e1c4603ce717dbccaae17656bfdd47a3f" [label="local://context" shape="ellipse"];
  "sha256:e6a82b8cc714597149e3f2c7e9d7b9dc16d1673721b303b723c8ce3f0d280efc" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:ed6028d880ee3c1788d7f62b3252e78aefefb47e17d962be72047931a5f0ef29" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:e1fc06eb9b7dd61fd82dc10bf7c12741ade5238c4c2e93c31d64c289a9d1564b" [label="sha256:e1fc06eb9b7dd61fd82dc10bf7c12741ade5238c4c2e93c31d64c289a9d1564b" shape="plaintext"];
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" -> "sha256:e6a82b8cc714597149e3f2c7e9d7b9dc16d1673721b303b723c8ce3f0d280efc" [label=""];
  "sha256:0c9995e88875bf41a263242bb560a44e1c4603ce717dbccaae17656bfdd47a3f" -> "sha256:e6a82b8cc714597149e3f2c7e9d7b9dc16d1673721b303b723c8ce3f0d280efc" [label=""];
  "sha256:e6a82b8cc714597149e3f2c7e9d7b9dc16d1673721b303b723c8ce3f0d280efc" -> "sha256:ed6028d880ee3c1788d7f62b3252e78aefefb47e17d962be72047931a5f0ef29" [label=""];
  "sha256:ed6028d880ee3c1788d7f62b3252e78aefefb47e17d962be72047931a5f0ef29" -> "sha256:e1fc06eb9b7dd61fd82dc10bf7c12741ade5238c4c2e93c31d64c289a9d1564b" [label=""];
}

