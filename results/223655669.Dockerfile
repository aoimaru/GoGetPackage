[app/sources/223655669.Dockerfile]
digraph {
  "sha256:381f5608964dcde3612ac1ed4f9b3c342d541d1da7ea29e14f9177c90bfd60d2" [label="docker-image://docker.io/aegir/hostmaster:latest" shape="ellipse"];
  "sha256:120a134474b7c2c857ce923fc54c600f673fdd06d968bbd3cd46b99738b6fb88" [label="/bin/sh -c drush make $AEGIR_MAKEFILE $AEGIR_HOSTMASTER_ROOT" shape="box"];
  "sha256:6148787a3ea3c192e977065ef780371a320b467f4391d22026815b9e0fddd138" [label="/bin/sh -c drush dl provision-$AEGIR_VERSION --destination=/var/aegir/.drush/commands -y" shape="box"];
  "sha256:64bbe74be0d208a73c579a32e1ed732deeb25b094359fba27d13297cfee9839b" [label="sha256:64bbe74be0d208a73c579a32e1ed732deeb25b094359fba27d13297cfee9839b" shape="plaintext"];
  "sha256:381f5608964dcde3612ac1ed4f9b3c342d541d1da7ea29e14f9177c90bfd60d2" -> "sha256:120a134474b7c2c857ce923fc54c600f673fdd06d968bbd3cd46b99738b6fb88" [label=""];
  "sha256:120a134474b7c2c857ce923fc54c600f673fdd06d968bbd3cd46b99738b6fb88" -> "sha256:6148787a3ea3c192e977065ef780371a320b467f4391d22026815b9e0fddd138" [label=""];
  "sha256:6148787a3ea3c192e977065ef780371a320b467f4391d22026815b9e0fddd138" -> "sha256:64bbe74be0d208a73c579a32e1ed732deeb25b094359fba27d13297cfee9839b" [label=""];
}

