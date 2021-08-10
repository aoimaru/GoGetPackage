[app/sources/479582242.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:e3554b3e643e35116fc97bb0033b6cee93ac820eec0dbdabbdd4a81aa515e8d5" [label="local://context" shape="ellipse"];
  "sha256:9a202f4ef2dc23c0a1015310a343a54740bc16bce43746d976a98f944719189e" [label="copy{src=/build/irap_docker_setup.sh, dest=/build}" shape="note"];
  "sha256:4cca9ba0da8edfcc5d0ba148faca872288eb0adc13e1048ad8e7f6ecc802b1cf" [label="/bin/sh -c bash build ubuntu_16 $IRAP_VERSION full" shape="box"];
  "sha256:3b06fa786b2788bef2e3813bb2781f6f5f6eacb45b3b3380162c60bde9547016" [label="sha256:3b06fa786b2788bef2e3813bb2781f6f5f6eacb45b3b3380162c60bde9547016" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:9a202f4ef2dc23c0a1015310a343a54740bc16bce43746d976a98f944719189e" [label=""];
  "sha256:e3554b3e643e35116fc97bb0033b6cee93ac820eec0dbdabbdd4a81aa515e8d5" -> "sha256:9a202f4ef2dc23c0a1015310a343a54740bc16bce43746d976a98f944719189e" [label=""];
  "sha256:9a202f4ef2dc23c0a1015310a343a54740bc16bce43746d976a98f944719189e" -> "sha256:4cca9ba0da8edfcc5d0ba148faca872288eb0adc13e1048ad8e7f6ecc802b1cf" [label=""];
  "sha256:4cca9ba0da8edfcc5d0ba148faca872288eb0adc13e1048ad8e7f6ecc802b1cf" -> "sha256:3b06fa786b2788bef2e3813bb2781f6f5f6eacb45b3b3380162c60bde9547016" [label=""];
}

