[app/sources/358673200.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:edbbfccf01b105280eb5d3f61521c29612a00e1234a4fb5efdbee0d994efc13d" [label="/bin/sh -c apt-get update && apt-get install -y dcm2niix && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:087a379a9b8488a821ab83d84468e2a5bf3632553b661ce3335e45d349bb0ce0" [label="sha256:087a379a9b8488a821ab83d84468e2a5bf3632553b661ce3335e45d349bb0ce0" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:edbbfccf01b105280eb5d3f61521c29612a00e1234a4fb5efdbee0d994efc13d" [label=""];
  "sha256:edbbfccf01b105280eb5d3f61521c29612a00e1234a4fb5efdbee0d994efc13d" -> "sha256:087a379a9b8488a821ab83d84468e2a5bf3632553b661ce3335e45d349bb0ce0" [label=""];
}

