[app/sources/433236439.Dockerfile]
digraph {
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" [label="docker-image://docker.io/library/python:3-alpine" shape="ellipse"];
  "sha256:64c660a6aebe619798be361723064366a2e4f1aae9f671cd56cdb39217e8c8ed" [label="/bin/sh -c apk add --update build-base libffi-dev openssl-dev python-dev py-pip     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:5153eb136123c4eb6d65fa07bf09baf5f9b968182b736576df0164a045f0dd97" [label="/bin/sh -c pip install -U pip     && pip install autobahn[twisted,asyncio,accelerate,serialization,encryption]==${AUTOBAHN_PYTHON_VERSION}" shape="box"];
  "sha256:c552134f08820d63e73c279643967c3e5642aba77a6aa008d09fb5b66d4c18c5" [label="local://context" shape="ellipse"];
  "sha256:fbb2f6c4e19aa573772bc12d88f6aeb541e0826f6d56f31f3c53b394ab1ffedb" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:2fad1c7824810ec9bef37930c0cd208821f45da7e2fe7d9f4c33ae6f845aa033" [label="/bin/sh -c ln -s /app/client_tx.py /app/client.py" shape="box"];
  "sha256:074ebccbaafb87371d10b45052324d88d71028d311b3b047ee285d0847d5c690" [label="mkdir{path=/app}" shape="note"];
  "sha256:bb226c2fe3b22a4faee9588d74e3d6292b6ff1eba1ed098e03c8a8ab3ca327ea" [label="sha256:bb226c2fe3b22a4faee9588d74e3d6292b6ff1eba1ed098e03c8a8ab3ca327ea" shape="plaintext"];
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" -> "sha256:64c660a6aebe619798be361723064366a2e4f1aae9f671cd56cdb39217e8c8ed" [label=""];
  "sha256:64c660a6aebe619798be361723064366a2e4f1aae9f671cd56cdb39217e8c8ed" -> "sha256:5153eb136123c4eb6d65fa07bf09baf5f9b968182b736576df0164a045f0dd97" [label=""];
  "sha256:5153eb136123c4eb6d65fa07bf09baf5f9b968182b736576df0164a045f0dd97" -> "sha256:fbb2f6c4e19aa573772bc12d88f6aeb541e0826f6d56f31f3c53b394ab1ffedb" [label=""];
  "sha256:c552134f08820d63e73c279643967c3e5642aba77a6aa008d09fb5b66d4c18c5" -> "sha256:fbb2f6c4e19aa573772bc12d88f6aeb541e0826f6d56f31f3c53b394ab1ffedb" [label=""];
  "sha256:fbb2f6c4e19aa573772bc12d88f6aeb541e0826f6d56f31f3c53b394ab1ffedb" -> "sha256:2fad1c7824810ec9bef37930c0cd208821f45da7e2fe7d9f4c33ae6f845aa033" [label=""];
  "sha256:2fad1c7824810ec9bef37930c0cd208821f45da7e2fe7d9f4c33ae6f845aa033" -> "sha256:074ebccbaafb87371d10b45052324d88d71028d311b3b047ee285d0847d5c690" [label=""];
  "sha256:074ebccbaafb87371d10b45052324d88d71028d311b3b047ee285d0847d5c690" -> "sha256:bb226c2fe3b22a4faee9588d74e3d6292b6ff1eba1ed098e03c8a8ab3ca327ea" [label=""];
}

