[app/sources/252770833.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:5ae7ff4c11abd5b7c1b9b0dc952f605b43674348b22384288e6d9d84c6a77f26" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends git build-essential gcc make libgmp-dev libboost-filesystem-dev libboost-program-options-dev libboost-log-dev libcgal-dev ca-certificates && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0dce6e78289833904fea6ec7e265796269f43b923fb746a84cf43911090225e9" [label="/bin/sh -c cd /root && git clone https://github.com/AMS-MRC-disc-math-bio/pmfe && cd pmfe && make" shape="box"];
  "sha256:3fc9dbf116136c543f9ca6e11bd982cfd2840ad86f5261c2ea1c635beca93575" [label="mkdir{path=/root/pmfe}" shape="note"];
  "sha256:7a6a4530b3d92aa26f0931cdc160d331755453c9bad0437943de004a67ea2dbc" [label="sha256:7a6a4530b3d92aa26f0931cdc160d331755453c9bad0437943de004a67ea2dbc" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:5ae7ff4c11abd5b7c1b9b0dc952f605b43674348b22384288e6d9d84c6a77f26" [label=""];
  "sha256:5ae7ff4c11abd5b7c1b9b0dc952f605b43674348b22384288e6d9d84c6a77f26" -> "sha256:0dce6e78289833904fea6ec7e265796269f43b923fb746a84cf43911090225e9" [label=""];
  "sha256:0dce6e78289833904fea6ec7e265796269f43b923fb746a84cf43911090225e9" -> "sha256:3fc9dbf116136c543f9ca6e11bd982cfd2840ad86f5261c2ea1c635beca93575" [label=""];
  "sha256:3fc9dbf116136c543f9ca6e11bd982cfd2840ad86f5261c2ea1c635beca93575" -> "sha256:7a6a4530b3d92aa26f0931cdc160d331755453c9bad0437943de004a67ea2dbc" [label=""];
}

