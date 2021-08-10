[app/sources/320096696.Dockerfile]
digraph {
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" [label="docker-image://docker.io/library/debian:sid" shape="ellipse"];
  "sha256:12de9f7bd7c58ebec842ec1fab5e0e5e32e6d5876d61ed7ecbaf38dbde987f81" [label="/bin/sh -c apt-get update &&     apt-get dist-upgrade -y &&     useradd -ms /bin/bash -u $USER_UID $USER_NAME &&     apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y &&     rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:57ad291dfba3d415bd18edb8d59ba2308aef0e0b5ba4867c2e1d943fe9f9737d" [label="sha256:57ad291dfba3d415bd18edb8d59ba2308aef0e0b5ba4867c2e1d943fe9f9737d" shape="plaintext"];
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" -> "sha256:12de9f7bd7c58ebec842ec1fab5e0e5e32e6d5876d61ed7ecbaf38dbde987f81" [label=""];
  "sha256:12de9f7bd7c58ebec842ec1fab5e0e5e32e6d5876d61ed7ecbaf38dbde987f81" -> "sha256:57ad291dfba3d415bd18edb8d59ba2308aef0e0b5ba4867c2e1d943fe9f9737d" [label=""];
}

