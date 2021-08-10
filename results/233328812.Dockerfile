[app/sources/233328812.Dockerfile]
digraph {
  "sha256:8908dcaf495598a7121c2a9ed6678542b4e8763c700e11c028919531f463b405" [label="docker-image://docker.io/library/postgres:10" shape="ellipse"];
  "sha256:ad84b0e48cd70443339735ab5381c1c97b461b6d07d1442267a9552ca24efce8" [label="local://context" shape="ellipse"];
  "sha256:23302d1cd46f5ac9fe9951e7899f9887a03e63e821da6d3f3e9349f78af2a700" [label="copy{src=/docker-entrypoint-initdb.d/init-db.sh, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:2af65af27c0b715300fcf4269cdadfbea514daf4345909965e598ad87e6f6a48" [label="/bin/sh -c localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8" shape="box"];
  "sha256:5c05fa654b34297eb0774c6dc2671c6eb83dba6e499fa237811c6ced3ccaa1d3" [label="sha256:5c05fa654b34297eb0774c6dc2671c6eb83dba6e499fa237811c6ced3ccaa1d3" shape="plaintext"];
  "sha256:8908dcaf495598a7121c2a9ed6678542b4e8763c700e11c028919531f463b405" -> "sha256:23302d1cd46f5ac9fe9951e7899f9887a03e63e821da6d3f3e9349f78af2a700" [label=""];
  "sha256:ad84b0e48cd70443339735ab5381c1c97b461b6d07d1442267a9552ca24efce8" -> "sha256:23302d1cd46f5ac9fe9951e7899f9887a03e63e821da6d3f3e9349f78af2a700" [label=""];
  "sha256:23302d1cd46f5ac9fe9951e7899f9887a03e63e821da6d3f3e9349f78af2a700" -> "sha256:2af65af27c0b715300fcf4269cdadfbea514daf4345909965e598ad87e6f6a48" [label=""];
  "sha256:2af65af27c0b715300fcf4269cdadfbea514daf4345909965e598ad87e6f6a48" -> "sha256:5c05fa654b34297eb0774c6dc2671c6eb83dba6e499fa237811c6ced3ccaa1d3" [label=""];
}

