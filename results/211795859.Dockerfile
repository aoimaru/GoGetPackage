[app/sources/211795859.Dockerfile]
digraph {
  "sha256:8811b02e1683c09488e11faab5415ebd46f418ed32bf6ee5363ac3990e24a6e6" [label="docker-image://docker.io/library/couchbase:latest" shape="ellipse"];
  "sha256:9827e69d062d741e2fa05cdea36b2fa90633b50c16d304c29682e8dc81e137da" [label="local://context" shape="ellipse"];
  "sha256:4b1ac1c68fde10215450c99f30cb822ef59afdd0189d52bf78f6e6694d34e872" [label="copy{src=/configure-node.sh, dest=/opt/couchbase}" shape="note"];
  "sha256:7840aa9e70bb0d20137c6fff0c19ee0a0ceb75bd5596e301cc4bc31a017a45f6" [label="sha256:7840aa9e70bb0d20137c6fff0c19ee0a0ceb75bd5596e301cc4bc31a017a45f6" shape="plaintext"];
  "sha256:8811b02e1683c09488e11faab5415ebd46f418ed32bf6ee5363ac3990e24a6e6" -> "sha256:4b1ac1c68fde10215450c99f30cb822ef59afdd0189d52bf78f6e6694d34e872" [label=""];
  "sha256:9827e69d062d741e2fa05cdea36b2fa90633b50c16d304c29682e8dc81e137da" -> "sha256:4b1ac1c68fde10215450c99f30cb822ef59afdd0189d52bf78f6e6694d34e872" [label=""];
  "sha256:4b1ac1c68fde10215450c99f30cb822ef59afdd0189d52bf78f6e6694d34e872" -> "sha256:7840aa9e70bb0d20137c6fff0c19ee0a0ceb75bd5596e301cc4bc31a017a45f6" [label=""];
}

