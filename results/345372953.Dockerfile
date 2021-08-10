[app/sources/345372953.Dockerfile]
digraph {
  "sha256:87f360514f7ae1bca65e1c9bfca725897eb1a467b1b057b3f2909966a3550363" [label="docker-image://docker.io/balenalib/intel-nuc-alpine:3.9-build" shape="ellipse"];
  "sha256:7f70a35c0539e33bf4b12e2e0961f8495cea05ca0c2e85d470556d2addf62be5" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:112d6dcf5703f20c1632dd5e8e08336feaefe2ab9faade13e7d3e8b3ff263ce4" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"6e010100facdbae49d3226c6b1f67ad3212d5cd941050cef721e2e6145c4f1b8  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz" shape="box"];
  "sha256:2a0b89a951fc973408c61878cbad477a71ad578e5ff985d97e9f5ad68090578e" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:70acc69698fb526b1427b3e9a7f285d07bbda31596b99dd807ed1890ca724ebb" [label="mkdir{path=/go}" shape="note"];
  "sha256:281033cd437d5019559031af501539d31ec7451062ccfafde6f5842f77174564" [label="sha256:281033cd437d5019559031af501539d31ec7451062ccfafde6f5842f77174564" shape="plaintext"];
  "sha256:87f360514f7ae1bca65e1c9bfca725897eb1a467b1b057b3f2909966a3550363" -> "sha256:7f70a35c0539e33bf4b12e2e0961f8495cea05ca0c2e85d470556d2addf62be5" [label=""];
  "sha256:7f70a35c0539e33bf4b12e2e0961f8495cea05ca0c2e85d470556d2addf62be5" -> "sha256:112d6dcf5703f20c1632dd5e8e08336feaefe2ab9faade13e7d3e8b3ff263ce4" [label=""];
  "sha256:112d6dcf5703f20c1632dd5e8e08336feaefe2ab9faade13e7d3e8b3ff263ce4" -> "sha256:2a0b89a951fc973408c61878cbad477a71ad578e5ff985d97e9f5ad68090578e" [label=""];
  "sha256:2a0b89a951fc973408c61878cbad477a71ad578e5ff985d97e9f5ad68090578e" -> "sha256:70acc69698fb526b1427b3e9a7f285d07bbda31596b99dd807ed1890ca724ebb" [label=""];
  "sha256:70acc69698fb526b1427b3e9a7f285d07bbda31596b99dd807ed1890ca724ebb" -> "sha256:281033cd437d5019559031af501539d31ec7451062ccfafde6f5842f77174564" [label=""];
}

