[app/sources/269843212.Dockerfile]
digraph {
  "sha256:10d23ded8f471082ab640db554cb9f69d6ff1eb71e0924c2128bd7de84ef2320" [label="docker-image://docker.io/library/node:8.2.1" shape="ellipse"];
  "sha256:8e5f7243600f0c7e64079d1011c7adb363916b57be8f09ce8eec15adf449aca3" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:f0e64a91c40e6b70eb78f99eafbd2f30792e4a9a951264d12f9c550b5c1bad67" [label="local://context" shape="ellipse"];
  "sha256:af0d352feefd5aadf7c479042377621a4c9f2ed6b9d48887c20dcd24ccafbd30" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:2d62ef36cc8ee7f89288555ceaec931aa9a40707ca2feb854f817f78f3b1f975" [label="mkdir{path=/app}" shape="note"];
  "sha256:9a3fe8bcfdd85935d1c5d7af2a297119aee87e289c48bc14424f37aa6d6ed578" [label="/bin/sh -c npm install" shape="box"];
  "sha256:240a86e3a25fd253df38aaddfcac5168db9f568b95d17d6177c150e16e7f2396" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:b566f0985d00501d2e1731a0405d30760c4b09d87b33c00ba03082a4302760f9" [label="sha256:b566f0985d00501d2e1731a0405d30760c4b09d87b33c00ba03082a4302760f9" shape="plaintext"];
  "sha256:10d23ded8f471082ab640db554cb9f69d6ff1eb71e0924c2128bd7de84ef2320" -> "sha256:8e5f7243600f0c7e64079d1011c7adb363916b57be8f09ce8eec15adf449aca3" [label=""];
  "sha256:8e5f7243600f0c7e64079d1011c7adb363916b57be8f09ce8eec15adf449aca3" -> "sha256:af0d352feefd5aadf7c479042377621a4c9f2ed6b9d48887c20dcd24ccafbd30" [label=""];
  "sha256:f0e64a91c40e6b70eb78f99eafbd2f30792e4a9a951264d12f9c550b5c1bad67" -> "sha256:af0d352feefd5aadf7c479042377621a4c9f2ed6b9d48887c20dcd24ccafbd30" [label=""];
  "sha256:af0d352feefd5aadf7c479042377621a4c9f2ed6b9d48887c20dcd24ccafbd30" -> "sha256:2d62ef36cc8ee7f89288555ceaec931aa9a40707ca2feb854f817f78f3b1f975" [label=""];
  "sha256:2d62ef36cc8ee7f89288555ceaec931aa9a40707ca2feb854f817f78f3b1f975" -> "sha256:9a3fe8bcfdd85935d1c5d7af2a297119aee87e289c48bc14424f37aa6d6ed578" [label=""];
  "sha256:9a3fe8bcfdd85935d1c5d7af2a297119aee87e289c48bc14424f37aa6d6ed578" -> "sha256:240a86e3a25fd253df38aaddfcac5168db9f568b95d17d6177c150e16e7f2396" [label=""];
  "sha256:240a86e3a25fd253df38aaddfcac5168db9f568b95d17d6177c150e16e7f2396" -> "sha256:b566f0985d00501d2e1731a0405d30760c4b09d87b33c00ba03082a4302760f9" [label=""];
}

