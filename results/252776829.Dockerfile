[app/sources/252776829.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:274b92e77f45acc862983038c7324350a7551785aba242725874203f240cd0b6" [label="/bin/sh -c mkdir -p /testing/level1" shape="box"];
  "sha256:ee7c8da09a9a8efa9ad107f3ada7f52d671173e724855ab0da00ffaf6c321b1e" [label="/bin/sh -c rm -rf /testing/level1" shape="box"];
  "sha256:eb69c8d8cb2329b45fee21255545932d4761890b2463944a65dc9053b5f0aad3" [label="sha256:eb69c8d8cb2329b45fee21255545932d4761890b2463944a65dc9053b5f0aad3" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:274b92e77f45acc862983038c7324350a7551785aba242725874203f240cd0b6" [label=""];
  "sha256:274b92e77f45acc862983038c7324350a7551785aba242725874203f240cd0b6" -> "sha256:ee7c8da09a9a8efa9ad107f3ada7f52d671173e724855ab0da00ffaf6c321b1e" [label=""];
  "sha256:ee7c8da09a9a8efa9ad107f3ada7f52d671173e724855ab0da00ffaf6c321b1e" -> "sha256:eb69c8d8cb2329b45fee21255545932d4761890b2463944a65dc9053b5f0aad3" [label=""];
}

