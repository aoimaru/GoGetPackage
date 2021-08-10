[app/sources/345361635.Dockerfile]
digraph {
  "sha256:6bdc4304b3fd76eb34c7b46345867613548e11224139f390958a113940c7cc8d" [label="docker-image://docker.io/balenalib/via-vab820-quad-debian:sid-run" shape="ellipse"];
  "sha256:8ddb9f0440233cc2324621f93d3df5399ebdeb0d5285e5966c496d32f5082c0c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:de3aff043b196d355063d51a298b91084834746346c226104c016348a6900b95" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:0049afb6c7c6f0bfeff11c36b1a695ce8e4645049f8d0f5a3bb282ea21358d6e" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:59d1471753e1842259d72d498e5a3e4676eace29bc0496fe5ef4a43caebcbd5d" [label="mkdir{path=/go}" shape="note"];
  "sha256:d338bdd671ce8b69b25180563dc4b860d84ebab7bb565959fdba162ba03a05d0" [label="sha256:d338bdd671ce8b69b25180563dc4b860d84ebab7bb565959fdba162ba03a05d0" shape="plaintext"];
  "sha256:6bdc4304b3fd76eb34c7b46345867613548e11224139f390958a113940c7cc8d" -> "sha256:8ddb9f0440233cc2324621f93d3df5399ebdeb0d5285e5966c496d32f5082c0c" [label=""];
  "sha256:8ddb9f0440233cc2324621f93d3df5399ebdeb0d5285e5966c496d32f5082c0c" -> "sha256:de3aff043b196d355063d51a298b91084834746346c226104c016348a6900b95" [label=""];
  "sha256:de3aff043b196d355063d51a298b91084834746346c226104c016348a6900b95" -> "sha256:0049afb6c7c6f0bfeff11c36b1a695ce8e4645049f8d0f5a3bb282ea21358d6e" [label=""];
  "sha256:0049afb6c7c6f0bfeff11c36b1a695ce8e4645049f8d0f5a3bb282ea21358d6e" -> "sha256:59d1471753e1842259d72d498e5a3e4676eace29bc0496fe5ef4a43caebcbd5d" [label=""];
  "sha256:59d1471753e1842259d72d498e5a3e4676eace29bc0496fe5ef4a43caebcbd5d" -> "sha256:d338bdd671ce8b69b25180563dc4b860d84ebab7bb565959fdba162ba03a05d0" [label=""];
}

