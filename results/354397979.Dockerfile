[app/sources/354397979.Dockerfile]
digraph {
  "sha256:1086b0d3c1357873ea7ec28f3c4e4d6cd03c8ed74b8a4b8a9d6163d97d7c842f" [label="docker-image://docker.io/williamyeh/ansible:centos7-onbuild" shape="ellipse"];
  "sha256:8a584a78ff6572ed4b25203354a982c2be914b71d134de8f37a6db128745cca7" [label="/bin/sh -c echo \"===> Installing the missing \"tar\" utility for Docker image...\"  &&     yum -y install tar" shape="box"];
  "sha256:f062d0ace9a80196317f99c71e4f58483952a13209ab04ef1ee52793ee36c9df" [label="/bin/sh -c sed -i -e 's/^\\(prometheus_version:\\).*$/\\1 git/'                defaults/main.yml" shape="box"];
  "sha256:2cf6c0453371230ef6e0c2315a42daf26d84fb6a350693b8418f8bb29c17622b" [label="/bin/sh -c sed -i -e 's/^\\(prometheus_node_exporter_version:\\).*$/\\1 git/'  defaults/main.yml" shape="box"];
  "sha256:edf860479a8f99370ad74e03d4567f32736c0f90d93f5ccd09a69f4f539fd599" [label="/bin/sh -c sed -i -e 's/^\\(prometheus_alertmanager_version:\\).*$/\\1 git/'   defaults/main.yml" shape="box"];
  "sha256:47104cbbd68b7e9aa5e1b93f3d1edfd075f68755ce1e3a7aa6cdc2638cc48871" [label="/bin/sh -c ansible-playbook-wrapper --extra-vars \"prometheus_use_service=False\" -vvv" shape="box"];
  "sha256:1b864ff6786573cd93e3a3d39a401a6cd6eab2e76f205676ca983b0f4894f22f" [label="/bin/sh -c echo \"==> Removing PID files...\"  &&     rm -f /var/run/prometheus/*" shape="box"];
  "sha256:cb090d033092fc8ec4dccbe4cb1a2d00616964294cbf5469d7d3c317c3f35ff0" [label="/bin/sh -c echo \"===> Installing curl for testing purpose...\"  &&     yum -y install curl" shape="box"];
  "sha256:24f811ccb608092dc3c5b0816e4259ae1f4f8339e0fae364bbba079296ee6b38" [label="sha256:24f811ccb608092dc3c5b0816e4259ae1f4f8339e0fae364bbba079296ee6b38" shape="plaintext"];
  "sha256:1086b0d3c1357873ea7ec28f3c4e4d6cd03c8ed74b8a4b8a9d6163d97d7c842f" -> "sha256:8a584a78ff6572ed4b25203354a982c2be914b71d134de8f37a6db128745cca7" [label=""];
  "sha256:8a584a78ff6572ed4b25203354a982c2be914b71d134de8f37a6db128745cca7" -> "sha256:f062d0ace9a80196317f99c71e4f58483952a13209ab04ef1ee52793ee36c9df" [label=""];
  "sha256:f062d0ace9a80196317f99c71e4f58483952a13209ab04ef1ee52793ee36c9df" -> "sha256:2cf6c0453371230ef6e0c2315a42daf26d84fb6a350693b8418f8bb29c17622b" [label=""];
  "sha256:2cf6c0453371230ef6e0c2315a42daf26d84fb6a350693b8418f8bb29c17622b" -> "sha256:edf860479a8f99370ad74e03d4567f32736c0f90d93f5ccd09a69f4f539fd599" [label=""];
  "sha256:edf860479a8f99370ad74e03d4567f32736c0f90d93f5ccd09a69f4f539fd599" -> "sha256:47104cbbd68b7e9aa5e1b93f3d1edfd075f68755ce1e3a7aa6cdc2638cc48871" [label=""];
  "sha256:47104cbbd68b7e9aa5e1b93f3d1edfd075f68755ce1e3a7aa6cdc2638cc48871" -> "sha256:1b864ff6786573cd93e3a3d39a401a6cd6eab2e76f205676ca983b0f4894f22f" [label=""];
  "sha256:1b864ff6786573cd93e3a3d39a401a6cd6eab2e76f205676ca983b0f4894f22f" -> "sha256:cb090d033092fc8ec4dccbe4cb1a2d00616964294cbf5469d7d3c317c3f35ff0" [label=""];
  "sha256:cb090d033092fc8ec4dccbe4cb1a2d00616964294cbf5469d7d3c317c3f35ff0" -> "sha256:24f811ccb608092dc3c5b0816e4259ae1f4f8339e0fae364bbba079296ee6b38" [label=""];
}

