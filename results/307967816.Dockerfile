[app/sources/307967816.Dockerfile]
digraph {
  "sha256:742668973f91ee558fc2caaa3d196a704438d2ad482ac110916f15b2e15e6ba7" [label="docker-image://docker.io/library/node:latest@sha256:f71e36d6dcc304ade813e89d3b585d6b4c57b95cc8b27da04e3c25b1b50981a5" shape="ellipse"];
  "sha256:a8cab7e41e3c829452e01ab3ffe1d169e2b47e79333f0572444d102b3bf52e40" [label="/bin/sh -c npm install -g agendash" shape="box"];
  "sha256:6d4204b7263926a6a20eb1287db35259ec7fac978a15be00efd2030eaa3fe898" [label="sha256:6d4204b7263926a6a20eb1287db35259ec7fac978a15be00efd2030eaa3fe898" shape="plaintext"];
  "sha256:742668973f91ee558fc2caaa3d196a704438d2ad482ac110916f15b2e15e6ba7" -> "sha256:a8cab7e41e3c829452e01ab3ffe1d169e2b47e79333f0572444d102b3bf52e40" [label=""];
  "sha256:a8cab7e41e3c829452e01ab3ffe1d169e2b47e79333f0572444d102b3bf52e40" -> "sha256:6d4204b7263926a6a20eb1287db35259ec7fac978a15be00efd2030eaa3fe898" [label=""];
}

