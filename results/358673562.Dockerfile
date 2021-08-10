[app/sources/358673562.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:fc6f1a61eb741a7fbeb23b0f593f9a2a79b01766d14e7bb7112897298f4c3e50" [label="/bin/sh -c apt-get update && apt-get install -y pixelmed-apps && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:b3f11fdb8e21b1f9277ce76863fc9d85c6c5ab3951ca72c49f13374ab5543c37" [label="sha256:b3f11fdb8e21b1f9277ce76863fc9d85c6c5ab3951ca72c49f13374ab5543c37" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:fc6f1a61eb741a7fbeb23b0f593f9a2a79b01766d14e7bb7112897298f4c3e50" [label=""];
  "sha256:fc6f1a61eb741a7fbeb23b0f593f9a2a79b01766d14e7bb7112897298f4c3e50" -> "sha256:b3f11fdb8e21b1f9277ce76863fc9d85c6c5ab3951ca72c49f13374ab5543c37" [label=""];
}

