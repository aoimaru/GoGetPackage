[app/sources/151458110.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:5d5162351ed412ab174847282bb022371ca2d0a5d7a6d3142571ba834a0a12b2" [label="/bin/sh -c dnf -y install gcc cmake libuuid-devel openssl-devel cyrus-sasl-devel cyrus-sasl-plain cyrus-sasl-gssapi cyrus-sasl-md5 swig python-devel java-1.8.0-openjdk-devel git make doxygen valgrind emacs libuv libuv-devel libwebsockets-devel python-unittest2 && dnf clean all -y" shape="box"];
  "sha256:f894594c3e5386519d12017e7dd6d2655b78a4b30b468e9ba382cd255d88f615" [label="/bin/sh -c mkdir /main && cd /main && git clone https://gitbox.apache.org/repos/asf/qpid-proton.git  && cd /main/qpid-proton && mkdir /main/qpid-proton/build" shape="box"];
  "sha256:985c361f6be87a238bfbc031287b029c78edd966fff0d36cc539a0c7f6923021" [label="mkdir{path=/main/qpid-proton/build}" shape="note"];
  "sha256:a6d78333ad99f4dbbeb73ddc580975a840b3e449ec0885549c7b0c7a640c660b" [label="/bin/sh -c cmake .. -DSYSINSTALL_BINDINGS=ON -DCMAKE_INSTALL_PREFIX=/usr -DSYSINSTALL_PYTHON=ON && make install" shape="box"];
  "sha256:2a85d88c2da29fd1fff940ca22856720bd33dab0b0db3f49daa11f591ab582e5" [label="/bin/sh -c cd /main && git clone https://gitbox.apache.org/repos/asf/qpid-dispatch.git && mkdir /main/qpid-dispatch/build" shape="box"];
  "sha256:ed38e051ee9a816166d082eb45eb982a7bcc74fb6722cc1418275670efdf5781" [label="mkdir{path=/main/qpid-dispatch/build}" shape="note"];
  "sha256:bff09e35a57eb48c454d00c7dbc42d0549bd3db0aced54f237d47df14ec5ad47" [label="/bin/sh -c cmake .. -DCMAKE_INSTALL_PREFIX=/usr && make install" shape="box"];
  "sha256:bf0252cddcbd0f3c561e56bd6d6956b365f3877c3582f418ec6d4f3ceffd0ce5" [label="sha256:bf0252cddcbd0f3c561e56bd6d6956b365f3877c3582f418ec6d4f3ceffd0ce5" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:5d5162351ed412ab174847282bb022371ca2d0a5d7a6d3142571ba834a0a12b2" [label=""];
  "sha256:5d5162351ed412ab174847282bb022371ca2d0a5d7a6d3142571ba834a0a12b2" -> "sha256:f894594c3e5386519d12017e7dd6d2655b78a4b30b468e9ba382cd255d88f615" [label=""];
  "sha256:f894594c3e5386519d12017e7dd6d2655b78a4b30b468e9ba382cd255d88f615" -> "sha256:985c361f6be87a238bfbc031287b029c78edd966fff0d36cc539a0c7f6923021" [label=""];
  "sha256:985c361f6be87a238bfbc031287b029c78edd966fff0d36cc539a0c7f6923021" -> "sha256:a6d78333ad99f4dbbeb73ddc580975a840b3e449ec0885549c7b0c7a640c660b" [label=""];
  "sha256:a6d78333ad99f4dbbeb73ddc580975a840b3e449ec0885549c7b0c7a640c660b" -> "sha256:2a85d88c2da29fd1fff940ca22856720bd33dab0b0db3f49daa11f591ab582e5" [label=""];
  "sha256:2a85d88c2da29fd1fff940ca22856720bd33dab0b0db3f49daa11f591ab582e5" -> "sha256:ed38e051ee9a816166d082eb45eb982a7bcc74fb6722cc1418275670efdf5781" [label=""];
  "sha256:ed38e051ee9a816166d082eb45eb982a7bcc74fb6722cc1418275670efdf5781" -> "sha256:bff09e35a57eb48c454d00c7dbc42d0549bd3db0aced54f237d47df14ec5ad47" [label=""];
  "sha256:bff09e35a57eb48c454d00c7dbc42d0549bd3db0aced54f237d47df14ec5ad47" -> "sha256:bf0252cddcbd0f3c561e56bd6d6956b365f3877c3582f418ec6d4f3ceffd0ce5" [label=""];
}

