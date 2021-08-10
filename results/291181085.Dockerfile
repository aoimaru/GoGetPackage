[app/sources/291181085.Dockerfile]
digraph {
  "sha256:2e242e8164a5ff5719dda30ee402c12f4f1a95413c1089791a48c8d0ecaabb53" [label="docker-image://docker.io/circleci/mongo:3.6.12-xenial@sha256:9a644135f98b758f058acbb73da89b66fb7dd2015e17763be2949ceeefb1e60d" shape="ellipse"];
  "sha256:43ab51e29c9f4088109bf3d4b2323fb401043b4124eb3cff9501b202f63e2600" [label="/bin/sh -c sed -i '/exec \"$@\"/i mkdir \\/dev\\/shm\\/mongo' /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:8cabe8ef418b6e81108d079dc105f0557e933a5bdeb2eee312a47a0832a9918a" [label="sha256:8cabe8ef418b6e81108d079dc105f0557e933a5bdeb2eee312a47a0832a9918a" shape="plaintext"];
  "sha256:2e242e8164a5ff5719dda30ee402c12f4f1a95413c1089791a48c8d0ecaabb53" -> "sha256:43ab51e29c9f4088109bf3d4b2323fb401043b4124eb3cff9501b202f63e2600" [label=""];
  "sha256:43ab51e29c9f4088109bf3d4b2323fb401043b4124eb3cff9501b202f63e2600" -> "sha256:8cabe8ef418b6e81108d079dc105f0557e933a5bdeb2eee312a47a0832a9918a" [label=""];
}

