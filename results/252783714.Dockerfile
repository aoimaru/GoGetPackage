[app/sources/252783714.Dockerfile]
digraph {
  "sha256:a2fe98600b65a12a7eaa69d84160275e9cdd89a533d9f7671ab1acc3326e6583" [label="local://context" shape="ellipse"];
  "sha256:191e091a6a6e7130813284156aceda997d2efa6ec32a2f06cb097e96f782f5fd" [label="docker-image://docker.io/deis/base:latest" shape="ellipse"];
  "sha256:4bec212a355ea2efb5cbfff1b847c3872825b2d6772f6b4ce44e6274683514c9" [label="/bin/sh -c apt-get update && apt-get install -yq python-software-properties" shape="box"];
  "sha256:c75a001b0bb9c4d01d40de7dad30d2a4c0a125577c4f20629caf60cdee494674" [label="/bin/sh -c add-apt-repository ppa:chris-lea/redis-server -y" shape="box"];
  "sha256:cc8da0752b73a028f38dfb1c31408f1cf1d1cf4fd4597c1af27f3035b44bb3f3" [label="/bin/sh -c apt-get update && apt-get install -yq redis-server" shape="box"];
  "sha256:03a420f4229ae5ad06e189a701c3275338570b0785ad6dcb8ac3730ef6a571df" [label="mkdir{path=/app}" shape="note"];
  "sha256:3cce05586ea537ef1ff57d1f813adb354403f08a5f6e2621aba2793b8eadb222" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:7e4bde8259421bc1544fac46e1e3900b43a389b442bd9001b22271c9330f087a" [label="copy{src=/redis.conf, dest=/etc/redis/redis.conf}" shape="note"];
  "sha256:6e95d2938dc8bc58dd93b77487cb84ae9da9c42a696e60e5adc9f4b7cd9a01fd" [label="sha256:6e95d2938dc8bc58dd93b77487cb84ae9da9c42a696e60e5adc9f4b7cd9a01fd" shape="plaintext"];
  "sha256:191e091a6a6e7130813284156aceda997d2efa6ec32a2f06cb097e96f782f5fd" -> "sha256:4bec212a355ea2efb5cbfff1b847c3872825b2d6772f6b4ce44e6274683514c9" [label=""];
  "sha256:4bec212a355ea2efb5cbfff1b847c3872825b2d6772f6b4ce44e6274683514c9" -> "sha256:c75a001b0bb9c4d01d40de7dad30d2a4c0a125577c4f20629caf60cdee494674" [label=""];
  "sha256:c75a001b0bb9c4d01d40de7dad30d2a4c0a125577c4f20629caf60cdee494674" -> "sha256:cc8da0752b73a028f38dfb1c31408f1cf1d1cf4fd4597c1af27f3035b44bb3f3" [label=""];
  "sha256:cc8da0752b73a028f38dfb1c31408f1cf1d1cf4fd4597c1af27f3035b44bb3f3" -> "sha256:03a420f4229ae5ad06e189a701c3275338570b0785ad6dcb8ac3730ef6a571df" [label=""];
  "sha256:03a420f4229ae5ad06e189a701c3275338570b0785ad6dcb8ac3730ef6a571df" -> "sha256:3cce05586ea537ef1ff57d1f813adb354403f08a5f6e2621aba2793b8eadb222" [label=""];
  "sha256:a2fe98600b65a12a7eaa69d84160275e9cdd89a533d9f7671ab1acc3326e6583" -> "sha256:3cce05586ea537ef1ff57d1f813adb354403f08a5f6e2621aba2793b8eadb222" [label=""];
  "sha256:3cce05586ea537ef1ff57d1f813adb354403f08a5f6e2621aba2793b8eadb222" -> "sha256:7e4bde8259421bc1544fac46e1e3900b43a389b442bd9001b22271c9330f087a" [label=""];
  "sha256:a2fe98600b65a12a7eaa69d84160275e9cdd89a533d9f7671ab1acc3326e6583" -> "sha256:7e4bde8259421bc1544fac46e1e3900b43a389b442bd9001b22271c9330f087a" [label=""];
  "sha256:7e4bde8259421bc1544fac46e1e3900b43a389b442bd9001b22271c9330f087a" -> "sha256:6e95d2938dc8bc58dd93b77487cb84ae9da9c42a696e60e5adc9f4b7cd9a01fd" [label=""];
}

