[app/sources/274857546.Dockerfile]
digraph {
  "sha256:bb81a1bd1c089d0ee208684e44a06d3de2e27a445cbe94157c740c3e338ae2a3" [label="docker-image://docker.io/confluent/platform:latest" shape="ellipse"];
  "sha256:2ce205ce937d657a740c7c18671acc4fd702f96c3c64cb787d73bbcb6eb5deae" [label="/bin/sh -c wget http://packages.confluent.io/archive/4.1/confluent-oss-$KAFKA_VERSION.tar.gz -q --show-progress -O kafka-confluent.tar.gz" shape="box"];
  "sha256:1cd38dde1cb8614daac99e75e9dae1edc1039ae07b583da275fb721b3de68086" [label="/bin/sh -c tar xf kafka-confluent.tar.gz" shape="box"];
  "sha256:78b56a6ff407bcf9c7ec1d4878284f3901b47c71a2d8ef35f5229391d3d7ee7b" [label="/bin/sh -c mv confluent-* confluent" shape="box"];
  "sha256:862efec41d143824e219d9c971897fb590db818c85fc578e3c5eb4c3a2f7f650" [label="/bin/sh -c rm kafka-confluent.tar.gz" shape="box"];
  "sha256:3b43f90cd68ec16fb299761ce7b477da20848551feec9e1a8069bc9631646ca0" [label="sha256:3b43f90cd68ec16fb299761ce7b477da20848551feec9e1a8069bc9631646ca0" shape="plaintext"];
  "sha256:bb81a1bd1c089d0ee208684e44a06d3de2e27a445cbe94157c740c3e338ae2a3" -> "sha256:2ce205ce937d657a740c7c18671acc4fd702f96c3c64cb787d73bbcb6eb5deae" [label=""];
  "sha256:2ce205ce937d657a740c7c18671acc4fd702f96c3c64cb787d73bbcb6eb5deae" -> "sha256:1cd38dde1cb8614daac99e75e9dae1edc1039ae07b583da275fb721b3de68086" [label=""];
  "sha256:1cd38dde1cb8614daac99e75e9dae1edc1039ae07b583da275fb721b3de68086" -> "sha256:78b56a6ff407bcf9c7ec1d4878284f3901b47c71a2d8ef35f5229391d3d7ee7b" [label=""];
  "sha256:78b56a6ff407bcf9c7ec1d4878284f3901b47c71a2d8ef35f5229391d3d7ee7b" -> "sha256:862efec41d143824e219d9c971897fb590db818c85fc578e3c5eb4c3a2f7f650" [label=""];
  "sha256:862efec41d143824e219d9c971897fb590db818c85fc578e3c5eb4c3a2f7f650" -> "sha256:3b43f90cd68ec16fb299761ce7b477da20848551feec9e1a8069bc9631646ca0" [label=""];
}

