[app/sources/231459287.Dockerfile]
digraph {
  "sha256:079c2c8433931852ee734eb63995be22b737fc5b6edb6711ee22d0a33cc5e03b" [label="local://context" shape="ellipse"];
  "sha256:7d40b2d1cfb1e4cabe2abffc137998db7405e8f6fc11e9d7b0a0468f0246a2b8" [label="docker-image://docker.io/mustafaakin/java:latest" shape="ellipse"];
  "sha256:ee1a5af2c2b41123b483404d67357329a16058614d0517ee459e5041b2109d91" [label="/bin/sh -c useradd -ms /bin/bash drill --home $DRILL_HOME &&  wget -qO- $DRILL_LINK | tar xvz --strip 1 -C $DRILL_HOME && chown drill -R $DRILL_HOME" shape="box"];
  "sha256:a91785c336f2189f8c665c0e6a6ae6d5b5d43a9200310adb7647b4823bcc72ff" [label="copy{src=/drill-override.conf, dest=/opt/drill/conf/}" shape="note"];
  "sha256:a51836b02038ec8df1a05579b611b2134d4bb826d6e033893bac4c4d2530e6f0" [label="copy{src=/entrypoint.sh, dest=/opt/drill/}" shape="note"];
  "sha256:4ceff6eba11b3d8447a1cf804b5e6df0f07f31dad48ecb38a9c9967184291eed" [label="mkdir{path=/opt/drill}" shape="note"];
  "sha256:796f3e416d0be35133f0ab03085c15b21d13635ee03ee3c99ef6ea308887dc41" [label="sha256:796f3e416d0be35133f0ab03085c15b21d13635ee03ee3c99ef6ea308887dc41" shape="plaintext"];
  "sha256:7d40b2d1cfb1e4cabe2abffc137998db7405e8f6fc11e9d7b0a0468f0246a2b8" -> "sha256:ee1a5af2c2b41123b483404d67357329a16058614d0517ee459e5041b2109d91" [label=""];
  "sha256:ee1a5af2c2b41123b483404d67357329a16058614d0517ee459e5041b2109d91" -> "sha256:a91785c336f2189f8c665c0e6a6ae6d5b5d43a9200310adb7647b4823bcc72ff" [label=""];
  "sha256:079c2c8433931852ee734eb63995be22b737fc5b6edb6711ee22d0a33cc5e03b" -> "sha256:a91785c336f2189f8c665c0e6a6ae6d5b5d43a9200310adb7647b4823bcc72ff" [label=""];
  "sha256:a91785c336f2189f8c665c0e6a6ae6d5b5d43a9200310adb7647b4823bcc72ff" -> "sha256:a51836b02038ec8df1a05579b611b2134d4bb826d6e033893bac4c4d2530e6f0" [label=""];
  "sha256:079c2c8433931852ee734eb63995be22b737fc5b6edb6711ee22d0a33cc5e03b" -> "sha256:a51836b02038ec8df1a05579b611b2134d4bb826d6e033893bac4c4d2530e6f0" [label=""];
  "sha256:a51836b02038ec8df1a05579b611b2134d4bb826d6e033893bac4c4d2530e6f0" -> "sha256:4ceff6eba11b3d8447a1cf804b5e6df0f07f31dad48ecb38a9c9967184291eed" [label=""];
  "sha256:4ceff6eba11b3d8447a1cf804b5e6df0f07f31dad48ecb38a9c9967184291eed" -> "sha256:796f3e416d0be35133f0ab03085c15b21d13635ee03ee3c99ef6ea308887dc41" [label=""];
}

