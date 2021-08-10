[app/sources/358673489.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:bae2ac5fe38bc79aab93ca17d62b5463150a1c174b54781db488938ade472274" [label="/bin/sh -c apt-get update && apt-get install -y openmolar && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:5b18a16bc1d394a7ecf68a8786b33d40249535bd761ad9bd104ea2b1d2a429d2" [label="sha256:5b18a16bc1d394a7ecf68a8786b33d40249535bd761ad9bd104ea2b1d2a429d2" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:bae2ac5fe38bc79aab93ca17d62b5463150a1c174b54781db488938ade472274" [label=""];
  "sha256:bae2ac5fe38bc79aab93ca17d62b5463150a1c174b54781db488938ade472274" -> "sha256:5b18a16bc1d394a7ecf68a8786b33d40249535bd761ad9bd104ea2b1d2a429d2" [label=""];
}

