[app/sources/320100222.Dockerfile]
digraph {
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" [label="docker-image://docker.io/library/debian:sid" shape="ellipse"];
  "sha256:6d7e05217239749b9e6bd0620d07c874042b0069a1395d7d3d2971b8a9c13946" [label="/bin/sh -c apt-get update && apt-get install -y \tkeepass2 \txdotool \tmono-dmcs \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:bb658abe3180bd5488cf6319fc4f5a4743fada56b07130af96b221e830e3c41a" [label="sha256:bb658abe3180bd5488cf6319fc4f5a4743fada56b07130af96b221e830e3c41a" shape="plaintext"];
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" -> "sha256:6d7e05217239749b9e6bd0620d07c874042b0069a1395d7d3d2971b8a9c13946" [label=""];
  "sha256:6d7e05217239749b9e6bd0620d07c874042b0069a1395d7d3d2971b8a9c13946" -> "sha256:bb658abe3180bd5488cf6319fc4f5a4743fada56b07130af96b221e830e3c41a" [label=""];
}

