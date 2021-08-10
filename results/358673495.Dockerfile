[app/sources/358673495.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:b4957eebb86ac340d9ecfa09cb65686279b9e4dab87b8ccb0d17c7538f9ef776" [label="/bin/sh -c apt-get update && apt-get install -y python3-openslide && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:2f2a4b425f643668d33b6ae9f7da33719996aa0ffa6e161e84511e5403a65790" [label="sha256:2f2a4b425f643668d33b6ae9f7da33719996aa0ffa6e161e84511e5403a65790" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:b4957eebb86ac340d9ecfa09cb65686279b9e4dab87b8ccb0d17c7538f9ef776" [label=""];
  "sha256:b4957eebb86ac340d9ecfa09cb65686279b9e4dab87b8ccb0d17c7538f9ef776" -> "sha256:2f2a4b425f643668d33b6ae9f7da33719996aa0ffa6e161e84511e5403a65790" [label=""];
}

