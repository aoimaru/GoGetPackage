[app/sources/282336125.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:6cb7dad1d2cde878136ba91995535c6d34f5dd11df85f5e1d9d89161b97b642c" [label="/bin/sh -c mkdir /paicoin" shape="box"];
  "sha256:42ee3483e249f12f47366baf5c3b6220f4e94c0292f75b6eb55c661414639fb2" [label="/bin/sh -c apt-get update -y -qq &&     apt-get install -y curl build-essential autoconf libtool pkg-config bsdmainutils checkinstall libevent-dev libssl-dev libzmq5-dev       libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-thread-dev libboost-test-dev" shape="box"];
  "sha256:a992bc3e79c593cbae5fcb1fa6e7688f1a9321e47a5ac4a01e112a3647047177" [label="sha256:a992bc3e79c593cbae5fcb1fa6e7688f1a9321e47a5ac4a01e112a3647047177" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:6cb7dad1d2cde878136ba91995535c6d34f5dd11df85f5e1d9d89161b97b642c" [label=""];
  "sha256:6cb7dad1d2cde878136ba91995535c6d34f5dd11df85f5e1d9d89161b97b642c" -> "sha256:42ee3483e249f12f47366baf5c3b6220f4e94c0292f75b6eb55c661414639fb2" [label=""];
  "sha256:42ee3483e249f12f47366baf5c3b6220f4e94c0292f75b6eb55c661414639fb2" -> "sha256:a992bc3e79c593cbae5fcb1fa6e7688f1a9321e47a5ac4a01e112a3647047177" [label=""];
}

