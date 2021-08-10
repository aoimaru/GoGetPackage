[app/sources/252777190.Dockerfile]
digraph {
  "sha256:715a600886cde3bb90b622a5d568fede17fa46d2816c29e8e3e8fcd69277cc74" [label="docker-image://docker.io/cepr/ubuntu-xenial-microchip-xc8:latest" shape="ellipse"];
  "sha256:c00ee6a94814161c91cc4d1c82ef9a6473c3ce4450a33aa03db07c9a1d0ef1ce" [label="/bin/sh -c apt-get update && apt-get install -y qt5-default" shape="box"];
  "sha256:702b6499760aba959a69d4d651a8a06768d1020a6bcd6dc84b7590690299ddc1" [label="/bin/sh -c apt-get update && apt-get build-dep -y gerbv && apt-get source -y gerbv && cd gerbv-2.6.0 && dpkg-buildpackage && make install" shape="box"];
  "sha256:25edfb37b4f1259a411d7d74c5ac4213ea06249ab57b9c46f8e285a8f37204eb" [label="sha256:25edfb37b4f1259a411d7d74c5ac4213ea06249ab57b9c46f8e285a8f37204eb" shape="plaintext"];
  "sha256:715a600886cde3bb90b622a5d568fede17fa46d2816c29e8e3e8fcd69277cc74" -> "sha256:c00ee6a94814161c91cc4d1c82ef9a6473c3ce4450a33aa03db07c9a1d0ef1ce" [label=""];
  "sha256:c00ee6a94814161c91cc4d1c82ef9a6473c3ce4450a33aa03db07c9a1d0ef1ce" -> "sha256:702b6499760aba959a69d4d651a8a06768d1020a6bcd6dc84b7590690299ddc1" [label=""];
  "sha256:702b6499760aba959a69d4d651a8a06768d1020a6bcd6dc84b7590690299ddc1" -> "sha256:25edfb37b4f1259a411d7d74c5ac4213ea06249ab57b9c46f8e285a8f37204eb" [label=""];
}

