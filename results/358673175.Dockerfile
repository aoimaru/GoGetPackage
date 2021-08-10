[app/sources/358673175.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:b2ecebdc884f33317e902aa717dcce3ee190b6c92a04dbf35c50e25bdf154a87" [label="/bin/sh -c apt-get update && apt-get install -y conservation-code && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:80b80ca13fee8fd7ab6984ac4f22795201aea54f4a6829c8c03d27b0c73115f6" [label="sha256:80b80ca13fee8fd7ab6984ac4f22795201aea54f4a6829c8c03d27b0c73115f6" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:b2ecebdc884f33317e902aa717dcce3ee190b6c92a04dbf35c50e25bdf154a87" [label=""];
  "sha256:b2ecebdc884f33317e902aa717dcce3ee190b6c92a04dbf35c50e25bdf154a87" -> "sha256:80b80ca13fee8fd7ab6984ac4f22795201aea54f4a6829c8c03d27b0c73115f6" [label=""];
}

