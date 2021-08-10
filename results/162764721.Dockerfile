[app/sources/162764721.Dockerfile]
digraph {
  "sha256:8cfb5059d9402ef4fb3d4ad5023298fae9262032b3797aa8ce77d21d6f378702" [label="local://context" shape="ellipse"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:f362b552bddb380aa65ac5dab252299bb00f9e5385af4bbab6f5f9b3033d1351" [label="copy{src=/heketi, dest=/usr/bin/heketi}" shape="note"];
  "sha256:7d9471c2f9acf84a7a26a00f29f7bc729bc495df7ee98cb4ce6ee8f1f4930d9c" [label="copy{src=/heketi-start.sh, dest=/usr/bin/heketi-start.sh}" shape="note"];
  "sha256:9e4f1af4e5bc25adf57d9186dd3024a37490ece3d435d5a4794a5f5ab56205c9" [label="copy{src=/heketi.json, dest=/etc/heketi/heketi.json}" shape="note"];
  "sha256:27a420352e153459ff6858b532ab267138b49c9ebcb45d7ead81fc2e30a5b6a8" [label="/bin/sh -c mkdir /var/lib/heketi" shape="box"];
  "sha256:0ef803086cbaa46cebfc51aaa3c4d0b7c08b866649ee8750c2a5dea0257adcd2" [label="sha256:0ef803086cbaa46cebfc51aaa3c4d0b7c08b866649ee8750c2a5dea0257adcd2" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:f362b552bddb380aa65ac5dab252299bb00f9e5385af4bbab6f5f9b3033d1351" [label=""];
  "sha256:8cfb5059d9402ef4fb3d4ad5023298fae9262032b3797aa8ce77d21d6f378702" -> "sha256:f362b552bddb380aa65ac5dab252299bb00f9e5385af4bbab6f5f9b3033d1351" [label=""];
  "sha256:f362b552bddb380aa65ac5dab252299bb00f9e5385af4bbab6f5f9b3033d1351" -> "sha256:7d9471c2f9acf84a7a26a00f29f7bc729bc495df7ee98cb4ce6ee8f1f4930d9c" [label=""];
  "sha256:8cfb5059d9402ef4fb3d4ad5023298fae9262032b3797aa8ce77d21d6f378702" -> "sha256:7d9471c2f9acf84a7a26a00f29f7bc729bc495df7ee98cb4ce6ee8f1f4930d9c" [label=""];
  "sha256:7d9471c2f9acf84a7a26a00f29f7bc729bc495df7ee98cb4ce6ee8f1f4930d9c" -> "sha256:9e4f1af4e5bc25adf57d9186dd3024a37490ece3d435d5a4794a5f5ab56205c9" [label=""];
  "sha256:8cfb5059d9402ef4fb3d4ad5023298fae9262032b3797aa8ce77d21d6f378702" -> "sha256:9e4f1af4e5bc25adf57d9186dd3024a37490ece3d435d5a4794a5f5ab56205c9" [label=""];
  "sha256:9e4f1af4e5bc25adf57d9186dd3024a37490ece3d435d5a4794a5f5ab56205c9" -> "sha256:27a420352e153459ff6858b532ab267138b49c9ebcb45d7ead81fc2e30a5b6a8" [label=""];
  "sha256:27a420352e153459ff6858b532ab267138b49c9ebcb45d7ead81fc2e30a5b6a8" -> "sha256:0ef803086cbaa46cebfc51aaa3c4d0b7c08b866649ee8750c2a5dea0257adcd2" [label=""];
}

