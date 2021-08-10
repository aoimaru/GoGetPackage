[app/sources/464527933.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:1d62ed069c43d68ce7010771648f3c36d7fc95c2d251c0033881f14abc327cc6" [label="/bin/sh -c apt-get update -y               &&  apt-get install -y               qt4-qmake                      libqt4-dev                     build-essential                libboost-dev                   libboost-system-dev            libboost-filesystem-dev        libboost-program-options-dev   libboost-thread-dev            libssl-dev                     libdb++-dev                    libqrencode-dev                wget                           pkg-config                     libpng3-dev" shape="box"];
  "sha256:1d3fc532d21726e75b173a83b38effbe3e7694a28c883cfc813609b0eeab18fe" [label="/bin/sh -c wget http://fukuchi.org/works/qrencode/qrencode-3.4.4.tar.gz; tar zxf ./qrencode-3.4.4.tar.gz" shape="box"];
  "sha256:3cf29f19dfb7f55a3bd24db77ff28a60223a47dbb6bdb5efaa71ba590840babd" [label="mkdir{path=/qrencode-3.4.4}" shape="note"];
  "sha256:c757edcc916f9635be6202a296c0beeebed78981d2b6195275a07445701fd1b9" [label="/bin/sh -c ./configure --enable-static;   make;   make install" shape="box"];
  "sha256:454b7bc69fd4e3fab3789df8d8c3e9f1f67e0c5741b2b877ce415521b1a6fc5c" [label="mkdir{path=/excolonycoin}" shape="note"];
  "sha256:2ef1a7f99687b02401db9d3f68ca41c23e7e1e615691b923952f3b6280824dc7" [label="sha256:2ef1a7f99687b02401db9d3f68ca41c23e7e1e615691b923952f3b6280824dc7" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:1d62ed069c43d68ce7010771648f3c36d7fc95c2d251c0033881f14abc327cc6" [label=""];
  "sha256:1d62ed069c43d68ce7010771648f3c36d7fc95c2d251c0033881f14abc327cc6" -> "sha256:1d3fc532d21726e75b173a83b38effbe3e7694a28c883cfc813609b0eeab18fe" [label=""];
  "sha256:1d3fc532d21726e75b173a83b38effbe3e7694a28c883cfc813609b0eeab18fe" -> "sha256:3cf29f19dfb7f55a3bd24db77ff28a60223a47dbb6bdb5efaa71ba590840babd" [label=""];
  "sha256:3cf29f19dfb7f55a3bd24db77ff28a60223a47dbb6bdb5efaa71ba590840babd" -> "sha256:c757edcc916f9635be6202a296c0beeebed78981d2b6195275a07445701fd1b9" [label=""];
  "sha256:c757edcc916f9635be6202a296c0beeebed78981d2b6195275a07445701fd1b9" -> "sha256:454b7bc69fd4e3fab3789df8d8c3e9f1f67e0c5741b2b877ce415521b1a6fc5c" [label=""];
  "sha256:454b7bc69fd4e3fab3789df8d8c3e9f1f67e0c5741b2b877ce415521b1a6fc5c" -> "sha256:2ef1a7f99687b02401db9d3f68ca41c23e7e1e615691b923952f3b6280824dc7" [label=""];
}

