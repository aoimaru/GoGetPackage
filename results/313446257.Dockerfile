[app/sources/313446257.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:fcf467a56c5135f6a4c022fde50d005d66a52d0cfdf4127989327f1a2df08313" [label="/bin/bash -o pipefail -c mkdir -p /kopano/repo /kopano/data /kopano/helper /kopano/path" shape="box"];
  "sha256:0a74fe049785f4d224ac1bfa46b7ec46398be0c793485a7cde11bcb6cc2c2fbc" [label="mkdir{path=/kopano/repo}" shape="note"];
  "sha256:692113d748965d52505f7b5e5a334610a5157d0814ea68ad5d6e8c469831ff1a" [label="/bin/bash -o pipefail -c apt-get update &&     apt-get upgrade -y &&     apt-get install --no-install-recommends -y         apt-transport-https         apt-utils         ca-certificates         curl         dumb-init         gpg         jq         locales         moreutils         python3-minimal         &&     rm -rf /var/cache/apt /var/lib/apt/lists/*;     if [ ${RELEASE_KEY_DOWNLOAD} -eq 1 ]; then         curl -s -S -o - \"${KOPANO_CORE_REPOSITORY_URL}/Release.key\" | apt-key add -;     fi" shape="box"];
  "sha256:bec749d1ea903bb5612ce00ee11d3ae379324f4a5c08038e84bd82498fe14b08" [label="/bin/bash -o pipefail -c curl -L https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz | tar xzvf - -C /usr/local/bin" shape="box"];
  "sha256:78723190cb1fe6e8af454bd90c0c8f0dd3b6e1dc75e61cbd1efd1d582ff60732" [label="/bin/bash -o pipefail -c sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen &&     sed -i -e 's/# de_DE.UTF-8 UTF-8/de_DE.UTF-8 UTF-8/' /etc/locale.gen &&     dpkg-reconfigure --frontend=noninteractive locales &&     update-locale LANG=en_US.UTF-8" shape="box"];
  "sha256:6f1c58851b09dff236a6e99dc0b129f75b72b0c1bfce026cda4b1c8bb88b0778" [label="local://context" shape="ellipse"];
  "sha256:9fd149dc7fb5b1fdea910cd8d519fce35514a939004514c16ab14d98c8933747" [label="copy{src=/create-kopano-repo.sh, dest=/kopano/helper/}" shape="note"];
  "sha256:cbdfb6fea29b5d46cfca45f65d41a153fa855ee773cf43fd8bc9df5aae9dbd9f" [label="copy{src=/kcconf.py, dest=/kopano/}" shape="note"];
  "sha256:6978b3457e962aab6d9ad48b01257ead9febd5f1c327381dc8b7eacbe004c262" [label="sha256:6978b3457e962aab6d9ad48b01257ead9febd5f1c327381dc8b7eacbe004c262" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:fcf467a56c5135f6a4c022fde50d005d66a52d0cfdf4127989327f1a2df08313" [label=""];
  "sha256:fcf467a56c5135f6a4c022fde50d005d66a52d0cfdf4127989327f1a2df08313" -> "sha256:0a74fe049785f4d224ac1bfa46b7ec46398be0c793485a7cde11bcb6cc2c2fbc" [label=""];
  "sha256:0a74fe049785f4d224ac1bfa46b7ec46398be0c793485a7cde11bcb6cc2c2fbc" -> "sha256:692113d748965d52505f7b5e5a334610a5157d0814ea68ad5d6e8c469831ff1a" [label=""];
  "sha256:692113d748965d52505f7b5e5a334610a5157d0814ea68ad5d6e8c469831ff1a" -> "sha256:bec749d1ea903bb5612ce00ee11d3ae379324f4a5c08038e84bd82498fe14b08" [label=""];
  "sha256:bec749d1ea903bb5612ce00ee11d3ae379324f4a5c08038e84bd82498fe14b08" -> "sha256:78723190cb1fe6e8af454bd90c0c8f0dd3b6e1dc75e61cbd1efd1d582ff60732" [label=""];
  "sha256:78723190cb1fe6e8af454bd90c0c8f0dd3b6e1dc75e61cbd1efd1d582ff60732" -> "sha256:9fd149dc7fb5b1fdea910cd8d519fce35514a939004514c16ab14d98c8933747" [label=""];
  "sha256:6f1c58851b09dff236a6e99dc0b129f75b72b0c1bfce026cda4b1c8bb88b0778" -> "sha256:9fd149dc7fb5b1fdea910cd8d519fce35514a939004514c16ab14d98c8933747" [label=""];
  "sha256:9fd149dc7fb5b1fdea910cd8d519fce35514a939004514c16ab14d98c8933747" -> "sha256:cbdfb6fea29b5d46cfca45f65d41a153fa855ee773cf43fd8bc9df5aae9dbd9f" [label=""];
  "sha256:6f1c58851b09dff236a6e99dc0b129f75b72b0c1bfce026cda4b1c8bb88b0778" -> "sha256:cbdfb6fea29b5d46cfca45f65d41a153fa855ee773cf43fd8bc9df5aae9dbd9f" [label=""];
  "sha256:cbdfb6fea29b5d46cfca45f65d41a153fa855ee773cf43fd8bc9df5aae9dbd9f" -> "sha256:6978b3457e962aab6d9ad48b01257ead9febd5f1c327381dc8b7eacbe004c262" [label=""];
}

