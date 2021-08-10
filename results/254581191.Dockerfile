[app/sources/254581191.Dockerfile]
digraph {
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" [label="docker-image://docker.io/library/aws-golang:tip" shape="ellipse"];
  "sha256:3835c9d0401cf01e4496dc72cbe932d5bd890e6274318453e52844cdf5a1c91d" [label="local://context" shape="ellipse"];
  "sha256:65c8441a82ce1a116cf9f66f09448f6bc1d1225682746d78541b11feeed33ad3" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:59527e3d787c5d26a2f7b224ecc9fef0802441b93f59c905a2eca26a56594cbd" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:7ea94dfd37d0f9102429655130e8ab5f82fcfe0711330d75f2985677fb7d76a5" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:9a7761bd4d2a1479e02b1a09e5ceb7b6b66ba0a55035095bf716c18c66f49b5f" [label="sha256:9a7761bd4d2a1479e02b1a09e5ceb7b6b66ba0a55035095bf716c18c66f49b5f" shape="plaintext"];
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" -> "sha256:65c8441a82ce1a116cf9f66f09448f6bc1d1225682746d78541b11feeed33ad3" [label=""];
  "sha256:3835c9d0401cf01e4496dc72cbe932d5bd890e6274318453e52844cdf5a1c91d" -> "sha256:65c8441a82ce1a116cf9f66f09448f6bc1d1225682746d78541b11feeed33ad3" [label=""];
  "sha256:65c8441a82ce1a116cf9f66f09448f6bc1d1225682746d78541b11feeed33ad3" -> "sha256:59527e3d787c5d26a2f7b224ecc9fef0802441b93f59c905a2eca26a56594cbd" [label=""];
  "sha256:59527e3d787c5d26a2f7b224ecc9fef0802441b93f59c905a2eca26a56594cbd" -> "sha256:7ea94dfd37d0f9102429655130e8ab5f82fcfe0711330d75f2985677fb7d76a5" [label=""];
  "sha256:7ea94dfd37d0f9102429655130e8ab5f82fcfe0711330d75f2985677fb7d76a5" -> "sha256:9a7761bd4d2a1479e02b1a09e5ceb7b6b66ba0a55035095bf716c18c66f49b5f" [label=""];
}

