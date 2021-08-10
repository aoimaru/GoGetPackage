[app/sources/309465424.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:4b71fc03e474fe56c5511519f9068d5f15d72498e6700742a53e1256fb0cf8ce" [label="/bin/sh -c sed 's/main$/main universe/' -i /etc/apt/sources.list" shape="box"];
  "sha256:71731e38005a6e0a66996e7c86ce75b940cbd3a8a75afabcedd90aabe4a30505" [label="/bin/sh -c apt-get update && apt-get install -y software-properties-common python-software-properties" shape="box"];
  "sha256:15561c21b93b18a516ecd6ce36b6fe47c8ce11c91b498afeef2d3940e6e52c00" [label="/bin/sh -c add-apt-repository ppa:webupd8team/java -y" shape="box"];
  "sha256:ed84d2185f21d58396aa28e8d3f7a58bccee12a6b063c7911966f2b0c5469002" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:f5df08be1e0478ba9a4a11eda153b2bd45b58433294252d102cebddc89978a9d" [label="/bin/sh -c apt-get install -y wget unzip" shape="box"];
  "sha256:505fff6f9dab436dad49c60eeebc32da2ada54f5345bf927ce57211f506d0a78" [label="/bin/sh -c echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections" shape="box"];
  "sha256:f7a2a0188b7ea470c28b3b6c665463883a6be5381549d95d3c126e3fb923b1e1" [label="/bin/sh -c apt-get install -y oracle-java8-installer" shape="box"];
  "sha256:4913b5d2f0fd27089e7f57f82eb42e6a4a3e31696824f7280e6e7823ad03ce19" [label="/bin/sh -c mkdir /nxt" shape="box"];
  "sha256:7899feeac8ea5da6bdf2a46e6ddb9ccfa1be1d08d24eeda7c0c5a2cdcfc7ed75" [label="local://context" shape="ellipse"];
  "sha256:a1e7fd5136f72caae7a8b3b12c901ededee63a63cf607391ae46467337ea5f1a" [label="copy{src=/, dest=/nxt}" shape="note"];
  "sha256:615876a5f963ebe92157f4f23b05381a7002ac8c0e96dd7139034e7a22225183" [label="copy{src=/contrib/docker_start.sh, dest=/docker_start.sh}" shape="note"];
  "sha256:a132ed7d11edd618c0c5beda3fe4442186f9322ba0e4a5ec96e7b9f3df2ff0c1" [label="/bin/sh -c echo 'nxt.allowedBotHosts=*' >> /nxt/conf/nxt.properties" shape="box"];
  "sha256:dab3bb4a1f13c73ee7d6f11b6e606a2dfcf9b43dcfa1fccdb6f745e7171d9ff0" [label="/bin/sh -c echo 'nxt.apiServerHost=0.0.0.0' >> /nxt/conf/nxt.properties" shape="box"];
  "sha256:a1e005b0a9329f8733b8f8953427656be15f666e7e4888bf6cf9a278febf7067" [label="/bin/sh -c chmod +x /docker_start.sh" shape="box"];
  "sha256:5e9f90d576c81f00900ea8180e065bd4532f92145ffbc77fff1a8912301df923" [label="/bin/sh -c cd /nxt; ./compile.sh" shape="box"];
  "sha256:2a264b842b178c0013cd9c6613321638a4e7396babf670315aaa0f9f401bed0b" [label="sha256:2a264b842b178c0013cd9c6613321638a4e7396babf670315aaa0f9f401bed0b" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:4b71fc03e474fe56c5511519f9068d5f15d72498e6700742a53e1256fb0cf8ce" [label=""];
  "sha256:4b71fc03e474fe56c5511519f9068d5f15d72498e6700742a53e1256fb0cf8ce" -> "sha256:71731e38005a6e0a66996e7c86ce75b940cbd3a8a75afabcedd90aabe4a30505" [label=""];
  "sha256:71731e38005a6e0a66996e7c86ce75b940cbd3a8a75afabcedd90aabe4a30505" -> "sha256:15561c21b93b18a516ecd6ce36b6fe47c8ce11c91b498afeef2d3940e6e52c00" [label=""];
  "sha256:15561c21b93b18a516ecd6ce36b6fe47c8ce11c91b498afeef2d3940e6e52c00" -> "sha256:ed84d2185f21d58396aa28e8d3f7a58bccee12a6b063c7911966f2b0c5469002" [label=""];
  "sha256:ed84d2185f21d58396aa28e8d3f7a58bccee12a6b063c7911966f2b0c5469002" -> "sha256:f5df08be1e0478ba9a4a11eda153b2bd45b58433294252d102cebddc89978a9d" [label=""];
  "sha256:f5df08be1e0478ba9a4a11eda153b2bd45b58433294252d102cebddc89978a9d" -> "sha256:505fff6f9dab436dad49c60eeebc32da2ada54f5345bf927ce57211f506d0a78" [label=""];
  "sha256:505fff6f9dab436dad49c60eeebc32da2ada54f5345bf927ce57211f506d0a78" -> "sha256:f7a2a0188b7ea470c28b3b6c665463883a6be5381549d95d3c126e3fb923b1e1" [label=""];
  "sha256:f7a2a0188b7ea470c28b3b6c665463883a6be5381549d95d3c126e3fb923b1e1" -> "sha256:4913b5d2f0fd27089e7f57f82eb42e6a4a3e31696824f7280e6e7823ad03ce19" [label=""];
  "sha256:4913b5d2f0fd27089e7f57f82eb42e6a4a3e31696824f7280e6e7823ad03ce19" -> "sha256:a1e7fd5136f72caae7a8b3b12c901ededee63a63cf607391ae46467337ea5f1a" [label=""];
  "sha256:7899feeac8ea5da6bdf2a46e6ddb9ccfa1be1d08d24eeda7c0c5a2cdcfc7ed75" -> "sha256:a1e7fd5136f72caae7a8b3b12c901ededee63a63cf607391ae46467337ea5f1a" [label=""];
  "sha256:a1e7fd5136f72caae7a8b3b12c901ededee63a63cf607391ae46467337ea5f1a" -> "sha256:615876a5f963ebe92157f4f23b05381a7002ac8c0e96dd7139034e7a22225183" [label=""];
  "sha256:7899feeac8ea5da6bdf2a46e6ddb9ccfa1be1d08d24eeda7c0c5a2cdcfc7ed75" -> "sha256:615876a5f963ebe92157f4f23b05381a7002ac8c0e96dd7139034e7a22225183" [label=""];
  "sha256:615876a5f963ebe92157f4f23b05381a7002ac8c0e96dd7139034e7a22225183" -> "sha256:a132ed7d11edd618c0c5beda3fe4442186f9322ba0e4a5ec96e7b9f3df2ff0c1" [label=""];
  "sha256:a132ed7d11edd618c0c5beda3fe4442186f9322ba0e4a5ec96e7b9f3df2ff0c1" -> "sha256:dab3bb4a1f13c73ee7d6f11b6e606a2dfcf9b43dcfa1fccdb6f745e7171d9ff0" [label=""];
  "sha256:dab3bb4a1f13c73ee7d6f11b6e606a2dfcf9b43dcfa1fccdb6f745e7171d9ff0" -> "sha256:a1e005b0a9329f8733b8f8953427656be15f666e7e4888bf6cf9a278febf7067" [label=""];
  "sha256:a1e005b0a9329f8733b8f8953427656be15f666e7e4888bf6cf9a278febf7067" -> "sha256:5e9f90d576c81f00900ea8180e065bd4532f92145ffbc77fff1a8912301df923" [label=""];
  "sha256:5e9f90d576c81f00900ea8180e065bd4532f92145ffbc77fff1a8912301df923" -> "sha256:2a264b842b178c0013cd9c6613321638a4e7396babf670315aaa0f9f401bed0b" [label=""];
}

