[app/sources/132235851.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:70c58af28b1aaebbd7e90b6505dea606443c43bba61bc7d382a781403d81b6b3" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:7247eaba093e0d25d37d36d6a51d7634739ef994684fbdd1dcaf1370f01d420d" [label="/bin/sh -c apt-get -qq install apache2" shape="box"];
  "sha256:c4c9517b3d652300efb2384d9dc0c8202551e0ad5d98a47826f7bef484e42662" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:371cb1c42da2b6972d409231fdb34b4fc147842d64d541f8cbb5e7c1ca0affbc" [label="/bin/sh -c mkdir -p $APACHE_RUN_DIR $APACHE_LOCK_DIR $APACHE_LOG_DIR" shape="box"];
  "sha256:a22a5754c5133197bf2102082f8dd23af7faa3ca13663ab7beca6c8ade438691" [label="sha256:a22a5754c5133197bf2102082f8dd23af7faa3ca13663ab7beca6c8ade438691" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:70c58af28b1aaebbd7e90b6505dea606443c43bba61bc7d382a781403d81b6b3" [label=""];
  "sha256:70c58af28b1aaebbd7e90b6505dea606443c43bba61bc7d382a781403d81b6b3" -> "sha256:7247eaba093e0d25d37d36d6a51d7634739ef994684fbdd1dcaf1370f01d420d" [label=""];
  "sha256:7247eaba093e0d25d37d36d6a51d7634739ef994684fbdd1dcaf1370f01d420d" -> "sha256:c4c9517b3d652300efb2384d9dc0c8202551e0ad5d98a47826f7bef484e42662" [label=""];
  "sha256:c4c9517b3d652300efb2384d9dc0c8202551e0ad5d98a47826f7bef484e42662" -> "sha256:371cb1c42da2b6972d409231fdb34b4fc147842d64d541f8cbb5e7c1ca0affbc" [label=""];
  "sha256:371cb1c42da2b6972d409231fdb34b4fc147842d64d541f8cbb5e7c1ca0affbc" -> "sha256:a22a5754c5133197bf2102082f8dd23af7faa3ca13663ab7beca6c8ade438691" [label=""];
}

