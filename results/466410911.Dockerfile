[app/sources/466410911.Dockerfile]
digraph {
  "sha256:427f35ce4a9d513c24ddaea3b2f3263e0d6e3a39978b2751c74e13dac2c93adb" [label="docker-image://docker.io/mhart/alpine-node:latest" shape="ellipse"];
  "sha256:e3b8dad5315c62f370ed0fb1b4c9a15344cdf9d27897c482ca2f27b46442d05b" [label="mkdir{path=/app}" shape="note"];
  "sha256:1a701f2f27456b2983a6f83bd5d206b6c8666ab33162805caf92b273cf43b10a" [label="local://context" shape="ellipse"];
  "sha256:5b901b42a962110a8685cf04fc93fcadbf83ab80e50b8c4c03dc184d201a0ab2" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:f70f110477ffafd43a4aad533d48c28ee06e10fca84551adb20a4cca37ad447a" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:bfb122b840799d0c57772d7b389341172b15aef4a65e161d1adfc75bcebaa12c" [label="/bin/sh -c yarn build" shape="box"];
  "sha256:8102b58f91172bd1747d1e88e1d5ad004c5fbe6589db3ec8c38c196d3eb8c66d" [label="sha256:8102b58f91172bd1747d1e88e1d5ad004c5fbe6589db3ec8c38c196d3eb8c66d" shape="plaintext"];
  "sha256:427f35ce4a9d513c24ddaea3b2f3263e0d6e3a39978b2751c74e13dac2c93adb" -> "sha256:e3b8dad5315c62f370ed0fb1b4c9a15344cdf9d27897c482ca2f27b46442d05b" [label=""];
  "sha256:e3b8dad5315c62f370ed0fb1b4c9a15344cdf9d27897c482ca2f27b46442d05b" -> "sha256:5b901b42a962110a8685cf04fc93fcadbf83ab80e50b8c4c03dc184d201a0ab2" [label=""];
  "sha256:1a701f2f27456b2983a6f83bd5d206b6c8666ab33162805caf92b273cf43b10a" -> "sha256:5b901b42a962110a8685cf04fc93fcadbf83ab80e50b8c4c03dc184d201a0ab2" [label=""];
  "sha256:5b901b42a962110a8685cf04fc93fcadbf83ab80e50b8c4c03dc184d201a0ab2" -> "sha256:f70f110477ffafd43a4aad533d48c28ee06e10fca84551adb20a4cca37ad447a" [label=""];
  "sha256:f70f110477ffafd43a4aad533d48c28ee06e10fca84551adb20a4cca37ad447a" -> "sha256:bfb122b840799d0c57772d7b389341172b15aef4a65e161d1adfc75bcebaa12c" [label=""];
  "sha256:bfb122b840799d0c57772d7b389341172b15aef4a65e161d1adfc75bcebaa12c" -> "sha256:8102b58f91172bd1747d1e88e1d5ad004c5fbe6589db3ec8c38c196d3eb8c66d" [label=""];
}

