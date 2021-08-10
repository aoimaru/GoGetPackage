[app/sources/249383890.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:97be906cccfbcffee622507a7aed781adbce922d04c019a3b5b1e40cf03c5554" [label="local://context" shape="ellipse"];
  "sha256:d5128040b7a3ba050ee4dee17b87729027b03aa8abb002f88de6bb87677ed104" [label="copy{src=/nuagekubemon, dest=/usr/bin/nuagekubemon}" shape="note"];
  "sha256:8584e93c4fa33716acf9ab8803ff8e0f8c646b7712efa67f68816c87b34be2a5" [label="copy{src=/nuage-openshift-monitor, dest=/usr/bin/nuage-openshift-monitor}" shape="note"];
  "sha256:39995990c008fb76e4e38ca212d0fda2c6c2636d959bc1bd20f9c65dc046179d" [label="copy{src=/configure-master.sh, dest=/configure-master.sh}" shape="note"];
  "sha256:756038f257db0fc4312da4eeca966352223ecebcbce91d2e5eac7b7750c527c4" [label="sha256:756038f257db0fc4312da4eeca966352223ecebcbce91d2e5eac7b7750c527c4" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:d5128040b7a3ba050ee4dee17b87729027b03aa8abb002f88de6bb87677ed104" [label=""];
  "sha256:97be906cccfbcffee622507a7aed781adbce922d04c019a3b5b1e40cf03c5554" -> "sha256:d5128040b7a3ba050ee4dee17b87729027b03aa8abb002f88de6bb87677ed104" [label=""];
  "sha256:d5128040b7a3ba050ee4dee17b87729027b03aa8abb002f88de6bb87677ed104" -> "sha256:8584e93c4fa33716acf9ab8803ff8e0f8c646b7712efa67f68816c87b34be2a5" [label=""];
  "sha256:97be906cccfbcffee622507a7aed781adbce922d04c019a3b5b1e40cf03c5554" -> "sha256:8584e93c4fa33716acf9ab8803ff8e0f8c646b7712efa67f68816c87b34be2a5" [label=""];
  "sha256:8584e93c4fa33716acf9ab8803ff8e0f8c646b7712efa67f68816c87b34be2a5" -> "sha256:39995990c008fb76e4e38ca212d0fda2c6c2636d959bc1bd20f9c65dc046179d" [label=""];
  "sha256:97be906cccfbcffee622507a7aed781adbce922d04c019a3b5b1e40cf03c5554" -> "sha256:39995990c008fb76e4e38ca212d0fda2c6c2636d959bc1bd20f9c65dc046179d" [label=""];
  "sha256:39995990c008fb76e4e38ca212d0fda2c6c2636d959bc1bd20f9c65dc046179d" -> "sha256:756038f257db0fc4312da4eeca966352223ecebcbce91d2e5eac7b7750c527c4" [label=""];
}

