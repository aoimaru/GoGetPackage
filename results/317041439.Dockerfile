[app/sources/317041439.Dockerfile]
digraph {
  "sha256:1256033def63fcc2a29ef1a915e2099bb8d184fd81a2e484d73104d9f5a01e63" [label="docker-image://docker.io/library/rust:latest" shape="ellipse"];
  "sha256:f8334bcde160d2f9fb4c1b7614e0a78e9dd8e11a933a9999e8c670fddbf9c5fe" [label="/bin/sh -c apt-get update &&     apt-get install -y libibverbs-dev clang &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c5493a2595389b90ae55d27ea15dd9cd130394f8b5583e42917f0ae89a677594" [label="sha256:c5493a2595389b90ae55d27ea15dd9cd130394f8b5583e42917f0ae89a677594" shape="plaintext"];
  "sha256:1256033def63fcc2a29ef1a915e2099bb8d184fd81a2e484d73104d9f5a01e63" -> "sha256:f8334bcde160d2f9fb4c1b7614e0a78e9dd8e11a933a9999e8c670fddbf9c5fe" [label=""];
  "sha256:f8334bcde160d2f9fb4c1b7614e0a78e9dd8e11a933a9999e8c670fddbf9c5fe" -> "sha256:c5493a2595389b90ae55d27ea15dd9cd130394f8b5583e42917f0ae89a677594" [label=""];
}

