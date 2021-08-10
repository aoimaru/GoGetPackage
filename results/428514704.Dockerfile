[app/sources/428514704.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:9424bfc79cfbfffd47b5bdf44ac4efd0b3cb7ea20e1c66756b38d80dab715ea8" [label="/bin/sh -c yum update -y && yum install -y make automake libtool openssl-devel curl" shape="box"];
  "sha256:9d5169d2e469a95c10fca266f852ca246beebd57be774992446b408d8e800c23" [label="/bin/sh -c yum install -y lapack-devel atlas-devel gcc-c++ python-devel" shape="box"];
  "sha256:eddb36d85d2547488083f796f7d0abe649262cba2d38dd8adbbf3750411645bb" [label="/bin/sh -c curl -O https://bootstrap.pypa.io/get-pip.py" shape="box"];
  "sha256:0c34675eaa4e91e25032e9024ab8467bf9889e9bc4182dd94e58ec0a1843d60a" [label="/bin/sh -c python get-pip.py" shape="box"];
  "sha256:ebc3aa2bcb606849736f415dce11a967c4e745115267bd0375f11e0cd6ff0ac4" [label="/bin/sh -c pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.5.0-cp27-none-linux_x86_64.whl" shape="box"];
  "sha256:1237c55fa4d6309942d547eb30f53d22c142740f63b19ea16eb06b41f41c858c" [label="/bin/sh -c yum clean all" shape="box"];
  "sha256:fa1ad283792373f551b2a589196a7b9c6813eb4c8635b9918775199bdd73a296" [label="sha256:fa1ad283792373f551b2a589196a7b9c6813eb4c8635b9918775199bdd73a296" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:9424bfc79cfbfffd47b5bdf44ac4efd0b3cb7ea20e1c66756b38d80dab715ea8" [label=""];
  "sha256:9424bfc79cfbfffd47b5bdf44ac4efd0b3cb7ea20e1c66756b38d80dab715ea8" -> "sha256:9d5169d2e469a95c10fca266f852ca246beebd57be774992446b408d8e800c23" [label=""];
  "sha256:9d5169d2e469a95c10fca266f852ca246beebd57be774992446b408d8e800c23" -> "sha256:eddb36d85d2547488083f796f7d0abe649262cba2d38dd8adbbf3750411645bb" [label=""];
  "sha256:eddb36d85d2547488083f796f7d0abe649262cba2d38dd8adbbf3750411645bb" -> "sha256:0c34675eaa4e91e25032e9024ab8467bf9889e9bc4182dd94e58ec0a1843d60a" [label=""];
  "sha256:0c34675eaa4e91e25032e9024ab8467bf9889e9bc4182dd94e58ec0a1843d60a" -> "sha256:ebc3aa2bcb606849736f415dce11a967c4e745115267bd0375f11e0cd6ff0ac4" [label=""];
  "sha256:ebc3aa2bcb606849736f415dce11a967c4e745115267bd0375f11e0cd6ff0ac4" -> "sha256:1237c55fa4d6309942d547eb30f53d22c142740f63b19ea16eb06b41f41c858c" [label=""];
  "sha256:1237c55fa4d6309942d547eb30f53d22c142740f63b19ea16eb06b41f41c858c" -> "sha256:fa1ad283792373f551b2a589196a7b9c6813eb4c8635b9918775199bdd73a296" [label=""];
}

