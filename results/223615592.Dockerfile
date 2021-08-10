[app/sources/223615592.Dockerfile]
digraph {
  "sha256:2f0282e30bb4329c33f533f7c612c3056a613c830016c79cf261b732d373c5d0" [label="docker-image://gcr.io/oss-fuzz-base/base-builder@sha256:a752ca08bc5b2b3cc1354ca50f09c46211dd52663d295fd09023a431237dd2b8" shape="ellipse"];
  "sha256:714fee9ec2e627dc26846fe315f01228ddf4d970f1cc5e57eca046be07f4efb9" [label="/bin/sh -c git clone --depth 1 https://github.com/google/wuffs.git" shape="box"];
  "sha256:1bd66fdca2bdc7c023551c5ffb101451d343636e2b29765f4767c08db2b8ba71" [label="mkdir{path=/src/wuffs}" shape="note"];
  "sha256:144728c3166210a26d238cd73aa7b8bb89e542389c62f94e83378b8e752ce07d" [label="local://context" shape="ellipse"];
  "sha256:04ccf8ea184c5dcd71938679fe949af1c9b629f98bbdf6310a7d3c453c7cd2d4" [label="copy{src=/build.sh, dest=/src/}" shape="note"];
  "sha256:106d048df82b36756c292fb5f58ea79b2cd368a2bb8537a75f8d5a765787c7fa" [label="sha256:106d048df82b36756c292fb5f58ea79b2cd368a2bb8537a75f8d5a765787c7fa" shape="plaintext"];
  "sha256:2f0282e30bb4329c33f533f7c612c3056a613c830016c79cf261b732d373c5d0" -> "sha256:714fee9ec2e627dc26846fe315f01228ddf4d970f1cc5e57eca046be07f4efb9" [label=""];
  "sha256:714fee9ec2e627dc26846fe315f01228ddf4d970f1cc5e57eca046be07f4efb9" -> "sha256:1bd66fdca2bdc7c023551c5ffb101451d343636e2b29765f4767c08db2b8ba71" [label=""];
  "sha256:1bd66fdca2bdc7c023551c5ffb101451d343636e2b29765f4767c08db2b8ba71" -> "sha256:04ccf8ea184c5dcd71938679fe949af1c9b629f98bbdf6310a7d3c453c7cd2d4" [label=""];
  "sha256:144728c3166210a26d238cd73aa7b8bb89e542389c62f94e83378b8e752ce07d" -> "sha256:04ccf8ea184c5dcd71938679fe949af1c9b629f98bbdf6310a7d3c453c7cd2d4" [label=""];
  "sha256:04ccf8ea184c5dcd71938679fe949af1c9b629f98bbdf6310a7d3c453c7cd2d4" -> "sha256:106d048df82b36756c292fb5f58ea79b2cd368a2bb8537a75f8d5a765787c7fa" [label=""];
}

