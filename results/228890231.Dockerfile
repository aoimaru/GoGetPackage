[app/sources/228890231.Dockerfile]
digraph {
  "sha256:67aec52188d7a99006c17eb64d1f0e5d6169cc4f2713c55b495a726e82f1effa" [label="docker-image://docker.io/library/postgres:9.6" shape="ellipse"];
  "sha256:3683553c619423c144780b6aa7b5c28bd6105cefe470c72e188e11ae4fdad5e0" [label="local://context" shape="ellipse"];
  "sha256:2225d0395bf29814bd98d6a0aa6ee938f7a58e0a7c14a0ed8f2dac5f192239d4" [label="copy{src=/setup-replication.sh, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:444da6c4a0e5eb6ecf9be19b719b04700a3776eed57246f9adee13d992ea0e22" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:30e84232d328b8da98f8f9ade0d879c9e21b54568a24188dad763945621f1790" [label="/bin/sh -c chmod +x /docker-entrypoint-initdb.d/setup-replication.sh /docker-entrypoint.sh" shape="box"];
  "sha256:7ec62e13a6d3a4861bd8444960b4c0b2e67f2bff243d7ef187e011c6b8c43146" [label="sha256:7ec62e13a6d3a4861bd8444960b4c0b2e67f2bff243d7ef187e011c6b8c43146" shape="plaintext"];
  "sha256:67aec52188d7a99006c17eb64d1f0e5d6169cc4f2713c55b495a726e82f1effa" -> "sha256:2225d0395bf29814bd98d6a0aa6ee938f7a58e0a7c14a0ed8f2dac5f192239d4" [label=""];
  "sha256:3683553c619423c144780b6aa7b5c28bd6105cefe470c72e188e11ae4fdad5e0" -> "sha256:2225d0395bf29814bd98d6a0aa6ee938f7a58e0a7c14a0ed8f2dac5f192239d4" [label=""];
  "sha256:2225d0395bf29814bd98d6a0aa6ee938f7a58e0a7c14a0ed8f2dac5f192239d4" -> "sha256:444da6c4a0e5eb6ecf9be19b719b04700a3776eed57246f9adee13d992ea0e22" [label=""];
  "sha256:3683553c619423c144780b6aa7b5c28bd6105cefe470c72e188e11ae4fdad5e0" -> "sha256:444da6c4a0e5eb6ecf9be19b719b04700a3776eed57246f9adee13d992ea0e22" [label=""];
  "sha256:444da6c4a0e5eb6ecf9be19b719b04700a3776eed57246f9adee13d992ea0e22" -> "sha256:30e84232d328b8da98f8f9ade0d879c9e21b54568a24188dad763945621f1790" [label=""];
  "sha256:30e84232d328b8da98f8f9ade0d879c9e21b54568a24188dad763945621f1790" -> "sha256:7ec62e13a6d3a4861bd8444960b4c0b2e67f2bff243d7ef187e011c6b8c43146" [label=""];
}

