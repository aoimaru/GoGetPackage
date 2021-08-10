[app/sources/475797892.Dockerfile]
digraph {
  "sha256:8f316c354b46f447af44b12d8c0b790db18195064e9871d254f7300c361ed32a" [label="docker-image://docker.io/circleci/node:8.9.4@sha256:24e35a687948c0a1addfa7e6145f5ae22fda663b457139380f3132e16be0ffb5" shape="ellipse"];
  "sha256:258fa8185ed6bf952a2351b03be36e25c8b3f9b88491f1bf5d9e24e6f1b9d3ee" [label="/bin/sh -c sudo apt-get -y install --no-install-recommends libunwind8=1.1-3.2" shape="box"];
  "sha256:d80161b4aa383ef2905d2eeb5ad5d5341dd7428c7df662c8a62b200a5b1110c5" [label="sha256:d80161b4aa383ef2905d2eeb5ad5d5341dd7428c7df662c8a62b200a5b1110c5" shape="plaintext"];
  "sha256:8f316c354b46f447af44b12d8c0b790db18195064e9871d254f7300c361ed32a" -> "sha256:258fa8185ed6bf952a2351b03be36e25c8b3f9b88491f1bf5d9e24e6f1b9d3ee" [label=""];
  "sha256:258fa8185ed6bf952a2351b03be36e25c8b3f9b88491f1bf5d9e24e6f1b9d3ee" -> "sha256:d80161b4aa383ef2905d2eeb5ad5d5341dd7428c7df662c8a62b200a5b1110c5" [label=""];
}

