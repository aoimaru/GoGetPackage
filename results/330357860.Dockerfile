[app/sources/330357860.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:f925d92e08d4683c419ec51ec5f9c22e4f8e8619bee0917250de7ad653299e4b" [label="/bin/sh -c sed -i \"s/http:\\/\\/archive.ubuntu.com/http:\\/\\/mirrors.ustc.edu.cn/g\" /etc/apt/sources.list" shape="box"];
  "sha256:6c0c05bce7cd5013444d71aa68ad2a4d0eca7c185f75bcabc20ed2ed89aa38bc" [label="/bin/sh -c apt-get update && apt-get -y dist-upgrade" shape="box"];
  "sha256:89278bc3d4dcc76ced73ca8075fb2c936708d4a6d0786a33be89c75b33db6546" [label="/bin/sh -c apt-get install -y lib32z1 xinetd" shape="box"];
  "sha256:7f735fcb74ceb39ed126052898f04302228ee6bc8cb88b405ea147acd049f944" [label="/bin/sh -c useradd -u 8888 -m pwn" shape="box"];
  "sha256:4e2c838cdbda95ce3bd71212bae98c22ac42c93ca4c0e5eda5c87470f1586a37" [label="sha256:4e2c838cdbda95ce3bd71212bae98c22ac42c93ca4c0e5eda5c87470f1586a37" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:f925d92e08d4683c419ec51ec5f9c22e4f8e8619bee0917250de7ad653299e4b" [label=""];
  "sha256:f925d92e08d4683c419ec51ec5f9c22e4f8e8619bee0917250de7ad653299e4b" -> "sha256:6c0c05bce7cd5013444d71aa68ad2a4d0eca7c185f75bcabc20ed2ed89aa38bc" [label=""];
  "sha256:6c0c05bce7cd5013444d71aa68ad2a4d0eca7c185f75bcabc20ed2ed89aa38bc" -> "sha256:89278bc3d4dcc76ced73ca8075fb2c936708d4a6d0786a33be89c75b33db6546" [label=""];
  "sha256:89278bc3d4dcc76ced73ca8075fb2c936708d4a6d0786a33be89c75b33db6546" -> "sha256:7f735fcb74ceb39ed126052898f04302228ee6bc8cb88b405ea147acd049f944" [label=""];
  "sha256:7f735fcb74ceb39ed126052898f04302228ee6bc8cb88b405ea147acd049f944" -> "sha256:4e2c838cdbda95ce3bd71212bae98c22ac42c93ca4c0e5eda5c87470f1586a37" [label=""];
}

