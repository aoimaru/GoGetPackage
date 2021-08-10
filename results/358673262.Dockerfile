[app/sources/358673262.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:6726aad3a49f6b675fa1ce1163207ba19961e308eb16e5f72b0bb4bcb28cd896" [label="/bin/sh -c apt-get update && apt-get install -y python-fast5 && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:3b8476188f84a1211a6db35588367d960a1d6b29b68e2e49e480bae254877649" [label="sha256:3b8476188f84a1211a6db35588367d960a1d6b29b68e2e49e480bae254877649" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:6726aad3a49f6b675fa1ce1163207ba19961e308eb16e5f72b0bb4bcb28cd896" [label=""];
  "sha256:6726aad3a49f6b675fa1ce1163207ba19961e308eb16e5f72b0bb4bcb28cd896" -> "sha256:3b8476188f84a1211a6db35588367d960a1d6b29b68e2e49e480bae254877649" [label=""];
}

