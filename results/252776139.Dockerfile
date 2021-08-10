[app/sources/252776139.Dockerfile]
digraph {
  "sha256:f3d8216f58dce016b2769f3444d29e6400c240e1ca30740080e208ed710cf387" [label="docker-image://docker.io/library/openjdk:8u131-jdk-alpine" shape="ellipse"];
  "sha256:b85389b0a3934c25438a9d7d605128baef9aa6b8170adfebee3067a409f7b3ac" [label="/bin/sh -c apk add --no-cache curl tar bash jq libxml2-utils" shape="box"];
  "sha256:1cda45848c70767c064776ec26f592799d649e3509ab07fb67584db83d4dbe12" [label="local://context" shape="ellipse"];
  "sha256:8ff702fc53b1047f562fcc784cbc3ef4998a58116a5a4fe48f91ec3f75aa5f32" [label="copy{src=/assets, dest=/opt/resource/}" shape="note"];
  "sha256:8ec40edd066c5b84d7e2e4077360bac7a01b7fb118096095428eb0f618ece1dd" [label="copy{src=/test, dest=/opt/resource/test/}" shape="note"];
  "sha256:0f754fb4d8ce610c60b0e97d46a8dc192f6f6bb62884405b334868a8c5b4b058" [label="copy{src=/itest, dest=/opt/resource/itest/}" shape="note"];
  "sha256:831e4b4bfd81d1e3eb5bfc0586e2f57c0d03d4ff058f5d830365beb69665e4b3" [label="/bin/sh -c /opt/resource/test/all.sh" shape="box"];
  "sha256:4ea90e821fe6c24d59f74935917ca46a39e2029b562e9ebf398e4e93c617ee7a" [label="sha256:4ea90e821fe6c24d59f74935917ca46a39e2029b562e9ebf398e4e93c617ee7a" shape="plaintext"];
  "sha256:f3d8216f58dce016b2769f3444d29e6400c240e1ca30740080e208ed710cf387" -> "sha256:b85389b0a3934c25438a9d7d605128baef9aa6b8170adfebee3067a409f7b3ac" [label=""];
  "sha256:b85389b0a3934c25438a9d7d605128baef9aa6b8170adfebee3067a409f7b3ac" -> "sha256:8ff702fc53b1047f562fcc784cbc3ef4998a58116a5a4fe48f91ec3f75aa5f32" [label=""];
  "sha256:1cda45848c70767c064776ec26f592799d649e3509ab07fb67584db83d4dbe12" -> "sha256:8ff702fc53b1047f562fcc784cbc3ef4998a58116a5a4fe48f91ec3f75aa5f32" [label=""];
  "sha256:8ff702fc53b1047f562fcc784cbc3ef4998a58116a5a4fe48f91ec3f75aa5f32" -> "sha256:8ec40edd066c5b84d7e2e4077360bac7a01b7fb118096095428eb0f618ece1dd" [label=""];
  "sha256:1cda45848c70767c064776ec26f592799d649e3509ab07fb67584db83d4dbe12" -> "sha256:8ec40edd066c5b84d7e2e4077360bac7a01b7fb118096095428eb0f618ece1dd" [label=""];
  "sha256:8ec40edd066c5b84d7e2e4077360bac7a01b7fb118096095428eb0f618ece1dd" -> "sha256:0f754fb4d8ce610c60b0e97d46a8dc192f6f6bb62884405b334868a8c5b4b058" [label=""];
  "sha256:1cda45848c70767c064776ec26f592799d649e3509ab07fb67584db83d4dbe12" -> "sha256:0f754fb4d8ce610c60b0e97d46a8dc192f6f6bb62884405b334868a8c5b4b058" [label=""];
  "sha256:0f754fb4d8ce610c60b0e97d46a8dc192f6f6bb62884405b334868a8c5b4b058" -> "sha256:831e4b4bfd81d1e3eb5bfc0586e2f57c0d03d4ff058f5d830365beb69665e4b3" [label=""];
  "sha256:831e4b4bfd81d1e3eb5bfc0586e2f57c0d03d4ff058f5d830365beb69665e4b3" -> "sha256:4ea90e821fe6c24d59f74935917ca46a39e2029b562e9ebf398e4e93c617ee7a" [label=""];
}

