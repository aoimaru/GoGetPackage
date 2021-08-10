[app/sources/345366227.Dockerfile]
digraph {
  "sha256:f03132e0128d77b473532c5f30286b3f46f99ab5dbbe9d23762e8391b90894b8" [label="docker-image://docker.io/balenalib/i386-nlp-debian:jessie-run" shape="ellipse"];
  "sha256:9defd6b5cd7f38eb2b311fc29dd1f1abd761ca00588f0031d28669b866485dd8" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4f716c3ace3e92d7a72a8906e696e5db06f8616d9cb4aad838f6adde42a6d247" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-i386.tar.gz\" \t&& echo \"4fd03c176c0f44d0e397fde4964306f36e17ae5e28141789618553144d476dd6  go$GO_VERSION.linux-i386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-i386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-i386.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:6311079cf9451075b4993c6b9d0842db0a7dd568042adad4626b0b206da12840" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ec860c80adfea27ba724d2f5453c7e2485f7fea632d5988ca2aa7caaf493d2b8" [label="mkdir{path=/go}" shape="note"];
  "sha256:192c72075a822649c114463b12db58aba99a582bbc67aab336ae86479de4b94b" [label="sha256:192c72075a822649c114463b12db58aba99a582bbc67aab336ae86479de4b94b" shape="plaintext"];
  "sha256:f03132e0128d77b473532c5f30286b3f46f99ab5dbbe9d23762e8391b90894b8" -> "sha256:9defd6b5cd7f38eb2b311fc29dd1f1abd761ca00588f0031d28669b866485dd8" [label=""];
  "sha256:9defd6b5cd7f38eb2b311fc29dd1f1abd761ca00588f0031d28669b866485dd8" -> "sha256:4f716c3ace3e92d7a72a8906e696e5db06f8616d9cb4aad838f6adde42a6d247" [label=""];
  "sha256:4f716c3ace3e92d7a72a8906e696e5db06f8616d9cb4aad838f6adde42a6d247" -> "sha256:6311079cf9451075b4993c6b9d0842db0a7dd568042adad4626b0b206da12840" [label=""];
  "sha256:6311079cf9451075b4993c6b9d0842db0a7dd568042adad4626b0b206da12840" -> "sha256:ec860c80adfea27ba724d2f5453c7e2485f7fea632d5988ca2aa7caaf493d2b8" [label=""];
  "sha256:ec860c80adfea27ba724d2f5453c7e2485f7fea632d5988ca2aa7caaf493d2b8" -> "sha256:192c72075a822649c114463b12db58aba99a582bbc67aab336ae86479de4b94b" [label=""];
}

