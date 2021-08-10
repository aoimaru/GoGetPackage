[app/sources/304557112.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:5c751dde08d9d0b5459f3455afff34e62a6067505f737306c49d902b70d723ed" [label="/bin/sh -c apt-get update && apt-get install -y libboost-dev libboost-filesystem-dev        libboost-program-options-dev libboost-date-time-dev        libssl-dev git build-essential" shape="box"];
  "sha256:be68bb8da24f992e11b73638751f430825d59c301f26936474e484ce1aeb3b8b" [label="/bin/sh -c git clone https://github.com/PurpleI2P/i2pd.git" shape="box"];
  "sha256:64da9a888d2dd4bef634e828452af06c5ccc5891a978883580aea83a65360f73" [label="mkdir{path=/i2pd}" shape="note"];
  "sha256:7ac8adbc6019267e6d77c49665630f59b01c2bdd49bad190499ff51e579800c9" [label="/bin/sh -c make" shape="box"];
  "sha256:1627d2345dba0912c2dd1455faa16e3d0f1cfc7a099396a7f97ddac01a038c67" [label="sha256:1627d2345dba0912c2dd1455faa16e3d0f1cfc7a099396a7f97ddac01a038c67" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:5c751dde08d9d0b5459f3455afff34e62a6067505f737306c49d902b70d723ed" [label=""];
  "sha256:5c751dde08d9d0b5459f3455afff34e62a6067505f737306c49d902b70d723ed" -> "sha256:be68bb8da24f992e11b73638751f430825d59c301f26936474e484ce1aeb3b8b" [label=""];
  "sha256:be68bb8da24f992e11b73638751f430825d59c301f26936474e484ce1aeb3b8b" -> "sha256:64da9a888d2dd4bef634e828452af06c5ccc5891a978883580aea83a65360f73" [label=""];
  "sha256:64da9a888d2dd4bef634e828452af06c5ccc5891a978883580aea83a65360f73" -> "sha256:7ac8adbc6019267e6d77c49665630f59b01c2bdd49bad190499ff51e579800c9" [label=""];
  "sha256:7ac8adbc6019267e6d77c49665630f59b01c2bdd49bad190499ff51e579800c9" -> "sha256:1627d2345dba0912c2dd1455faa16e3d0f1cfc7a099396a7f97ddac01a038c67" [label=""];
}

