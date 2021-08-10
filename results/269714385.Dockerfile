[app/sources/269714385.Dockerfile]
digraph {
  "sha256:e106912b3fdce2299cb853f69e17d273f22b16752894ac8dbf807107c9e19e5a" [label="docker-image://docker.io/library/ubuntu:18.04@sha256:5f4bdc3467537cbbe563e80db2c3ec95d548a9145d64453b06939c4592d67b6d" shape="ellipse"];
  "sha256:31aa2fcb9ce79852db8abc01c8054db19168f775e6ef681ab1206df647a8b316" [label="/bin/sh -c apt-get update -q &&     apt-get install -qy         git=1:2.17.1-1ubuntu0.4         wget=1.19.4-1ubuntu2.1         make=4.1-9.1ubuntu1         autotools-dev=20180224.1         autoconf=2.69-11         libtool=2.4.6-2         xz-utils=5.2.2-1.3         libssl-dev=1.1.0g-2ubuntu4.3         zlib1g-dev=1:1.2.11.dfsg-0ubuntu2         libffi6=3.2.1-8         libffi-dev=3.2.1-8         libncurses5-dev=6.1-1ubuntu1.18.04         libsqlite3-dev=3.22.0-1         libusb-1.0-0-dev=2:1.0.21-2         libudev-dev=237-3ubuntu10.17         gettext=0.19.8.1-6ubuntu0.1         libzbar0=0.10+doc-10.1build2         faketime=0.9.7-2         &&     rm -rf /var/lib/apt/lists/* &&     apt-get autoremove -y &&     apt-get clean" shape="box"];
  "sha256:51bb3ba3cd9aac67a324f8695eb35ea8c95df504b3f4e04d125b0557250ddb79" [label="sha256:51bb3ba3cd9aac67a324f8695eb35ea8c95df504b3f4e04d125b0557250ddb79" shape="plaintext"];
  "sha256:e106912b3fdce2299cb853f69e17d273f22b16752894ac8dbf807107c9e19e5a" -> "sha256:31aa2fcb9ce79852db8abc01c8054db19168f775e6ef681ab1206df647a8b316" [label=""];
  "sha256:31aa2fcb9ce79852db8abc01c8054db19168f775e6ef681ab1206df647a8b316" -> "sha256:51bb3ba3cd9aac67a324f8695eb35ea8c95df504b3f4e04d125b0557250ddb79" [label=""];
}

