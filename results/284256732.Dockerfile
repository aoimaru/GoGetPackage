[app/sources/284256732.Dockerfile]
digraph {
  "sha256:5d21b6d798465ed7f61c70aaf1278fd053a6dfd0b9af5fc9867580d40154a03d" [label="local://context" shape="ellipse"];
  "sha256:b50328052f4aeef9e84de003925d33e72d93ad3a05baebe3d7aede6869f9ba92" [label="docker-image://docker.io/bde2020/hadoop-base:2.0.0-hadoop3.1.1-java8" shape="ellipse"];
  "sha256:3caa3ed848a6ce3b5abca071e83c91f36b33d061c5a59e84f8e6e5c8fd4c34df" [label="/bin/sh -c mkdir -p /hadoop/yarn/timeline" shape="box"];
  "sha256:d759d1f28cef8f57e7d8b33a46895ffaa1c2fd059a37f0ed5ba863e4ee97c363" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:ab4d05b588177b7ce45b6e50a4dffeea70462049b54016b1a58ad10a2969c264" [label="/bin/sh -c chmod a+x /run.sh" shape="box"];
  "sha256:bb3d68be1a8657675c9d8ff8cab7fc2ed1e3bdcec4647347779dd5f1d0e98445" [label="sha256:bb3d68be1a8657675c9d8ff8cab7fc2ed1e3bdcec4647347779dd5f1d0e98445" shape="plaintext"];
  "sha256:b50328052f4aeef9e84de003925d33e72d93ad3a05baebe3d7aede6869f9ba92" -> "sha256:3caa3ed848a6ce3b5abca071e83c91f36b33d061c5a59e84f8e6e5c8fd4c34df" [label=""];
  "sha256:3caa3ed848a6ce3b5abca071e83c91f36b33d061c5a59e84f8e6e5c8fd4c34df" -> "sha256:d759d1f28cef8f57e7d8b33a46895ffaa1c2fd059a37f0ed5ba863e4ee97c363" [label=""];
  "sha256:5d21b6d798465ed7f61c70aaf1278fd053a6dfd0b9af5fc9867580d40154a03d" -> "sha256:d759d1f28cef8f57e7d8b33a46895ffaa1c2fd059a37f0ed5ba863e4ee97c363" [label=""];
  "sha256:d759d1f28cef8f57e7d8b33a46895ffaa1c2fd059a37f0ed5ba863e4ee97c363" -> "sha256:ab4d05b588177b7ce45b6e50a4dffeea70462049b54016b1a58ad10a2969c264" [label=""];
  "sha256:ab4d05b588177b7ce45b6e50a4dffeea70462049b54016b1a58ad10a2969c264" -> "sha256:bb3d68be1a8657675c9d8ff8cab7fc2ed1e3bdcec4647347779dd5f1d0e98445" [label=""];
}

