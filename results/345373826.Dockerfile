[app/sources/345373826.Dockerfile]
digraph {
  "sha256:078e2236f76a1c81b9b8ba61ddde59f7302c644cc13d910413e34d0cad2d514a" [label="docker-image://docker.io/balenalib/nanopc-t4-debian:sid-run" shape="ellipse"];
  "sha256:c5451b5cb0e3c9ab0fe6edfa9312e990953526c43707187909587c03c421b874" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9a7c874fa79211ee87491a4b4f0f3e85f34e088718b477af621657b8b2df6ea8" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:dc82c13d04f831fc35b64829b6a6a5f7020bb7c3946e7e726b6e205fde3c1e6b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ceef185c79b8503b73447b2d49a0ce907b378dd190c49453b594a78c42015505" [label="mkdir{path=/go}" shape="note"];
  "sha256:a2edf72f8ab2ca307ec0c6fbbd2664a192734cedec4f737c40596c3a0892c41c" [label="sha256:a2edf72f8ab2ca307ec0c6fbbd2664a192734cedec4f737c40596c3a0892c41c" shape="plaintext"];
  "sha256:078e2236f76a1c81b9b8ba61ddde59f7302c644cc13d910413e34d0cad2d514a" -> "sha256:c5451b5cb0e3c9ab0fe6edfa9312e990953526c43707187909587c03c421b874" [label=""];
  "sha256:c5451b5cb0e3c9ab0fe6edfa9312e990953526c43707187909587c03c421b874" -> "sha256:9a7c874fa79211ee87491a4b4f0f3e85f34e088718b477af621657b8b2df6ea8" [label=""];
  "sha256:9a7c874fa79211ee87491a4b4f0f3e85f34e088718b477af621657b8b2df6ea8" -> "sha256:dc82c13d04f831fc35b64829b6a6a5f7020bb7c3946e7e726b6e205fde3c1e6b" [label=""];
  "sha256:dc82c13d04f831fc35b64829b6a6a5f7020bb7c3946e7e726b6e205fde3c1e6b" -> "sha256:ceef185c79b8503b73447b2d49a0ce907b378dd190c49453b594a78c42015505" [label=""];
  "sha256:ceef185c79b8503b73447b2d49a0ce907b378dd190c49453b594a78c42015505" -> "sha256:a2edf72f8ab2ca307ec0c6fbbd2664a192734cedec4f737c40596c3a0892c41c" [label=""];
}

