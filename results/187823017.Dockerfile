[app/sources/187823017.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:ddf004fff94b89c8d8bac41ea8fdc2d873e371729bd5c89c359372996b553d83" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:2d9353cc80259421c6efbef5c8a62c9c276a3ab9f38807ba91c382d63959790a" [label="/bin/sh -c apt-get -y install make python" shape="box"];
  "sha256:5ba50f8692e39b14bb229e8495998060f2754739c4e2208742e3103902c07238" [label="/bin/sh -c apt-get -y install curl libreadline-dev libedit-dev" shape="box"];
  "sha256:bd619401491b8b674e04ff73597497a7c40a3e42f51a2858a4c2d2c0ae2a3505" [label="/bin/sh -c mkdir -p /mal" shape="box"];
  "sha256:d187ee322f7bd6eb01081b858a96a637981c959291d21c0900c103b02084c2f7" [label="mkdir{path=/mal}" shape="note"];
  "sha256:7168f3afbecd0120b8ed1e9d2f09df4570d49431f0687e34e3919ed653345eac" [label="/bin/sh -c apt-get -y install openjdk-8-jdk unzip" shape="box"];
  "sha256:589d227331a8e9b1b7a22ef0db53f7488e77ff93031e32c63311f691e70fe181" [label="/bin/sh -c cd /tmp && curl -sfLO https://bitbucket.org/fantom/fan-1.0/downloads/fantom-1.0.70.zip     && unzip -q fantom-1.0.70.zip     && rm fantom-1.0.70.zip     && mv fantom-1.0.70 /opt/fantom     && cd /opt/fantom     && bash adm/unixsetup     && curl -sfL -o /opt/fantom/lib/java/jline.jar https://repo1.maven.org/maven2/jline/jline/2.14.6/jline-2.14.6.jar" shape="box"];
  "sha256:e9e60a0147fe5ba442b0fd17d487e1a00bc73f0110c9b6990ee1dad0daeed62d" [label="sha256:e9e60a0147fe5ba442b0fd17d487e1a00bc73f0110c9b6990ee1dad0daeed62d" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:ddf004fff94b89c8d8bac41ea8fdc2d873e371729bd5c89c359372996b553d83" [label=""];
  "sha256:ddf004fff94b89c8d8bac41ea8fdc2d873e371729bd5c89c359372996b553d83" -> "sha256:2d9353cc80259421c6efbef5c8a62c9c276a3ab9f38807ba91c382d63959790a" [label=""];
  "sha256:2d9353cc80259421c6efbef5c8a62c9c276a3ab9f38807ba91c382d63959790a" -> "sha256:5ba50f8692e39b14bb229e8495998060f2754739c4e2208742e3103902c07238" [label=""];
  "sha256:5ba50f8692e39b14bb229e8495998060f2754739c4e2208742e3103902c07238" -> "sha256:bd619401491b8b674e04ff73597497a7c40a3e42f51a2858a4c2d2c0ae2a3505" [label=""];
  "sha256:bd619401491b8b674e04ff73597497a7c40a3e42f51a2858a4c2d2c0ae2a3505" -> "sha256:d187ee322f7bd6eb01081b858a96a637981c959291d21c0900c103b02084c2f7" [label=""];
  "sha256:d187ee322f7bd6eb01081b858a96a637981c959291d21c0900c103b02084c2f7" -> "sha256:7168f3afbecd0120b8ed1e9d2f09df4570d49431f0687e34e3919ed653345eac" [label=""];
  "sha256:7168f3afbecd0120b8ed1e9d2f09df4570d49431f0687e34e3919ed653345eac" -> "sha256:589d227331a8e9b1b7a22ef0db53f7488e77ff93031e32c63311f691e70fe181" [label=""];
  "sha256:589d227331a8e9b1b7a22ef0db53f7488e77ff93031e32c63311f691e70fe181" -> "sha256:e9e60a0147fe5ba442b0fd17d487e1a00bc73f0110c9b6990ee1dad0daeed62d" [label=""];
}

