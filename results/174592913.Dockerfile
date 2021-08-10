[app/sources/174592913.Dockerfile]
digraph {
  "sha256:20cc4ba31025e40fb0ac4007f2cc7338a0a81f6fe222b6fe5a91646b508b8e5e" [label="docker-image://docker.io/nixos/nix:latest" shape="ellipse"];
  "sha256:babe06dad6ecccb8a7713ad23dc6680056473cbdf748eb2efd74ced586f9d672" [label="/bin/sh -c nix-channel --update" shape="box"];
  "sha256:d3dea064c9b49d582da02d5b919ff664b507634089a4c440a6c04a585fc6beea" [label="/bin/sh -c nix-env -i git" shape="box"];
  "sha256:657651c78a36f60a1b19438a8da1738b9b28be37e39230efb5349eb1c03c774e" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:8ef542246a0cd8fdbffc32499dbd5c1948edeb41b3f6e55204a626c741b089c3" [label="/bin/sh -c git clone https://github.com/scala-native/scala-native.git native" shape="box"];
  "sha256:458e0846cdbf39235a9fbdc4001ae48966f71041a5d4c85c05765360108269dc" [label="mkdir{path=/tmp/native}" shape="note"];
  "sha256:a6b9681025673d6ebaf9517b2783ed0c143f2fb7dd840155521cbab21cdf7400" [label="/bin/sh -c nix-shell scripts/scala-native.nix -A clangEnv --run \"echo 'clangEnv installed'\"" shape="box"];
  "sha256:37406f53f36fbf5ee0a77dfbe6c0fae62bc8434660516d2349a5a8e8c003095f" [label="/bin/sh -c nix-shell scripts/scala-native.nix -A clangEnv --run \"cd .. && sbt scalaVersion\"" shape="box"];
  "sha256:c2df514a61885c51576a35a457fc4f2cf0467ef061acae4c5da8ed7ce5ffb5eb" [label="/bin/sh -c nix-shell scripts/scala-native.nix -A clangEnv --run \"sbt rebuild\"" shape="box"];
  "sha256:a77e6ddf1072f00c68df1572a6cd97e9067f41e4dcaa8402d5c1e483b67f6f71" [label="sha256:a77e6ddf1072f00c68df1572a6cd97e9067f41e4dcaa8402d5c1e483b67f6f71" shape="plaintext"];
  "sha256:20cc4ba31025e40fb0ac4007f2cc7338a0a81f6fe222b6fe5a91646b508b8e5e" -> "sha256:babe06dad6ecccb8a7713ad23dc6680056473cbdf748eb2efd74ced586f9d672" [label=""];
  "sha256:babe06dad6ecccb8a7713ad23dc6680056473cbdf748eb2efd74ced586f9d672" -> "sha256:d3dea064c9b49d582da02d5b919ff664b507634089a4c440a6c04a585fc6beea" [label=""];
  "sha256:d3dea064c9b49d582da02d5b919ff664b507634089a4c440a6c04a585fc6beea" -> "sha256:657651c78a36f60a1b19438a8da1738b9b28be37e39230efb5349eb1c03c774e" [label=""];
  "sha256:657651c78a36f60a1b19438a8da1738b9b28be37e39230efb5349eb1c03c774e" -> "sha256:8ef542246a0cd8fdbffc32499dbd5c1948edeb41b3f6e55204a626c741b089c3" [label=""];
  "sha256:8ef542246a0cd8fdbffc32499dbd5c1948edeb41b3f6e55204a626c741b089c3" -> "sha256:458e0846cdbf39235a9fbdc4001ae48966f71041a5d4c85c05765360108269dc" [label=""];
  "sha256:458e0846cdbf39235a9fbdc4001ae48966f71041a5d4c85c05765360108269dc" -> "sha256:a6b9681025673d6ebaf9517b2783ed0c143f2fb7dd840155521cbab21cdf7400" [label=""];
  "sha256:a6b9681025673d6ebaf9517b2783ed0c143f2fb7dd840155521cbab21cdf7400" -> "sha256:37406f53f36fbf5ee0a77dfbe6c0fae62bc8434660516d2349a5a8e8c003095f" [label=""];
  "sha256:37406f53f36fbf5ee0a77dfbe6c0fae62bc8434660516d2349a5a8e8c003095f" -> "sha256:c2df514a61885c51576a35a457fc4f2cf0467ef061acae4c5da8ed7ce5ffb5eb" [label=""];
  "sha256:c2df514a61885c51576a35a457fc4f2cf0467ef061acae4c5da8ed7ce5ffb5eb" -> "sha256:a77e6ddf1072f00c68df1572a6cd97e9067f41e4dcaa8402d5c1e483b67f6f71" [label=""];
}

