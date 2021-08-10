[app/sources/420800524.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:ff86d2c749abab42003bd4541a4f259e007cdeb284612ae8a6d70b7dc05ba0cd" [label="/bin/sh -c apt-get update && apt-get install znc -y" shape="box"];
  "sha256:40a7d48bb117d352c3c25ae533990a28a39aae409b995693c288a0cda8c9fc48" [label="local://context" shape="ellipse"];
  "sha256:03b3ab9b94fab597f57ccefa5f256d415e539447afd2de4b2287a0564da5f597" [label="copy{src=/conf, dest=/.znc}" shape="note"];
  "sha256:4cbc5a8624911b5c2a4df866fcdad728054e403566fbf3a9aa453f409c2dc3ba" [label="sha256:4cbc5a8624911b5c2a4df866fcdad728054e403566fbf3a9aa453f409c2dc3ba" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:ff86d2c749abab42003bd4541a4f259e007cdeb284612ae8a6d70b7dc05ba0cd" [label=""];
  "sha256:ff86d2c749abab42003bd4541a4f259e007cdeb284612ae8a6d70b7dc05ba0cd" -> "sha256:03b3ab9b94fab597f57ccefa5f256d415e539447afd2de4b2287a0564da5f597" [label=""];
  "sha256:40a7d48bb117d352c3c25ae533990a28a39aae409b995693c288a0cda8c9fc48" -> "sha256:03b3ab9b94fab597f57ccefa5f256d415e539447afd2de4b2287a0564da5f597" [label=""];
  "sha256:03b3ab9b94fab597f57ccefa5f256d415e539447afd2de4b2287a0564da5f597" -> "sha256:4cbc5a8624911b5c2a4df866fcdad728054e403566fbf3a9aa453f409c2dc3ba" [label=""];
}

