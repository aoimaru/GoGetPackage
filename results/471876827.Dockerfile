[app/sources/471876827.Dockerfile]
digraph {
  "sha256:a9803c19ae97ef05dcea2c1e6a88281f0d9a543df4993c416bd251e4e69daf3d" [label="docker-image://docker.io/library/node:11-alpine" shape="ellipse"];
  "sha256:bc53dfbacc58f1fc05f3ae59c4922c91efc2b73882bac85c9b8e07a913ea8ecf" [label="mkdir{path=/app}" shape="note"];
  "sha256:06ef10b67d1bd4469a465827d4ed8e1c851b83e7d03d20cd0d9eae1fc27a3490" [label="/bin/sh -c apk update &&     apk upgrade &&     apk add --no-cache git openssh" shape="box"];
  "sha256:71bbe7338cca81d5fe8c1d7354a17ddf0bdf9c40b42414b550c8d69d26dd9e78" [label="/bin/sh -c npm install -g lerna-changelog@0.8.2" shape="box"];
  "sha256:6173700a0813590ee208e7648d9ee809026695f52baa48ebfc0d9d7e0b0bfa1d" [label="local://context" shape="ellipse"];
  "sha256:5b2fed7ef418ff6b4142d5c19b57ba3833bec0ee3d9d273767e9242dcce56be8" [label="copy{src=/generate.sh, dest=/app/generate.sh}" shape="note"];
  "sha256:be5828e8c3559a131f03152fcdd85df40b0a75e3cf7e4086754ed8fc2684dce5" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:d68f00cfb10e24e9e75c879f529e8fa5f99f7ce1a8cefc05cda55124341f709a" [label="sha256:d68f00cfb10e24e9e75c879f529e8fa5f99f7ce1a8cefc05cda55124341f709a" shape="plaintext"];
  "sha256:a9803c19ae97ef05dcea2c1e6a88281f0d9a543df4993c416bd251e4e69daf3d" -> "sha256:bc53dfbacc58f1fc05f3ae59c4922c91efc2b73882bac85c9b8e07a913ea8ecf" [label=""];
  "sha256:bc53dfbacc58f1fc05f3ae59c4922c91efc2b73882bac85c9b8e07a913ea8ecf" -> "sha256:06ef10b67d1bd4469a465827d4ed8e1c851b83e7d03d20cd0d9eae1fc27a3490" [label=""];
  "sha256:06ef10b67d1bd4469a465827d4ed8e1c851b83e7d03d20cd0d9eae1fc27a3490" -> "sha256:71bbe7338cca81d5fe8c1d7354a17ddf0bdf9c40b42414b550c8d69d26dd9e78" [label=""];
  "sha256:71bbe7338cca81d5fe8c1d7354a17ddf0bdf9c40b42414b550c8d69d26dd9e78" -> "sha256:5b2fed7ef418ff6b4142d5c19b57ba3833bec0ee3d9d273767e9242dcce56be8" [label=""];
  "sha256:6173700a0813590ee208e7648d9ee809026695f52baa48ebfc0d9d7e0b0bfa1d" -> "sha256:5b2fed7ef418ff6b4142d5c19b57ba3833bec0ee3d9d273767e9242dcce56be8" [label=""];
  "sha256:5b2fed7ef418ff6b4142d5c19b57ba3833bec0ee3d9d273767e9242dcce56be8" -> "sha256:be5828e8c3559a131f03152fcdd85df40b0a75e3cf7e4086754ed8fc2684dce5" [label=""];
  "sha256:6173700a0813590ee208e7648d9ee809026695f52baa48ebfc0d9d7e0b0bfa1d" -> "sha256:be5828e8c3559a131f03152fcdd85df40b0a75e3cf7e4086754ed8fc2684dce5" [label=""];
  "sha256:be5828e8c3559a131f03152fcdd85df40b0a75e3cf7e4086754ed8fc2684dce5" -> "sha256:d68f00cfb10e24e9e75c879f529e8fa5f99f7ce1a8cefc05cda55124341f709a" [label=""];
}

