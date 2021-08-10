[app/sources/252788104.Dockerfile]
digraph {
  "sha256:8cffeadf199a60a7b1e1b499ce43985e780c07f053a14b444c52cfbf23474fd5" [label="docker-image://docker.io/library/ubuntu:14.10" shape="ellipse"];
  "sha256:0e76b0fdbd94ba5a97e83152b3d1ef1f1ea3315f4e899ac98098b6698c926db9" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:9f35e8e0f9feff1f05413b57fe1b3b59c33d58e7d67b9342dfd0e1d50f8bf013" [label="/bin/sh -c apt-get install -y python-pip" shape="box"];
  "sha256:6a4d2830a778d63051af502098abcd200b7af464076ef2602ac4b2de88b68b65" [label="/bin/sh -c pip install zk-shell" shape="box"];
  "sha256:000d62f19896a0eb4050c64675fe7bb02ecf925f50232251fd6db26fc137c48d" [label="sha256:000d62f19896a0eb4050c64675fe7bb02ecf925f50232251fd6db26fc137c48d" shape="plaintext"];
  "sha256:8cffeadf199a60a7b1e1b499ce43985e780c07f053a14b444c52cfbf23474fd5" -> "sha256:0e76b0fdbd94ba5a97e83152b3d1ef1f1ea3315f4e899ac98098b6698c926db9" [label=""];
  "sha256:0e76b0fdbd94ba5a97e83152b3d1ef1f1ea3315f4e899ac98098b6698c926db9" -> "sha256:9f35e8e0f9feff1f05413b57fe1b3b59c33d58e7d67b9342dfd0e1d50f8bf013" [label=""];
  "sha256:9f35e8e0f9feff1f05413b57fe1b3b59c33d58e7d67b9342dfd0e1d50f8bf013" -> "sha256:6a4d2830a778d63051af502098abcd200b7af464076ef2602ac4b2de88b68b65" [label=""];
  "sha256:6a4d2830a778d63051af502098abcd200b7af464076ef2602ac4b2de88b68b65" -> "sha256:000d62f19896a0eb4050c64675fe7bb02ecf925f50232251fd6db26fc137c48d" [label=""];
}

