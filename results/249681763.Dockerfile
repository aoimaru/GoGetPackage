[app/sources/249681763.Dockerfile]
digraph {
  "sha256:fed2184a60800ca1bd93dcf7ac166be9b08716b025fbdc6df3b78b77ff931305" [label="docker-image://docker.io/openshift/origin:latest" shape="ellipse"];
  "sha256:1f09ed5d8a5e0c0c0b1041587d5bac0b1ef3e152fdb6001ebe179f87d4b79025" [label="local://context" shape="ellipse"];
  "sha256:2b6541bcbb0a4489dfce50457df61544966c9e0a4e31d25a3aeaf4908b27f541" [label="copy{src=/services, dest=/exports/},copy{src=/templates, dest=/exports/},copy{src=/setup-atomic-registry.sh, dest=/exports/}" shape="note"];
  "sha256:e2c70bfa9cee960aa3153ad65ff329c13f17a2282c302df5b2cdbea4e4257997" [label="copy{src=/install.sh, dest=/usr/bin/},copy{src=/uninstall.sh, dest=/usr/bin/}" shape="note"];
  "sha256:a5f14f78de566b3aae9ade19e6c8cd0840b0ed1c79a04298f2feef853f2b76fd" [label="sha256:a5f14f78de566b3aae9ade19e6c8cd0840b0ed1c79a04298f2feef853f2b76fd" shape="plaintext"];
  "sha256:fed2184a60800ca1bd93dcf7ac166be9b08716b025fbdc6df3b78b77ff931305" -> "sha256:2b6541bcbb0a4489dfce50457df61544966c9e0a4e31d25a3aeaf4908b27f541" [label=""];
  "sha256:1f09ed5d8a5e0c0c0b1041587d5bac0b1ef3e152fdb6001ebe179f87d4b79025" -> "sha256:2b6541bcbb0a4489dfce50457df61544966c9e0a4e31d25a3aeaf4908b27f541" [label=""];
  "sha256:2b6541bcbb0a4489dfce50457df61544966c9e0a4e31d25a3aeaf4908b27f541" -> "sha256:e2c70bfa9cee960aa3153ad65ff329c13f17a2282c302df5b2cdbea4e4257997" [label=""];
  "sha256:1f09ed5d8a5e0c0c0b1041587d5bac0b1ef3e152fdb6001ebe179f87d4b79025" -> "sha256:e2c70bfa9cee960aa3153ad65ff329c13f17a2282c302df5b2cdbea4e4257997" [label=""];
  "sha256:e2c70bfa9cee960aa3153ad65ff329c13f17a2282c302df5b2cdbea4e4257997" -> "sha256:a5f14f78de566b3aae9ade19e6c8cd0840b0ed1c79a04298f2feef853f2b76fd" [label=""];
}

