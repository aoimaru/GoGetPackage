[app/sources/345360154.Dockerfile]
digraph {
  "sha256:d376d62ec926976df927aba442957ce32739b2d34a7307c83ee560a73adda04d" [label="docker-image://docker.io/balenalib/spacely-tx2-ubuntu:artful-build" shape="ellipse"];
  "sha256:d8110cc44e2eb9c6876760c30b5a221a6619dbdf08da5f78da332fde06d688c1" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:6044dd3856f6bd4d1f3590f8a3d8173df9b78c71def67a3502cf744a78605340" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ebfde340691e489bc1aad34b9c79a4c2e725ea52876f63dae0f1dd97c0e4f0de" [label="mkdir{path=/go}" shape="note"];
  "sha256:9a75aec9ac0e5a4df2b5c6b275705d07ba393e93bdb22ae3000f22d8cc35f4f6" [label="sha256:9a75aec9ac0e5a4df2b5c6b275705d07ba393e93bdb22ae3000f22d8cc35f4f6" shape="plaintext"];
  "sha256:d376d62ec926976df927aba442957ce32739b2d34a7307c83ee560a73adda04d" -> "sha256:d8110cc44e2eb9c6876760c30b5a221a6619dbdf08da5f78da332fde06d688c1" [label=""];
  "sha256:d8110cc44e2eb9c6876760c30b5a221a6619dbdf08da5f78da332fde06d688c1" -> "sha256:6044dd3856f6bd4d1f3590f8a3d8173df9b78c71def67a3502cf744a78605340" [label=""];
  "sha256:6044dd3856f6bd4d1f3590f8a3d8173df9b78c71def67a3502cf744a78605340" -> "sha256:ebfde340691e489bc1aad34b9c79a4c2e725ea52876f63dae0f1dd97c0e4f0de" [label=""];
  "sha256:ebfde340691e489bc1aad34b9c79a4c2e725ea52876f63dae0f1dd97c0e4f0de" -> "sha256:9a75aec9ac0e5a4df2b5c6b275705d07ba393e93bdb22ae3000f22d8cc35f4f6" [label=""];
}

