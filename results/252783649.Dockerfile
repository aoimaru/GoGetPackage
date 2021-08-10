[app/sources/252783649.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:9e7be25c97d5963fba8669658701a291e4787fa69b7b43cdac513277e0677eb0" [label="/bin/sh -c apt-get update && apt-get install -y golang golang-go.tools" shape="box"];
  "sha256:bfb7bd9cb1e823030cae89a09463b9b67476a6dedfec5cf1d3b45b316503c8da" [label="sha256:bfb7bd9cb1e823030cae89a09463b9b67476a6dedfec5cf1d3b45b316503c8da" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:9e7be25c97d5963fba8669658701a291e4787fa69b7b43cdac513277e0677eb0" [label=""];
  "sha256:9e7be25c97d5963fba8669658701a291e4787fa69b7b43cdac513277e0677eb0" -> "sha256:bfb7bd9cb1e823030cae89a09463b9b67476a6dedfec5cf1d3b45b316503c8da" [label=""];
}

