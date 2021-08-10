[app/sources/341770894.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:4f52afa606345f69f4e03cb171c12fed967e790ec70c256e6f7b1f7bffd917c7" [label="/bin/sh -c apt-get update \t&& apt-get upgrade -y   && apt-get update \t&& apt-get dist-upgrade -y" shape="box"];
  "sha256:39d578d0c1752898dbb5f093826a9a81c3acc27d480b50a1222848b10d9882c8" [label="/bin/sh -c apt-get install -y apt-utils" shape="box"];
  "sha256:c37d838ccfff485f82da421c7347bfff41444c8a1ac51d444b27997f1a1814e5" [label="/bin/sh -c apt-get install -y luarocks" shape="box"];
  "sha256:7f67ed6bef757b64b6ebd9363bfd816ac18bdff7aff3f5fd427ca01a71b96ab2" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:af9e511926a2c9aee9d6c203aa12a60ea299dbcf9264c1655f5ed465e38d5b18" [label="https://github.com/ITpC/LAppS.builds/raw/master/bionic/lapps-0.7.2-avx2-amd64.deb" shape="ellipse"];
  "sha256:cbec432c005817874e298fe6a03b864684023bdcf65b33280d8424cbe8f69255" [label="copy{src=/lapps-0.7.2-avx2-amd64.deb, dest=/tmp/}" shape="note"];
  "sha256:a54ba2a0c445e965d9fa61cbeb689b6258ab9893deddcefe54257529e8d404fc" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:304d37a3b26648a0eafe4367953ff6b75484eb674d9fdd95e29e8615e8b06442" [label="/bin/sh -c ls -la ${WORKSPACE}/lapps-0.7.2-avx2-amd64.deb" shape="box"];
  "sha256:a405ae04cac9690cb9a00594fe7653edeb2b41ea611ea0a17015620beceffac4" [label="/bin/sh -c apt install -y ${WORKSPACE}/lapps-0.7.2-avx2-amd64.deb" shape="box"];
  "sha256:faf1113584587044a755acdcd726a15c2eb2464528d3b45c3cfeb749f720822e" [label="/bin/sh -c apt-get install -f -y" shape="box"];
  "sha256:61d478db0e5759f07eef94ae548147f932dc95dd2d3cb4219e60f4dff52e0671" [label="mkdir{path=/opt/lapps/run}" shape="note"];
  "sha256:2d180a469289dd85c36ab67a521722369917be48fdd3fe3c146a44975a882fbc" [label="/bin/sh -c echo \"LAppS-0.7.2 is installed under /opt/lapps prefix. To run LAppS use /opt/lapps/bin/lapps.avx2 [-d] from within /opt/lapps/run directory. -d is an optional argument do run LAppS as a deamon.\"" shape="box"];
  "sha256:29f31826ca37eb7b262e5280dee56130aa4f338c56cf8bbaf499bd70200e2631" [label="/bin/sh -c echo \"Optionally /opt/lapps/bin/lapps.avx2.notls and /opt/lapps/bin/lapps.avx2.nostats.notls builds are provided for convinience\"" shape="box"];
  "sha256:92f163fda630d9b4a4e1211bbaf9bf262b36ea9beda6efff16c50d70d0e527cf" [label="/bin/sh -c echo \"You may add/install lua modules you want to use with LAppS from luarocks repository. You may twick this Dockerfile or do these operations within running container.\"" shape="box"];
  "sha256:b34e2b480861c030c67243eed4f8bde747b0b840439e54952b952047dae3cf8c" [label="sha256:b34e2b480861c030c67243eed4f8bde747b0b840439e54952b952047dae3cf8c" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:4f52afa606345f69f4e03cb171c12fed967e790ec70c256e6f7b1f7bffd917c7" [label=""];
  "sha256:4f52afa606345f69f4e03cb171c12fed967e790ec70c256e6f7b1f7bffd917c7" -> "sha256:39d578d0c1752898dbb5f093826a9a81c3acc27d480b50a1222848b10d9882c8" [label=""];
  "sha256:39d578d0c1752898dbb5f093826a9a81c3acc27d480b50a1222848b10d9882c8" -> "sha256:c37d838ccfff485f82da421c7347bfff41444c8a1ac51d444b27997f1a1814e5" [label=""];
  "sha256:c37d838ccfff485f82da421c7347bfff41444c8a1ac51d444b27997f1a1814e5" -> "sha256:7f67ed6bef757b64b6ebd9363bfd816ac18bdff7aff3f5fd427ca01a71b96ab2" [label=""];
  "sha256:7f67ed6bef757b64b6ebd9363bfd816ac18bdff7aff3f5fd427ca01a71b96ab2" -> "sha256:cbec432c005817874e298fe6a03b864684023bdcf65b33280d8424cbe8f69255" [label=""];
  "sha256:af9e511926a2c9aee9d6c203aa12a60ea299dbcf9264c1655f5ed465e38d5b18" -> "sha256:cbec432c005817874e298fe6a03b864684023bdcf65b33280d8424cbe8f69255" [label=""];
  "sha256:cbec432c005817874e298fe6a03b864684023bdcf65b33280d8424cbe8f69255" -> "sha256:a54ba2a0c445e965d9fa61cbeb689b6258ab9893deddcefe54257529e8d404fc" [label=""];
  "sha256:a54ba2a0c445e965d9fa61cbeb689b6258ab9893deddcefe54257529e8d404fc" -> "sha256:304d37a3b26648a0eafe4367953ff6b75484eb674d9fdd95e29e8615e8b06442" [label=""];
  "sha256:304d37a3b26648a0eafe4367953ff6b75484eb674d9fdd95e29e8615e8b06442" -> "sha256:a405ae04cac9690cb9a00594fe7653edeb2b41ea611ea0a17015620beceffac4" [label=""];
  "sha256:a405ae04cac9690cb9a00594fe7653edeb2b41ea611ea0a17015620beceffac4" -> "sha256:faf1113584587044a755acdcd726a15c2eb2464528d3b45c3cfeb749f720822e" [label=""];
  "sha256:faf1113584587044a755acdcd726a15c2eb2464528d3b45c3cfeb749f720822e" -> "sha256:61d478db0e5759f07eef94ae548147f932dc95dd2d3cb4219e60f4dff52e0671" [label=""];
  "sha256:61d478db0e5759f07eef94ae548147f932dc95dd2d3cb4219e60f4dff52e0671" -> "sha256:2d180a469289dd85c36ab67a521722369917be48fdd3fe3c146a44975a882fbc" [label=""];
  "sha256:2d180a469289dd85c36ab67a521722369917be48fdd3fe3c146a44975a882fbc" -> "sha256:29f31826ca37eb7b262e5280dee56130aa4f338c56cf8bbaf499bd70200e2631" [label=""];
  "sha256:29f31826ca37eb7b262e5280dee56130aa4f338c56cf8bbaf499bd70200e2631" -> "sha256:92f163fda630d9b4a4e1211bbaf9bf262b36ea9beda6efff16c50d70d0e527cf" [label=""];
  "sha256:92f163fda630d9b4a4e1211bbaf9bf262b36ea9beda6efff16c50d70d0e527cf" -> "sha256:b34e2b480861c030c67243eed4f8bde747b0b840439e54952b952047dae3cf8c" [label=""];
}

