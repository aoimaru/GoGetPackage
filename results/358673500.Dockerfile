[app/sources/358673500.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:9ba46fc1621d132da96b97617a33c42845673c5937a00776862d74ff5437870c" [label="/bin/sh -c apt-get update && apt-get install -y orthanc-webviewer && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:5a13e757d0104323759c60d4572af0948696c88c1ad01ac881f51f6f5a9002d2" [label="sha256:5a13e757d0104323759c60d4572af0948696c88c1ad01ac881f51f6f5a9002d2" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:9ba46fc1621d132da96b97617a33c42845673c5937a00776862d74ff5437870c" [label=""];
  "sha256:9ba46fc1621d132da96b97617a33c42845673c5937a00776862d74ff5437870c" -> "sha256:5a13e757d0104323759c60d4572af0948696c88c1ad01ac881f51f6f5a9002d2" [label=""];
}

