[app/sources/252801992.Dockerfile]
digraph {
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" [label="docker-image://docker.io/library/python:2.7-slim" shape="ellipse"];
  "sha256:824ea6478b89d83317005015d9f2485825021bacf66e1bb3852a745dcf0a2570" [label="/bin/sh -c runDeps=\"gcc make libldap2-dev libsasl2-dev libssl-dev\" && apt-get update -y && apt-get install -y --no-install-recommends $runDeps && rm -vrf /var/lib/apt/lists/* && mkdir -p $PROJ_DIR/instance" shape="box"];
  "sha256:2a6c547d01f1e807be914ce7a3552f31d79ae6905f84483c94a739c38f1739aa" [label="local://context" shape="ellipse"];
  "sha256:a3f40a80513ff4dc13f921b724d2fedc38fa61666f676d0715c847eda0088063" [label="copy{src=/requirements.txt, dest=/gioland}" shape="note"];
  "sha256:6e86913f65a6477f6a0ace43582aa8d0e616d76233fe60fa96ffa6162d4f7804" [label="mkdir{path=/gioland}" shape="note"];
  "sha256:45154029ba2e286d8396a7d303cc786b5e4435e2a9bd9a692b98190ce511d89e" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:018ea9b8bbb64d68e87f7cb8307674dcd35cbd93374a2a3323c93f2f633ec690" [label="copy{src=/, dest=/gioland}" shape="note"];
  "sha256:bf4f134fce012ab1ab41e11aeeeb2e954b2c9be9a3003b7216898aa5bac4adb9" [label="/bin/sh -c cd $PROJ_DIR/docs && make html" shape="box"];
  "sha256:3dcc96ca5470ac62912607b85f47cae5fceaa3df39d0ce5cff45f1ae354cf8c8" [label="sha256:3dcc96ca5470ac62912607b85f47cae5fceaa3df39d0ce5cff45f1ae354cf8c8" shape="plaintext"];
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" -> "sha256:824ea6478b89d83317005015d9f2485825021bacf66e1bb3852a745dcf0a2570" [label=""];
  "sha256:824ea6478b89d83317005015d9f2485825021bacf66e1bb3852a745dcf0a2570" -> "sha256:a3f40a80513ff4dc13f921b724d2fedc38fa61666f676d0715c847eda0088063" [label=""];
  "sha256:2a6c547d01f1e807be914ce7a3552f31d79ae6905f84483c94a739c38f1739aa" -> "sha256:a3f40a80513ff4dc13f921b724d2fedc38fa61666f676d0715c847eda0088063" [label=""];
  "sha256:a3f40a80513ff4dc13f921b724d2fedc38fa61666f676d0715c847eda0088063" -> "sha256:6e86913f65a6477f6a0ace43582aa8d0e616d76233fe60fa96ffa6162d4f7804" [label=""];
  "sha256:6e86913f65a6477f6a0ace43582aa8d0e616d76233fe60fa96ffa6162d4f7804" -> "sha256:45154029ba2e286d8396a7d303cc786b5e4435e2a9bd9a692b98190ce511d89e" [label=""];
  "sha256:45154029ba2e286d8396a7d303cc786b5e4435e2a9bd9a692b98190ce511d89e" -> "sha256:018ea9b8bbb64d68e87f7cb8307674dcd35cbd93374a2a3323c93f2f633ec690" [label=""];
  "sha256:2a6c547d01f1e807be914ce7a3552f31d79ae6905f84483c94a739c38f1739aa" -> "sha256:018ea9b8bbb64d68e87f7cb8307674dcd35cbd93374a2a3323c93f2f633ec690" [label=""];
  "sha256:018ea9b8bbb64d68e87f7cb8307674dcd35cbd93374a2a3323c93f2f633ec690" -> "sha256:bf4f134fce012ab1ab41e11aeeeb2e954b2c9be9a3003b7216898aa5bac4adb9" [label=""];
  "sha256:bf4f134fce012ab1ab41e11aeeeb2e954b2c9be9a3003b7216898aa5bac4adb9" -> "sha256:3dcc96ca5470ac62912607b85f47cae5fceaa3df39d0ce5cff45f1ae354cf8c8" [label=""];
}

