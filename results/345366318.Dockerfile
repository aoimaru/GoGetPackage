[app/sources/345366318.Dockerfile]
digraph {
  "sha256:a6de6c950fa4b5845a0d20b348b312ef88b2e2d52b8b84253395259e3dd042be" [label="docker-image://docker.io/balenalib/i386-debian:jessie-build" shape="ellipse"];
  "sha256:0f0be60eeda12ae97e755635927b1451247d4a218efbb99b1705bf4a251be9d9" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-386.tar.gz\" \t&& echo \"619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5  go$GO_VERSION.linux-386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-386.tar.gz" shape="box"];
  "sha256:5658e69334415439a6df888b5ceebdc559692abf463a1832097efe7f65b00dde" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:1d388bac9c49df6532554a411fc4d62a14ff19467b72fea73f7cd2f3c29957b8" [label="mkdir{path=/go}" shape="note"];
  "sha256:9eed84c52811386973fed0cb727883c88505f21381c2677b5eea815cbf50b68b" [label="sha256:9eed84c52811386973fed0cb727883c88505f21381c2677b5eea815cbf50b68b" shape="plaintext"];
  "sha256:a6de6c950fa4b5845a0d20b348b312ef88b2e2d52b8b84253395259e3dd042be" -> "sha256:0f0be60eeda12ae97e755635927b1451247d4a218efbb99b1705bf4a251be9d9" [label=""];
  "sha256:0f0be60eeda12ae97e755635927b1451247d4a218efbb99b1705bf4a251be9d9" -> "sha256:5658e69334415439a6df888b5ceebdc559692abf463a1832097efe7f65b00dde" [label=""];
  "sha256:5658e69334415439a6df888b5ceebdc559692abf463a1832097efe7f65b00dde" -> "sha256:1d388bac9c49df6532554a411fc4d62a14ff19467b72fea73f7cd2f3c29957b8" [label=""];
  "sha256:1d388bac9c49df6532554a411fc4d62a14ff19467b72fea73f7cd2f3c29957b8" -> "sha256:9eed84c52811386973fed0cb727883c88505f21381c2677b5eea815cbf50b68b" [label=""];
}

