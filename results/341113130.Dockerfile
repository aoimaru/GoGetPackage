[app/sources/341113130.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0bb9f980b03b6111f53d269947016553f63ba94799b911b195e37a62cc667f17" [label="/bin/sh -c mkdir /node /node/Jmeter /node/node_undertest /node/node_baseline" shape="box"];
  "sha256:6d7f3a9b704ee85b8bdb4bdf5db82facec154635575c5729fb243680833fcf64" [label="mkdir{path=/node}" shape="note"];
  "sha256:1b8f40f8aa46f18196c66da4860e229e5b0c5e7c65d379ea6288ad3f7dbb28d9" [label="/bin/sh -c apt-get update && apt-get install git openjdk-7-jdk unzip mongodb numactl bc wget -y && git clone http://github.com/nodejs/benchmarking && bash /node/benchmarking/experimental/benchmarks/acmeair/setupJmeter.sh && apt-get purge -y --auto-remove git unzip && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a98e61aa7e4c6f6244318647ba49f645147e677aa0c146cb7fbadc1d6a30f50d" [label="sha256:a98e61aa7e4c6f6244318647ba49f645147e677aa0c146cb7fbadc1d6a30f50d" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0bb9f980b03b6111f53d269947016553f63ba94799b911b195e37a62cc667f17" [label=""];
  "sha256:0bb9f980b03b6111f53d269947016553f63ba94799b911b195e37a62cc667f17" -> "sha256:6d7f3a9b704ee85b8bdb4bdf5db82facec154635575c5729fb243680833fcf64" [label=""];
  "sha256:6d7f3a9b704ee85b8bdb4bdf5db82facec154635575c5729fb243680833fcf64" -> "sha256:1b8f40f8aa46f18196c66da4860e229e5b0c5e7c65d379ea6288ad3f7dbb28d9" [label=""];
  "sha256:1b8f40f8aa46f18196c66da4860e229e5b0c5e7c65d379ea6288ad3f7dbb28d9" -> "sha256:a98e61aa7e4c6f6244318647ba49f645147e677aa0c146cb7fbadc1d6a30f50d" [label=""];
}

