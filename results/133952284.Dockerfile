[app/sources/133952284.Dockerfile]
digraph {
  "sha256:ed91d291a96c9470c61a52c601712b48f14a36ee82342e172d7858e230c1e711" [label="docker-image://docker.io/library/buildpack-deps:xenial-curl" shape="ellipse"];
  "sha256:907e3ad775f6a2586e358552515c39039529b74136e8d3572ceec25811a02f3a" [label="/bin/sh -c mkdir -p /etc/sphinx" shape="box"];
  "sha256:c9b486a2306f0f5167b61976d065bbf1a18dfd81733bd2187f3cb15e8b6797b9" [label="local://context" shape="ellipse"];
  "sha256:ff7620926d05c1d2871ef34710da9d1fd811e4242ddd6d4c4c7a73d7992a84cf" [label="copy{src=/bin/sphinxd, dest=/usr/bin/sphinxd}" shape="note"];
  "sha256:0ed1c31b1102a23286aa962a88d62bfa52aee738ba91a9940ec53f475a6966dd" [label="copy{src=/kvconfig.yml, dest=/kvconfig.yml}" shape="note"];
  "sha256:c638fc2ecf02b3a2037ec49a442f5e85642ca88e6544be42370b28df1377f2f1" [label="sha256:c638fc2ecf02b3a2037ec49a442f5e85642ca88e6544be42370b28df1377f2f1" shape="plaintext"];
  "sha256:ed91d291a96c9470c61a52c601712b48f14a36ee82342e172d7858e230c1e711" -> "sha256:907e3ad775f6a2586e358552515c39039529b74136e8d3572ceec25811a02f3a" [label=""];
  "sha256:907e3ad775f6a2586e358552515c39039529b74136e8d3572ceec25811a02f3a" -> "sha256:ff7620926d05c1d2871ef34710da9d1fd811e4242ddd6d4c4c7a73d7992a84cf" [label=""];
  "sha256:c9b486a2306f0f5167b61976d065bbf1a18dfd81733bd2187f3cb15e8b6797b9" -> "sha256:ff7620926d05c1d2871ef34710da9d1fd811e4242ddd6d4c4c7a73d7992a84cf" [label=""];
  "sha256:ff7620926d05c1d2871ef34710da9d1fd811e4242ddd6d4c4c7a73d7992a84cf" -> "sha256:0ed1c31b1102a23286aa962a88d62bfa52aee738ba91a9940ec53f475a6966dd" [label=""];
  "sha256:c9b486a2306f0f5167b61976d065bbf1a18dfd81733bd2187f3cb15e8b6797b9" -> "sha256:0ed1c31b1102a23286aa962a88d62bfa52aee738ba91a9940ec53f475a6966dd" [label=""];
  "sha256:0ed1c31b1102a23286aa962a88d62bfa52aee738ba91a9940ec53f475a6966dd" -> "sha256:c638fc2ecf02b3a2037ec49a442f5e85642ca88e6544be42370b28df1377f2f1" [label=""];
}

