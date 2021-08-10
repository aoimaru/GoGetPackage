[app/sources/475238670.Dockerfile]
digraph {
  "sha256:6c9ae4db47064481cedcdff425949453c21152ba726ba0f65be5febe04d6c2b0" [label="docker-image://quay.io/ukhomeofficedigital/centos-base:latest@sha256:73e8aea7116113dd73b03a4efcd19b125cb4fec3ef5ce99d9240c6c933c74c8a" shape="ellipse"];
  "sha256:3069df8d3d7a50ce615f0134b88e0f3dad2311d5d2dac63c9b276c6aefcf593d" [label="/bin/sh -c dnf update -y           && dnf autoremove -y          && dnf clean all -y          && rm -rf /var/cache/dnf" shape="box"];
  "sha256:46c690737130b11643c2f4d73bb4dd99dd0397fc50c74a2a1312a7c02ac0d6ae" [label="/bin/sh -c yum update -y &&   yum install -y java-headless tar wget &&  yum clean all" shape="box"];
  "sha256:4968c4b27fd60d59b82f2c7afa2133649bf7a99061689bea06facc043d116049" [label="/bin/sh -c wget -q http://mirror.vorboss.net/apache/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz -O - | tar -xzf -; mv kafka_${SCALA_VERSION}-${KAFKA_VERSION} /kafka" shape="box"];
  "sha256:e52533b998877bfb9d71b87761e1782c388547f3e6127fa1eb039475cb26637b" [label="/bin/sh -c useradd -ms /bin/bash -u 1000 centos" shape="box"];
  "sha256:f427678d7ad4841fb94765793b6c5728e54a31dbe4d0bd71cd9a817798f1752f" [label="mkdir{path=/kafka}" shape="note"];
  "sha256:3f4431e55b461c07017a5f51b35d2b4bdf32a66e1f793cb45e324c759573437e" [label="local://context" shape="ellipse"];
  "sha256:1c95243c67f0c06cc892342e0e1355ba923f767907183ee7e492e77d134236b9" [label="copy{src=/config/server.properties, dest=/kafka/config/server.properties}" shape="note"];
  "sha256:0ff80676e22ef649546390e39688955134a8ca24d227718587bf48fd6d93688d" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:e044f376ece1cb86d44e38a4331ba0841ece3ca086b0ba4ab8248112992d7ffc" [label="sha256:e044f376ece1cb86d44e38a4331ba0841ece3ca086b0ba4ab8248112992d7ffc" shape="plaintext"];
  "sha256:6c9ae4db47064481cedcdff425949453c21152ba726ba0f65be5febe04d6c2b0" -> "sha256:3069df8d3d7a50ce615f0134b88e0f3dad2311d5d2dac63c9b276c6aefcf593d" [label=""];
  "sha256:3069df8d3d7a50ce615f0134b88e0f3dad2311d5d2dac63c9b276c6aefcf593d" -> "sha256:46c690737130b11643c2f4d73bb4dd99dd0397fc50c74a2a1312a7c02ac0d6ae" [label=""];
  "sha256:46c690737130b11643c2f4d73bb4dd99dd0397fc50c74a2a1312a7c02ac0d6ae" -> "sha256:4968c4b27fd60d59b82f2c7afa2133649bf7a99061689bea06facc043d116049" [label=""];
  "sha256:4968c4b27fd60d59b82f2c7afa2133649bf7a99061689bea06facc043d116049" -> "sha256:e52533b998877bfb9d71b87761e1782c388547f3e6127fa1eb039475cb26637b" [label=""];
  "sha256:e52533b998877bfb9d71b87761e1782c388547f3e6127fa1eb039475cb26637b" -> "sha256:f427678d7ad4841fb94765793b6c5728e54a31dbe4d0bd71cd9a817798f1752f" [label=""];
  "sha256:f427678d7ad4841fb94765793b6c5728e54a31dbe4d0bd71cd9a817798f1752f" -> "sha256:1c95243c67f0c06cc892342e0e1355ba923f767907183ee7e492e77d134236b9" [label=""];
  "sha256:3f4431e55b461c07017a5f51b35d2b4bdf32a66e1f793cb45e324c759573437e" -> "sha256:1c95243c67f0c06cc892342e0e1355ba923f767907183ee7e492e77d134236b9" [label=""];
  "sha256:1c95243c67f0c06cc892342e0e1355ba923f767907183ee7e492e77d134236b9" -> "sha256:0ff80676e22ef649546390e39688955134a8ca24d227718587bf48fd6d93688d" [label=""];
  "sha256:3f4431e55b461c07017a5f51b35d2b4bdf32a66e1f793cb45e324c759573437e" -> "sha256:0ff80676e22ef649546390e39688955134a8ca24d227718587bf48fd6d93688d" [label=""];
  "sha256:0ff80676e22ef649546390e39688955134a8ca24d227718587bf48fd6d93688d" -> "sha256:e044f376ece1cb86d44e38a4331ba0841ece3ca086b0ba4ab8248112992d7ffc" [label=""];
}

