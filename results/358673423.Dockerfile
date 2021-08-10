[app/sources/358673423.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:fe5b798f60a8ea9275606f657cc7299d0bf00ca74d6e87a0fa1d19efc6156509" [label="/bin/sh -c apt-get update && apt-get install -y mia-viewit && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:ff32dcb20e91835c1baac8ad86a2b9b36b3b7986ef8dd629f9a7bc41ea19dd1a" [label="sha256:ff32dcb20e91835c1baac8ad86a2b9b36b3b7986ef8dd629f9a7bc41ea19dd1a" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:fe5b798f60a8ea9275606f657cc7299d0bf00ca74d6e87a0fa1d19efc6156509" [label=""];
  "sha256:fe5b798f60a8ea9275606f657cc7299d0bf00ca74d6e87a0fa1d19efc6156509" -> "sha256:ff32dcb20e91835c1baac8ad86a2b9b36b3b7986ef8dd629f9a7bc41ea19dd1a" [label=""];
}

