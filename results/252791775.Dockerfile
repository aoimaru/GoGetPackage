[app/sources/252791775.Dockerfile]
digraph {
  "sha256:f091a2f68c947b2c357bee2d83a95fd09b1f8c023152e6293e8006f825ce5551" [label="local://context" shape="ellipse"];
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" [label="docker-image://docker.io/library/node:boron" shape="ellipse"];
  "sha256:c023929c9dc41cc71571710a73608252d61120f3405a37a0572017deb2b4e9ca" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:433f443b6af7bf75bbb4192edd1059a218d499636e22b62dcb168b65516f50fb" [label="mkdir{path=/app}" shape="note"];
  "sha256:f38fde418a8f964babfebbe510578ae607373f6a99501047da3d660dd95b5a21" [label="copy{src=/package.json, dest=/app}" shape="note"];
  "sha256:f09648876edca7752ba80e0281a4841e2de94fb6f91342a8a3ad5db7195d1128" [label="/bin/sh -c npm install" shape="box"];
  "sha256:8e950201ef2babad140caea29efd83a36957bc05fefa3712082e57f01b2c0a4b" [label="/bin/sh -c npm install nodemon eslint -g" shape="box"];
  "sha256:e9e4e8e7187643e98054c2a01cf8b85bc885e074e5e349da9a8611ebe81eac26" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:44693f7e6e2d490187b5a0fca8ffcd23be5b767dc8a04baba10a4fd01ac70b5f" [label="sha256:44693f7e6e2d490187b5a0fca8ffcd23be5b767dc8a04baba10a4fd01ac70b5f" shape="plaintext"];
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" -> "sha256:c023929c9dc41cc71571710a73608252d61120f3405a37a0572017deb2b4e9ca" [label=""];
  "sha256:c023929c9dc41cc71571710a73608252d61120f3405a37a0572017deb2b4e9ca" -> "sha256:433f443b6af7bf75bbb4192edd1059a218d499636e22b62dcb168b65516f50fb" [label=""];
  "sha256:433f443b6af7bf75bbb4192edd1059a218d499636e22b62dcb168b65516f50fb" -> "sha256:f38fde418a8f964babfebbe510578ae607373f6a99501047da3d660dd95b5a21" [label=""];
  "sha256:f091a2f68c947b2c357bee2d83a95fd09b1f8c023152e6293e8006f825ce5551" -> "sha256:f38fde418a8f964babfebbe510578ae607373f6a99501047da3d660dd95b5a21" [label=""];
  "sha256:f38fde418a8f964babfebbe510578ae607373f6a99501047da3d660dd95b5a21" -> "sha256:f09648876edca7752ba80e0281a4841e2de94fb6f91342a8a3ad5db7195d1128" [label=""];
  "sha256:f09648876edca7752ba80e0281a4841e2de94fb6f91342a8a3ad5db7195d1128" -> "sha256:8e950201ef2babad140caea29efd83a36957bc05fefa3712082e57f01b2c0a4b" [label=""];
  "sha256:8e950201ef2babad140caea29efd83a36957bc05fefa3712082e57f01b2c0a4b" -> "sha256:e9e4e8e7187643e98054c2a01cf8b85bc885e074e5e349da9a8611ebe81eac26" [label=""];
  "sha256:f091a2f68c947b2c357bee2d83a95fd09b1f8c023152e6293e8006f825ce5551" -> "sha256:e9e4e8e7187643e98054c2a01cf8b85bc885e074e5e349da9a8611ebe81eac26" [label=""];
  "sha256:e9e4e8e7187643e98054c2a01cf8b85bc885e074e5e349da9a8611ebe81eac26" -> "sha256:44693f7e6e2d490187b5a0fca8ffcd23be5b767dc8a04baba10a4fd01ac70b5f" [label=""];
}

