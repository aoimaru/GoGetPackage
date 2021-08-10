[app/sources/329551432.Dockerfile]
digraph {
  "sha256:7273e3baa35e9f994a41e9989605dded56c8e62fe9ad6d640e48c9947d840aa9" [label="docker-image://docker.io/thecodingmachine/php:7.3-v2-apache" shape="ellipse"];
  "sha256:0c972c887107e5d431fe8b0cee6c4ef325d53963aaf925935fe7430e9d007d20" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends gnupg &&     curl -sL https://deb.nodesource.com/setup_10.x | bash - &&     apt-get update &&     apt-get install -y --no-install-recommends nodejs &&     curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&     echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | tee /etc/apt/sources.list.d/yarn.list &&     apt-get update &&     apt-get install -y --no-install-recommends yarn &&     npm install -g npm" shape="box"];
  "sha256:fa4e06b05bf2f75e96786f96dbd6e9c4ac1ff2a176120bd9517fa615194e3b3c" [label="sha256:fa4e06b05bf2f75e96786f96dbd6e9c4ac1ff2a176120bd9517fa615194e3b3c" shape="plaintext"];
  "sha256:7273e3baa35e9f994a41e9989605dded56c8e62fe9ad6d640e48c9947d840aa9" -> "sha256:0c972c887107e5d431fe8b0cee6c4ef325d53963aaf925935fe7430e9d007d20" [label=""];
  "sha256:0c972c887107e5d431fe8b0cee6c4ef325d53963aaf925935fe7430e9d007d20" -> "sha256:fa4e06b05bf2f75e96786f96dbd6e9c4ac1ff2a176120bd9517fa615194e3b3c" [label=""];
}

