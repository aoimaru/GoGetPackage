[app/sources/163500838.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:a3d1d95f3b0d577ad29f1cd63700485d3eb5f673b40b80f27389e8ff6fd41d8c" [label="/bin/sh -c apt-get -y update && apt-get install -y software-properties-common python-software-properties" shape="box"];
  "sha256:c1cda536867c26e60e17c323c638dd19aef6f72a66c24219fb3ce6b9131bd381" [label="/bin/sh -c echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections &&   add-apt-repository -y ppa:webupd8team/java &&   apt-get update &&   apt-get install -y oracle-java8-installer &&   rm -rf /var/lib/apt/lists/* &&   rm -rf /var/cache/oracle-jdk8-installer" shape="box"];
  "sha256:31934565a8317a1a7cc79936ce0d4aeba56fd7b91535bd690f89efd931330a18" [label="mkdir{path=/data}" shape="note"];
  "sha256:74dd2a514a17d11288a8d84593039abead0df0abcd51d342a48ae7cd226462da" [label="local://context" shape="ellipse"];
  "sha256:eb3f4d17fdc2c3531b76bb61b67f712f67486327e7014e45a88b32ef2351e15e" [label="copy{src=/owlsim-services/target/owlsim-services-3.0-SNAPSHOT.jar, dest=/data/}" shape="note"];
  "sha256:ef6d76a145594912d0f601d6de2000ffb7f7c6a89c9545be310bcb1a11140e75" [label="copy{src=/scripts/golr-exporter.py, dest=/data/golr-exporter.py}" shape="note"];
  "sha256:b8757912f263843964b9f6bed576c3972c33a2a6268295875e0d0d21c616727e" [label="copy{src=/scripts/configuration-generator.py, dest=/data/configuration-generator.py}" shape="note"];
  "sha256:517e1595189bff2fc625f27b4ed5c815bb9f6e2ca9a34356d0607640d13df984" [label="/bin/sh -c apt-get -y update && apt-get install python3-pip -y" shape="box"];
  "sha256:111b58f92829539a16275600d67f38e375b8cd18cc7d59f58736a12f8ea7ae5e" [label="/bin/sh -c pip3 install pyyaml requests" shape="box"];
  "sha256:3fb48fdb8c77d9f286977bba1b1ac65c0da4988ba2ac597bbb12abeb27723ba2" [label="/bin/sh -c if [ $species = \"all\" ];    then     cd /data && python3 golr-exporter.py;   else     cd /data && python3 golr-exporter.py -t $species;   fi" shape="box"];
  "sha256:5ba735d43684fd067f5aea68733a49faabdca375dc3066ab0eac0232e600a9b9" [label="/bin/sh -c cd /data && python3 configuration-generator.py" shape="box"];
  "sha256:c29cb37f397016198ff99d49436f53809a888ee97c53dd0a987be2ea05a42b81" [label="sha256:c29cb37f397016198ff99d49436f53809a888ee97c53dd0a987be2ea05a42b81" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:a3d1d95f3b0d577ad29f1cd63700485d3eb5f673b40b80f27389e8ff6fd41d8c" [label=""];
  "sha256:a3d1d95f3b0d577ad29f1cd63700485d3eb5f673b40b80f27389e8ff6fd41d8c" -> "sha256:c1cda536867c26e60e17c323c638dd19aef6f72a66c24219fb3ce6b9131bd381" [label=""];
  "sha256:c1cda536867c26e60e17c323c638dd19aef6f72a66c24219fb3ce6b9131bd381" -> "sha256:31934565a8317a1a7cc79936ce0d4aeba56fd7b91535bd690f89efd931330a18" [label=""];
  "sha256:31934565a8317a1a7cc79936ce0d4aeba56fd7b91535bd690f89efd931330a18" -> "sha256:eb3f4d17fdc2c3531b76bb61b67f712f67486327e7014e45a88b32ef2351e15e" [label=""];
  "sha256:74dd2a514a17d11288a8d84593039abead0df0abcd51d342a48ae7cd226462da" -> "sha256:eb3f4d17fdc2c3531b76bb61b67f712f67486327e7014e45a88b32ef2351e15e" [label=""];
  "sha256:eb3f4d17fdc2c3531b76bb61b67f712f67486327e7014e45a88b32ef2351e15e" -> "sha256:ef6d76a145594912d0f601d6de2000ffb7f7c6a89c9545be310bcb1a11140e75" [label=""];
  "sha256:74dd2a514a17d11288a8d84593039abead0df0abcd51d342a48ae7cd226462da" -> "sha256:ef6d76a145594912d0f601d6de2000ffb7f7c6a89c9545be310bcb1a11140e75" [label=""];
  "sha256:ef6d76a145594912d0f601d6de2000ffb7f7c6a89c9545be310bcb1a11140e75" -> "sha256:b8757912f263843964b9f6bed576c3972c33a2a6268295875e0d0d21c616727e" [label=""];
  "sha256:74dd2a514a17d11288a8d84593039abead0df0abcd51d342a48ae7cd226462da" -> "sha256:b8757912f263843964b9f6bed576c3972c33a2a6268295875e0d0d21c616727e" [label=""];
  "sha256:b8757912f263843964b9f6bed576c3972c33a2a6268295875e0d0d21c616727e" -> "sha256:517e1595189bff2fc625f27b4ed5c815bb9f6e2ca9a34356d0607640d13df984" [label=""];
  "sha256:517e1595189bff2fc625f27b4ed5c815bb9f6e2ca9a34356d0607640d13df984" -> "sha256:111b58f92829539a16275600d67f38e375b8cd18cc7d59f58736a12f8ea7ae5e" [label=""];
  "sha256:111b58f92829539a16275600d67f38e375b8cd18cc7d59f58736a12f8ea7ae5e" -> "sha256:3fb48fdb8c77d9f286977bba1b1ac65c0da4988ba2ac597bbb12abeb27723ba2" [label=""];
  "sha256:3fb48fdb8c77d9f286977bba1b1ac65c0da4988ba2ac597bbb12abeb27723ba2" -> "sha256:5ba735d43684fd067f5aea68733a49faabdca375dc3066ab0eac0232e600a9b9" [label=""];
  "sha256:5ba735d43684fd067f5aea68733a49faabdca375dc3066ab0eac0232e600a9b9" -> "sha256:c29cb37f397016198ff99d49436f53809a888ee97c53dd0a987be2ea05a42b81" [label=""];
}

