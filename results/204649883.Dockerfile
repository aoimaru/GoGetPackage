[app/sources/204649883.Dockerfile]
digraph {
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" [label="docker-image://docker.io/library/fedora:25" shape="ellipse"];
  "sha256:6ec6d87461748752b16632fa7cd35a1ae943edddaedc00507418d8cd6cfb1ec3" [label="/bin/sh -c dnf -y update" shape="box"];
  "sha256:ecb168559cb606056242fca00dda5eea50e658e923d16e800a9972062147517b" [label="/bin/sh -c dnf -y install urh" shape="box"];
  "sha256:e12999b25e1f7919fa22c05d6e25ee506395566e231b633c77038cadc5a2760e" [label="sha256:e12999b25e1f7919fa22c05d6e25ee506395566e231b633c77038cadc5a2760e" shape="plaintext"];
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" -> "sha256:6ec6d87461748752b16632fa7cd35a1ae943edddaedc00507418d8cd6cfb1ec3" [label=""];
  "sha256:6ec6d87461748752b16632fa7cd35a1ae943edddaedc00507418d8cd6cfb1ec3" -> "sha256:ecb168559cb606056242fca00dda5eea50e658e923d16e800a9972062147517b" [label=""];
  "sha256:ecb168559cb606056242fca00dda5eea50e658e923d16e800a9972062147517b" -> "sha256:e12999b25e1f7919fa22c05d6e25ee506395566e231b633c77038cadc5a2760e" [label=""];
}

