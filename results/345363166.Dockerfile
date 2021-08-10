[app/sources/345363166.Dockerfile]
digraph {
  "sha256:0a0aa09325a0ef949b0ac324e825055a7a358fff839bc92f0baa684170861860" [label="docker-image://docker.io/balenalib/aarch64-ubuntu:artful-build" shape="ellipse"];
  "sha256:1b51ffc20d8b07023304a4f3405e34ebada2891ddd10fa5079c7135f326efca6" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz" shape="box"];
  "sha256:5574c794213163c7dd8d463320da402c4623ef5b66776369ae84a40aef921154" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8980c1b073a448f0c787e5c549fa09cb219dba4b95bea0c55dab49e5e30aeb59" [label="mkdir{path=/go}" shape="note"];
  "sha256:061f4b4934e7892aa816e4dc0b22b9c02da1f106902219b11b032adc9cec7978" [label="sha256:061f4b4934e7892aa816e4dc0b22b9c02da1f106902219b11b032adc9cec7978" shape="plaintext"];
  "sha256:0a0aa09325a0ef949b0ac324e825055a7a358fff839bc92f0baa684170861860" -> "sha256:1b51ffc20d8b07023304a4f3405e34ebada2891ddd10fa5079c7135f326efca6" [label=""];
  "sha256:1b51ffc20d8b07023304a4f3405e34ebada2891ddd10fa5079c7135f326efca6" -> "sha256:5574c794213163c7dd8d463320da402c4623ef5b66776369ae84a40aef921154" [label=""];
  "sha256:5574c794213163c7dd8d463320da402c4623ef5b66776369ae84a40aef921154" -> "sha256:8980c1b073a448f0c787e5c549fa09cb219dba4b95bea0c55dab49e5e30aeb59" [label=""];
  "sha256:8980c1b073a448f0c787e5c549fa09cb219dba4b95bea0c55dab49e5e30aeb59" -> "sha256:061f4b4934e7892aa816e4dc0b22b9c02da1f106902219b11b032adc9cec7978" [label=""];
}

