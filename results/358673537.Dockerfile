[app/sources/358673537.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:93f040636bff67d78b79584405bb8fdb63c3c65125ed3a8a9820444633687f29" [label="/bin/sh -c apt-get update && apt-get install -y perm && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:188a35ff9ec449d50459af831c52af02cc33394838e2d0ddfd2c58c48485b0dc" [label="sha256:188a35ff9ec449d50459af831c52af02cc33394838e2d0ddfd2c58c48485b0dc" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:93f040636bff67d78b79584405bb8fdb63c3c65125ed3a8a9820444633687f29" [label=""];
  "sha256:93f040636bff67d78b79584405bb8fdb63c3c65125ed3a8a9820444633687f29" -> "sha256:188a35ff9ec449d50459af831c52af02cc33394838e2d0ddfd2c58c48485b0dc" [label=""];
}

