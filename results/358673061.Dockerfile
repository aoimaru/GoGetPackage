[app/sources/358673061.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:cda219d3c6688d66226b5ce15e27bad10647bf84819ab1492823742dbb91d093" [label="/bin/sh -c apt-get update && apt-get install -y r-bioc-s4vectors && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:a449c3645094f15165852b8859310fa7c82db8e825e5efa0ef2ba3b86735b443" [label="sha256:a449c3645094f15165852b8859310fa7c82db8e825e5efa0ef2ba3b86735b443" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:cda219d3c6688d66226b5ce15e27bad10647bf84819ab1492823742dbb91d093" [label=""];
  "sha256:cda219d3c6688d66226b5ce15e27bad10647bf84819ab1492823742dbb91d093" -> "sha256:a449c3645094f15165852b8859310fa7c82db8e825e5efa0ef2ba3b86735b443" [label=""];
}

