[app/sources/358673807.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:811d06ccfe42ca9ffcaeeab6ccdf9c7a82edb99bb8ead48dabd3838a21fdb4d0" [label="/bin/sh -c apt-get update && apt-get install -y trimmomatic && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:056f64221f81fcac5355a4ee8e0efefb57f6feb22a2202abc9242dc7a3131caf" [label="sha256:056f64221f81fcac5355a4ee8e0efefb57f6feb22a2202abc9242dc7a3131caf" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:811d06ccfe42ca9ffcaeeab6ccdf9c7a82edb99bb8ead48dabd3838a21fdb4d0" [label=""];
  "sha256:811d06ccfe42ca9ffcaeeab6ccdf9c7a82edb99bb8ead48dabd3838a21fdb4d0" -> "sha256:056f64221f81fcac5355a4ee8e0efefb57f6feb22a2202abc9242dc7a3131caf" [label=""];
}

