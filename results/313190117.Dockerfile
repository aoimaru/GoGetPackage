[app/sources/313190117.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:0471a8cd27802f266f523902a3ca486beac58b7046fff4175342ae36a89a1973" [label="/bin/sh -c adduser --system ggc_user     && groupadd --system ggc_group" shape="box"];
  "sha256:47770f3445b8b732e1b6bd67a36027633a52d6e7944a25781952b2d041f693d7" [label="/bin/sh -c apt-get update     && apt-get install -y sqlite3 python2.7 binutils" shape="box"];
  "sha256:ad9a86633cbca1b99fdf47ab9424b5fbf04d3950616b3554384651bc53948c82" [label="local://context" shape="ellipse"];
  "sha256:8b701cf2cc2621e087add7737e0990dc2fb6c165513b5ead223aaf4ebdc90b3c" [label="copy{src=/downloads/greengrass-ubuntu-x86-64-1.6.0.tar.gz, dest=/}" shape="note"];
  "sha256:43578d5951a84ea7b0c8f1da81f348fdb7449e49621075394439dd218ddb92f7" [label="/bin/sh -c apt-get install -y ca-certificates" shape="box"];
  "sha256:8bba073f6322ba9f70f71e8bbf741450419fe3c3fdccb8a5a26ecedb44a54e19" [label="copy{src=/start.sh, dest=/}" shape="note"];
  "sha256:d1628928be7900cfec297272b8a19f0472ac6fd3382d68b999bd1fb3345fce5f" [label="sha256:d1628928be7900cfec297272b8a19f0472ac6fd3382d68b999bd1fb3345fce5f" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:0471a8cd27802f266f523902a3ca486beac58b7046fff4175342ae36a89a1973" [label=""];
  "sha256:0471a8cd27802f266f523902a3ca486beac58b7046fff4175342ae36a89a1973" -> "sha256:47770f3445b8b732e1b6bd67a36027633a52d6e7944a25781952b2d041f693d7" [label=""];
  "sha256:47770f3445b8b732e1b6bd67a36027633a52d6e7944a25781952b2d041f693d7" -> "sha256:8b701cf2cc2621e087add7737e0990dc2fb6c165513b5ead223aaf4ebdc90b3c" [label=""];
  "sha256:ad9a86633cbca1b99fdf47ab9424b5fbf04d3950616b3554384651bc53948c82" -> "sha256:8b701cf2cc2621e087add7737e0990dc2fb6c165513b5ead223aaf4ebdc90b3c" [label=""];
  "sha256:8b701cf2cc2621e087add7737e0990dc2fb6c165513b5ead223aaf4ebdc90b3c" -> "sha256:43578d5951a84ea7b0c8f1da81f348fdb7449e49621075394439dd218ddb92f7" [label=""];
  "sha256:43578d5951a84ea7b0c8f1da81f348fdb7449e49621075394439dd218ddb92f7" -> "sha256:8bba073f6322ba9f70f71e8bbf741450419fe3c3fdccb8a5a26ecedb44a54e19" [label=""];
  "sha256:ad9a86633cbca1b99fdf47ab9424b5fbf04d3950616b3554384651bc53948c82" -> "sha256:8bba073f6322ba9f70f71e8bbf741450419fe3c3fdccb8a5a26ecedb44a54e19" [label=""];
  "sha256:8bba073f6322ba9f70f71e8bbf741450419fe3c3fdccb8a5a26ecedb44a54e19" -> "sha256:d1628928be7900cfec297272b8a19f0472ac6fd3382d68b999bd1fb3345fce5f" [label=""];
}

