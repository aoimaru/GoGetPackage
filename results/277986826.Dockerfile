[app/sources/277986826.Dockerfile]
digraph {
  "sha256:be16c2bc434496aad4a8df0ff0eade47bfe2451c14064c0557c71a3f7e8b618a" [label="docker-image://docker.io/celrenheit/golang-rocksdb:1.9.1" shape="ellipse"];
  "sha256:e496225cecde156685cce4d2ea946d60cbae3c26d7c33045e54219f40e13c5bd" [label="/bin/sh -c wget https://github.com/goreleaser/goreleaser/releases/download/v0.35.5/goreleaser_Linux_x86_64.tar.gz &&     tar -zxvf goreleaser_Linux_x86_64.tar.gz &&     chmod a+x goreleaser && mv goreleaser /usr/bin/goreleaser" shape="box"];
  "sha256:e7d85faa9e081b359c546c2dbb33b100a69cc4bb0285ca8f4657e5498a5543e2" [label="mkdir{path=/src/github.com/sandglass/sandglass}" shape="note"];
  "sha256:f14e3d6ef109b31f29b0f122d9b3ebbbc6f0f6c72c8a7780d23418dbda181eac" [label="local://context" shape="ellipse"];
  "sha256:5514ea4627e824cd416c19b262eec2073611e883f3750085afef156c73bbf5e8" [label="copy{src=/, dest=/src/github.com/sandglass/sandglass/}" shape="note"];
  "sha256:40becc8b59c8ab232438ab0f455748157d26f0dbefc30920dd7d3a0a1e5d4502" [label="sha256:40becc8b59c8ab232438ab0f455748157d26f0dbefc30920dd7d3a0a1e5d4502" shape="plaintext"];
  "sha256:be16c2bc434496aad4a8df0ff0eade47bfe2451c14064c0557c71a3f7e8b618a" -> "sha256:e496225cecde156685cce4d2ea946d60cbae3c26d7c33045e54219f40e13c5bd" [label=""];
  "sha256:e496225cecde156685cce4d2ea946d60cbae3c26d7c33045e54219f40e13c5bd" -> "sha256:e7d85faa9e081b359c546c2dbb33b100a69cc4bb0285ca8f4657e5498a5543e2" [label=""];
  "sha256:e7d85faa9e081b359c546c2dbb33b100a69cc4bb0285ca8f4657e5498a5543e2" -> "sha256:5514ea4627e824cd416c19b262eec2073611e883f3750085afef156c73bbf5e8" [label=""];
  "sha256:f14e3d6ef109b31f29b0f122d9b3ebbbc6f0f6c72c8a7780d23418dbda181eac" -> "sha256:5514ea4627e824cd416c19b262eec2073611e883f3750085afef156c73bbf5e8" [label=""];
  "sha256:5514ea4627e824cd416c19b262eec2073611e883f3750085afef156c73bbf5e8" -> "sha256:40becc8b59c8ab232438ab0f455748157d26f0dbefc30920dd7d3a0a1e5d4502" [label=""];
}

