[app/sources/252772219.Dockerfile]
digraph {
  "sha256:8052b4ef8ce9065df826124db2e6a4b63ab8481ee4e96bf0ef1db0b5925a33cb" [label="docker-image://docker.io/autuanliu/ml-docker-env-cpu:latest" shape="ellipse"];
  "sha256:fddb36b9d66454fa018ea4381f5dbbdd0e17b91afa3784243ffee9f54c83e54b" [label="/bin/sh -c git clone https://github.com/AutuanLiu/Machine-Learning-on-docker.git" shape="box"];
  "sha256:b217f50a9795587fc923b0ad424c170c38af26e60b33edc649d45eb4a5f9251c" [label="sha256:b217f50a9795587fc923b0ad424c170c38af26e60b33edc649d45eb4a5f9251c" shape="plaintext"];
  "sha256:8052b4ef8ce9065df826124db2e6a4b63ab8481ee4e96bf0ef1db0b5925a33cb" -> "sha256:fddb36b9d66454fa018ea4381f5dbbdd0e17b91afa3784243ffee9f54c83e54b" [label=""];
  "sha256:fddb36b9d66454fa018ea4381f5dbbdd0e17b91afa3784243ffee9f54c83e54b" -> "sha256:b217f50a9795587fc923b0ad424c170c38af26e60b33edc649d45eb4a5f9251c" [label=""];
}

