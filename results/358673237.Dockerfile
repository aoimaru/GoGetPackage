[app/sources/358673237.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:e3fbee008b3ad06343419426851c6a93750087e95829bb58d8d05dfe4c502d63" [label="/bin/sh -c apt-get update && apt-get install -y ea-utils && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:2ac178351e8d83ecf27bc690a5712adb3f9e26826763cb8bf866e39a384ee238" [label="sha256:2ac178351e8d83ecf27bc690a5712adb3f9e26826763cb8bf866e39a384ee238" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:e3fbee008b3ad06343419426851c6a93750087e95829bb58d8d05dfe4c502d63" [label=""];
  "sha256:e3fbee008b3ad06343419426851c6a93750087e95829bb58d8d05dfe4c502d63" -> "sha256:2ac178351e8d83ecf27bc690a5712adb3f9e26826763cb8bf866e39a384ee238" [label=""];
}

