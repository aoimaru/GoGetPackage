[app/sources/345371333.Dockerfile]
digraph {
  "sha256:d783fdabc140b0e72e04f760c2b0461a8ce37b261bacbd041055ddde6f4ab61e" [label="docker-image://docker.io/balenalib/ccon-01-debian:jessie-run" shape="ellipse"];
  "sha256:b93a4a09b2181c4d4cff7146e59dfa68692905ce2a38f75db3e4cd248431a7da" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e87d9e597a53ca30c45b8dbef27647dcf39d70e07ffb96158f347e0aeb1e3d0f" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:daf738cd935a6ec2869d82784732097f0018e9617b47b9a1690b216e5743fa6d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5840ede8882f8076da20e30f057fb4ee0afc4ead3086aedc6b78e42037d0e367" [label="mkdir{path=/go}" shape="note"];
  "sha256:fac28adbd29c598e334db32af09e09bd85f0eaced7b54f0a7504876394b0ac8f" [label="sha256:fac28adbd29c598e334db32af09e09bd85f0eaced7b54f0a7504876394b0ac8f" shape="plaintext"];
  "sha256:d783fdabc140b0e72e04f760c2b0461a8ce37b261bacbd041055ddde6f4ab61e" -> "sha256:b93a4a09b2181c4d4cff7146e59dfa68692905ce2a38f75db3e4cd248431a7da" [label=""];
  "sha256:b93a4a09b2181c4d4cff7146e59dfa68692905ce2a38f75db3e4cd248431a7da" -> "sha256:e87d9e597a53ca30c45b8dbef27647dcf39d70e07ffb96158f347e0aeb1e3d0f" [label=""];
  "sha256:e87d9e597a53ca30c45b8dbef27647dcf39d70e07ffb96158f347e0aeb1e3d0f" -> "sha256:daf738cd935a6ec2869d82784732097f0018e9617b47b9a1690b216e5743fa6d" [label=""];
  "sha256:daf738cd935a6ec2869d82784732097f0018e9617b47b9a1690b216e5743fa6d" -> "sha256:5840ede8882f8076da20e30f057fb4ee0afc4ead3086aedc6b78e42037d0e367" [label=""];
  "sha256:5840ede8882f8076da20e30f057fb4ee0afc4ead3086aedc6b78e42037d0e367" -> "sha256:fac28adbd29c598e334db32af09e09bd85f0eaced7b54f0a7504876394b0ac8f" [label=""];
}

