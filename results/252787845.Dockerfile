[app/sources/252787845.Dockerfile]
digraph {
  "sha256:fbed9d40dd0f1392699cfc8f91fbde6b240d6831717c61940b4b4e113dc0e912" [label="docker-image://docker.io/library/iojs:2.2.1" shape="ellipse"];
  "sha256:f4a1a6767e93a9639a725397aea011fb9e1cd38cdc900996279d7e36c2981d50" [label="local://context" shape="ellipse"];
  "sha256:47d16cbc1af400e2ab342703f7b464aae59e5e083b4a78ffffa083983caf1eab" [label="copy{src=/, dest=/home/sarapis}" shape="note"];
  "sha256:49b3bc80af674b39d4de9c6255eaf0f5d82ea58a33fd051cf6a3f6b4898332bb" [label="/bin/sh -c cd /home/sarapis && npm install" shape="box"];
  "sha256:278c6777d6e830168da5af0ab37f2401a1384a471b2d70708943cae9d4d56a8b" [label="mkdir{path=/home/sarapis}" shape="note"];
  "sha256:c1c9a5040b95a5adf986bdf5eee835cac49bdab0eb40c6b601f371607046cf41" [label="sha256:c1c9a5040b95a5adf986bdf5eee835cac49bdab0eb40c6b601f371607046cf41" shape="plaintext"];
  "sha256:fbed9d40dd0f1392699cfc8f91fbde6b240d6831717c61940b4b4e113dc0e912" -> "sha256:47d16cbc1af400e2ab342703f7b464aae59e5e083b4a78ffffa083983caf1eab" [label=""];
  "sha256:f4a1a6767e93a9639a725397aea011fb9e1cd38cdc900996279d7e36c2981d50" -> "sha256:47d16cbc1af400e2ab342703f7b464aae59e5e083b4a78ffffa083983caf1eab" [label=""];
  "sha256:47d16cbc1af400e2ab342703f7b464aae59e5e083b4a78ffffa083983caf1eab" -> "sha256:49b3bc80af674b39d4de9c6255eaf0f5d82ea58a33fd051cf6a3f6b4898332bb" [label=""];
  "sha256:49b3bc80af674b39d4de9c6255eaf0f5d82ea58a33fd051cf6a3f6b4898332bb" -> "sha256:278c6777d6e830168da5af0ab37f2401a1384a471b2d70708943cae9d4d56a8b" [label=""];
  "sha256:278c6777d6e830168da5af0ab37f2401a1384a471b2d70708943cae9d4d56a8b" -> "sha256:c1c9a5040b95a5adf986bdf5eee835cac49bdab0eb40c6b601f371607046cf41" [label=""];
}

