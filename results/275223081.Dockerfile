[app/sources/275223081.Dockerfile]
digraph {
  "sha256:4dd68d9768067d2782a3a105ef74103e916c694bc99681a8772636fdfbe2ab60" [label="docker-image://docker.io/library/redis:alpine" shape="ellipse"];
  "sha256:0f0e6a14ce6d74e17b1e5695cca58be4ab5ecc4625f56d084e70ed4834c44236" [label="docker-image://docker.io/lagoon/commons:latest" shape="ellipse"];
  "sha256:9a8eb4226f12ebbaf66587a36c8d0ef7edcfc91ff404c32a1423e335b70ba952" [label="copy{src=/lagoon, dest=/lagoon}" shape="note"];
  "sha256:861f3594871656d677c3be4da2d80a0c935c1112dbc97f3b060741666655545b" [label="copy{src=/bin/fix-permissions, dest=/bin/},copy{src=/bin/ep, dest=/bin/},copy{src=/bin/docker-sleep, dest=/bin/}" shape="note"];
  "sha256:69e98e85febd3767e0a21f394716e6540a065c67cc90e09966be3da8c68b6d66" [label="copy{src=/sbin/tini, dest=/sbin/}" shape="note"];
  "sha256:d61421220f557a9961c456c78322273ca317035830de7f3e7e492d5f94ff48db" [label="copy{src=/home, dest=/home}" shape="note"];
  "sha256:5040f59dc1cbb101b7e1e57b3a88a86fd09612ffcbf09ca5896c70a330b8a814" [label="/bin/sh -c chmod g+w /etc/passwd     && mkdir -p /home" shape="box"];
  "sha256:63b6e8d47881358203940aebcedb32fedb3225420f95dbfdc6568dff49660aee" [label="local://context" shape="ellipse"];
  "sha256:e8750bb902b4de6035376c005fd536d7431a6854a852222d0be17ab9c6e496f5" [label="copy{src=/conf, dest=/etc/redis/}" shape="note"];
  "sha256:6707926be78dacc20b514fcf351e1b0a851e48b27623c570a8949dd2e6f1e6a5" [label="copy{src=/docker-entrypoint, dest=/lagoon/entrypoints/70-redis-entrypoint}" shape="note"];
  "sha256:add442e8b2d5e50f7b52c9ecdd1c46615c6875138750a63d4fe1098b6df49984" [label="/bin/sh -c fix-permissions /etc/redis     fix-permissions /data" shape="box"];
  "sha256:0f0e9ab6a2195736671c9f0145b3776025ec84078b61b81fd0e1682c7da5c8a3" [label="sha256:0f0e9ab6a2195736671c9f0145b3776025ec84078b61b81fd0e1682c7da5c8a3" shape="plaintext"];
  "sha256:4dd68d9768067d2782a3a105ef74103e916c694bc99681a8772636fdfbe2ab60" -> "sha256:9a8eb4226f12ebbaf66587a36c8d0ef7edcfc91ff404c32a1423e335b70ba952" [label=""];
  "sha256:0f0e6a14ce6d74e17b1e5695cca58be4ab5ecc4625f56d084e70ed4834c44236" -> "sha256:9a8eb4226f12ebbaf66587a36c8d0ef7edcfc91ff404c32a1423e335b70ba952" [label=""];
  "sha256:9a8eb4226f12ebbaf66587a36c8d0ef7edcfc91ff404c32a1423e335b70ba952" -> "sha256:861f3594871656d677c3be4da2d80a0c935c1112dbc97f3b060741666655545b" [label=""];
  "sha256:0f0e6a14ce6d74e17b1e5695cca58be4ab5ecc4625f56d084e70ed4834c44236" -> "sha256:861f3594871656d677c3be4da2d80a0c935c1112dbc97f3b060741666655545b" [label=""];
  "sha256:861f3594871656d677c3be4da2d80a0c935c1112dbc97f3b060741666655545b" -> "sha256:69e98e85febd3767e0a21f394716e6540a065c67cc90e09966be3da8c68b6d66" [label=""];
  "sha256:0f0e6a14ce6d74e17b1e5695cca58be4ab5ecc4625f56d084e70ed4834c44236" -> "sha256:69e98e85febd3767e0a21f394716e6540a065c67cc90e09966be3da8c68b6d66" [label=""];
  "sha256:69e98e85febd3767e0a21f394716e6540a065c67cc90e09966be3da8c68b6d66" -> "sha256:d61421220f557a9961c456c78322273ca317035830de7f3e7e492d5f94ff48db" [label=""];
  "sha256:0f0e6a14ce6d74e17b1e5695cca58be4ab5ecc4625f56d084e70ed4834c44236" -> "sha256:d61421220f557a9961c456c78322273ca317035830de7f3e7e492d5f94ff48db" [label=""];
  "sha256:d61421220f557a9961c456c78322273ca317035830de7f3e7e492d5f94ff48db" -> "sha256:5040f59dc1cbb101b7e1e57b3a88a86fd09612ffcbf09ca5896c70a330b8a814" [label=""];
  "sha256:5040f59dc1cbb101b7e1e57b3a88a86fd09612ffcbf09ca5896c70a330b8a814" -> "sha256:e8750bb902b4de6035376c005fd536d7431a6854a852222d0be17ab9c6e496f5" [label=""];
  "sha256:63b6e8d47881358203940aebcedb32fedb3225420f95dbfdc6568dff49660aee" -> "sha256:e8750bb902b4de6035376c005fd536d7431a6854a852222d0be17ab9c6e496f5" [label=""];
  "sha256:e8750bb902b4de6035376c005fd536d7431a6854a852222d0be17ab9c6e496f5" -> "sha256:6707926be78dacc20b514fcf351e1b0a851e48b27623c570a8949dd2e6f1e6a5" [label=""];
  "sha256:63b6e8d47881358203940aebcedb32fedb3225420f95dbfdc6568dff49660aee" -> "sha256:6707926be78dacc20b514fcf351e1b0a851e48b27623c570a8949dd2e6f1e6a5" [label=""];
  "sha256:6707926be78dacc20b514fcf351e1b0a851e48b27623c570a8949dd2e6f1e6a5" -> "sha256:add442e8b2d5e50f7b52c9ecdd1c46615c6875138750a63d4fe1098b6df49984" [label=""];
  "sha256:add442e8b2d5e50f7b52c9ecdd1c46615c6875138750a63d4fe1098b6df49984" -> "sha256:0f0e9ab6a2195736671c9f0145b3776025ec84078b61b81fd0e1682c7da5c8a3" [label=""];
}

