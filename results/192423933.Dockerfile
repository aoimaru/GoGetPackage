[app/sources/192423933.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:895469c9a68edacc967f1e3587085cf70bc3f1ad855481571cdc1ab54ca105d2" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends build-essential libffi-dev     libssl-dev python-dev python-minimal python-pip python-setuptools     python-virtualenv" shape="box"];
  "sha256:2585d922cb8a3f1a86d4774b1aa378a7982fce53b7044852562e6dc242a8ea65" [label="/bin/sh -c pip install --upgrade pip setuptools &&     pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:64b145384f9dd302961efe70230b1572e52a65e5b77c6d97f12c2d25221d78e5" [label="local://context" shape="ellipse"];
  "sha256:cbb09f4f7c636e19f32a7b79e0806f2b8c7ce742ccaee1e5ce2c0a2f3660c8c2" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:6e1ca7dafdb835b2c462cd8db3acbce288174247671aedf3903ebe68029fc807" [label="sha256:6e1ca7dafdb835b2c462cd8db3acbce288174247671aedf3903ebe68029fc807" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:895469c9a68edacc967f1e3587085cf70bc3f1ad855481571cdc1ab54ca105d2" [label=""];
  "sha256:895469c9a68edacc967f1e3587085cf70bc3f1ad855481571cdc1ab54ca105d2" -> "sha256:2585d922cb8a3f1a86d4774b1aa378a7982fce53b7044852562e6dc242a8ea65" [label=""];
  "sha256:2585d922cb8a3f1a86d4774b1aa378a7982fce53b7044852562e6dc242a8ea65" -> "sha256:cbb09f4f7c636e19f32a7b79e0806f2b8c7ce742ccaee1e5ce2c0a2f3660c8c2" [label=""];
  "sha256:64b145384f9dd302961efe70230b1572e52a65e5b77c6d97f12c2d25221d78e5" -> "sha256:cbb09f4f7c636e19f32a7b79e0806f2b8c7ce742ccaee1e5ce2c0a2f3660c8c2" [label=""];
  "sha256:cbb09f4f7c636e19f32a7b79e0806f2b8c7ce742ccaee1e5ce2c0a2f3660c8c2" -> "sha256:6e1ca7dafdb835b2c462cd8db3acbce288174247671aedf3903ebe68029fc807" [label=""];
}

