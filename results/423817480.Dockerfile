[app/sources/423817480.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:29f4190fa55daf53fccf86cc502fac56a976a2d3850e505f2164cb228852dd71" [label="/bin/sh -c apt-get update -y &&     apt-get install -y wget                    curl                    python                    git                    nginx" shape="box"];
  "sha256:fdbb49ff6f29c2244bd374a6c6c7170c15160c03dfe2996c26ddaa38a8f1d3cb" [label="/bin/sh -c curl https://bootstrap.pypa.io/get-pip.py | python -" shape="box"];
  "sha256:abb58c174e295ad424e28166f584fb4fc2de874e8953910b6fc28a3652737d5a" [label="/bin/sh -c mkdir /hosted" shape="box"];
  "sha256:b8cf3230e4aecb094139818955e54714ae840fecdbd00f3664b465550ed82448" [label="local://context" shape="ellipse"];
  "sha256:e345f41d5155a3e720f19c8d7018c3779df91b6093a4846fa6ec6b16a4346814" [label="copy{src=/index.html, dest=/hosted/}" shape="note"];
  "sha256:adced2dfee7124a7e459a8ae5b0a20bf163e00602092511593a00c7fd353be24" [label="copy{src=/jwt-decode.js, dest=/hosted/}" shape="note"];
  "sha256:ab21feb2a4cfd9ad517f2fc3eafb31680d500533de686808b0ae6a2c88dcfa4d" [label="/bin/sh -c chmod -R 777 /hosted" shape="box"];
  "sha256:5751be3dfa38f1c90f6bb955d6661ec3888c7d2d78906791cd30be20e6e37ab4" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:af85e28f646932327914fdcfb7056b9317e70c75cb00d29442b3ae5f65191ba9" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:dc3d036ef319c7ccdd078753f88b3530885a286afa905d56d69ff0d16024de55" [label="/bin/sh -c chmod 777 /start.sh" shape="box"];
  "sha256:f43614399e72f3d3f4c501c82dae16cbd560d3a9b10cc2dfdf5fe7bb771217d4" [label="sha256:f43614399e72f3d3f4c501c82dae16cbd560d3a9b10cc2dfdf5fe7bb771217d4" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:29f4190fa55daf53fccf86cc502fac56a976a2d3850e505f2164cb228852dd71" [label=""];
  "sha256:29f4190fa55daf53fccf86cc502fac56a976a2d3850e505f2164cb228852dd71" -> "sha256:fdbb49ff6f29c2244bd374a6c6c7170c15160c03dfe2996c26ddaa38a8f1d3cb" [label=""];
  "sha256:fdbb49ff6f29c2244bd374a6c6c7170c15160c03dfe2996c26ddaa38a8f1d3cb" -> "sha256:abb58c174e295ad424e28166f584fb4fc2de874e8953910b6fc28a3652737d5a" [label=""];
  "sha256:abb58c174e295ad424e28166f584fb4fc2de874e8953910b6fc28a3652737d5a" -> "sha256:e345f41d5155a3e720f19c8d7018c3779df91b6093a4846fa6ec6b16a4346814" [label=""];
  "sha256:b8cf3230e4aecb094139818955e54714ae840fecdbd00f3664b465550ed82448" -> "sha256:e345f41d5155a3e720f19c8d7018c3779df91b6093a4846fa6ec6b16a4346814" [label=""];
  "sha256:e345f41d5155a3e720f19c8d7018c3779df91b6093a4846fa6ec6b16a4346814" -> "sha256:adced2dfee7124a7e459a8ae5b0a20bf163e00602092511593a00c7fd353be24" [label=""];
  "sha256:b8cf3230e4aecb094139818955e54714ae840fecdbd00f3664b465550ed82448" -> "sha256:adced2dfee7124a7e459a8ae5b0a20bf163e00602092511593a00c7fd353be24" [label=""];
  "sha256:adced2dfee7124a7e459a8ae5b0a20bf163e00602092511593a00c7fd353be24" -> "sha256:ab21feb2a4cfd9ad517f2fc3eafb31680d500533de686808b0ae6a2c88dcfa4d" [label=""];
  "sha256:ab21feb2a4cfd9ad517f2fc3eafb31680d500533de686808b0ae6a2c88dcfa4d" -> "sha256:5751be3dfa38f1c90f6bb955d6661ec3888c7d2d78906791cd30be20e6e37ab4" [label=""];
  "sha256:b8cf3230e4aecb094139818955e54714ae840fecdbd00f3664b465550ed82448" -> "sha256:5751be3dfa38f1c90f6bb955d6661ec3888c7d2d78906791cd30be20e6e37ab4" [label=""];
  "sha256:5751be3dfa38f1c90f6bb955d6661ec3888c7d2d78906791cd30be20e6e37ab4" -> "sha256:af85e28f646932327914fdcfb7056b9317e70c75cb00d29442b3ae5f65191ba9" [label=""];
  "sha256:b8cf3230e4aecb094139818955e54714ae840fecdbd00f3664b465550ed82448" -> "sha256:af85e28f646932327914fdcfb7056b9317e70c75cb00d29442b3ae5f65191ba9" [label=""];
  "sha256:af85e28f646932327914fdcfb7056b9317e70c75cb00d29442b3ae5f65191ba9" -> "sha256:dc3d036ef319c7ccdd078753f88b3530885a286afa905d56d69ff0d16024de55" [label=""];
  "sha256:dc3d036ef319c7ccdd078753f88b3530885a286afa905d56d69ff0d16024de55" -> "sha256:f43614399e72f3d3f4c501c82dae16cbd560d3a9b10cc2dfdf5fe7bb771217d4" [label=""];
}

