[app/sources/252769671.Dockerfile]
digraph {
  "sha256:9127094bbfa9b57695d09b5959756129fb5c50807462558e116d436d2de88f95" [label="docker-image://docker.io/library/maven:latest" shape="ellipse"];
  "sha256:ea4af22dbb2142e7c0d4d7f1d1a4c6b62c224731ccfdfd9dec0b5d4a11ae9532" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6d08a9cacdcfdbc0e321326c28fc0b780cab13c7078296190bf4bd4e413de0da" [label="/bin/sh -c apt-get install -y apt-utils unzip tar wget zip" shape="box"];
  "sha256:cb07f620b317b893a6f62f36031dd733d982c367e256cbbee64488a3c075fcb2" [label="sha256:cb07f620b317b893a6f62f36031dd733d982c367e256cbbee64488a3c075fcb2" shape="plaintext"];
  "sha256:9127094bbfa9b57695d09b5959756129fb5c50807462558e116d436d2de88f95" -> "sha256:ea4af22dbb2142e7c0d4d7f1d1a4c6b62c224731ccfdfd9dec0b5d4a11ae9532" [label=""];
  "sha256:ea4af22dbb2142e7c0d4d7f1d1a4c6b62c224731ccfdfd9dec0b5d4a11ae9532" -> "sha256:6d08a9cacdcfdbc0e321326c28fc0b780cab13c7078296190bf4bd4e413de0da" [label=""];
  "sha256:6d08a9cacdcfdbc0e321326c28fc0b780cab13c7078296190bf4bd4e413de0da" -> "sha256:cb07f620b317b893a6f62f36031dd733d982c367e256cbbee64488a3c075fcb2" [label=""];
}

