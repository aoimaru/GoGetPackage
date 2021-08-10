[app/sources/358673476.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:82cbd21988cb90061e7d5e5bf8fae3950fa4514ec32c2cf995604690f388c628" [label="/bin/sh -c apt-get update && apt-get install -y ncoils && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:f4d727c7b3dfa1ad63872100825f6f0767fde720370571b60a5d085ab774cb68" [label="sha256:f4d727c7b3dfa1ad63872100825f6f0767fde720370571b60a5d085ab774cb68" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:82cbd21988cb90061e7d5e5bf8fae3950fa4514ec32c2cf995604690f388c628" [label=""];
  "sha256:82cbd21988cb90061e7d5e5bf8fae3950fa4514ec32c2cf995604690f388c628" -> "sha256:f4d727c7b3dfa1ad63872100825f6f0767fde720370571b60a5d085ab774cb68" [label=""];
}

