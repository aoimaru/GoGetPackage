[app/sources/188757262.Dockerfile]
digraph {
  "sha256:cd4212faf54db136b0f795ef547588b33dda492cd17b24cdb1f6156535b5a36f" [label="docker-image://docker.io/library/ubuntu:14.04.2" shape="ellipse"];
  "sha256:b8e1c7f69b6d62174ddf67143197d81ca68b6e9c8aa7cc60b59bacf6be1c038f" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:19215cf7b3c15a5028e9c56400b5590976e3dc824225e70b0e2f764a4cdd0751" [label="/bin/sh -c apt-get -y install curl   wget" shape="box"];
  "sha256:5fe55a2ed2f0d407ef12be4e95683d6c29a73ed45e357541aa41b715109ee593" [label="/bin/sh -c apt-get -y install software-properties-common" shape="box"];
  "sha256:35948608d01513ca1a6f364a294b0138669f518be64e4c628931b622015d1e4e" [label="/bin/sh -c add-apt-repository ppa:webupd8team/java" shape="box"];
  "sha256:c8f1fce010d9dabdd7602de41a286faf68470c77f467e3f451b2cc3a85758e3f" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:bda1efed435af16026a5516ba08d5194a37727ee91a88a74428af85c08ad4a7a" [label="/bin/sh -c echo \"oracle-java8-installer shared/accepted-oracle-license-v1-1 boolean true\" | debconf-set-selections" shape="box"];
  "sha256:a5ce43987897a9aabbc471fe92f3ffa33043d62b0f32e5a47992063263684d0d" [label="/bin/sh -c apt-get -y install oracle-java8-installer" shape="box"];
  "sha256:c85dacd4704ce3e39ce1b9bceae54cc1e6890ee5e589e8f1c850aff94283fe30" [label="/bin/sh -c update-alternatives --display java" shape="box"];
  "sha256:cbf0a62db38b19f4befcff4867b0c2a78c61f315effa9f2304cf20914ae97269" [label="/bin/sh -c curl -s http://ftp.halifax.rwth-aachen.de/apache/spark/spark-1.3.1/spark-1.3.1-bin-hadoop2.6.tgz | tar -xz -C /usr/local/" shape="box"];
  "sha256:0f75f06149488ea0f630313af2d27dc0d1a346986cf3a382a0159726a41c7d90" [label="/bin/sh -c cd /usr/local && ln -s spark-1.3.1-bin-hadoop2.6 spark" shape="box"];
  "sha256:a451ad2efb958790a5742fe36fbbe2fb417638fa847041afb3cb9306ee9b7754" [label="/bin/sh -c echo 'export PATH=/usr/local/share/conda/bin:$PATH' > /etc/profile.d/conda.sh" shape="box"];
  "sha256:bf02198c635ab7474235dcebc20945b227145cb24dbdb2b571cef03a15e1b17a" [label="/bin/sh -c wget --quiet http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh" shape="box"];
  "sha256:cdb2e20bf41454feae7cd42555be3a7c72cb8ceccdfdbfc18f611806fcabe638" [label="/bin/sh -c /bin/bash /Miniconda-latest-Linux-x86_64.sh -b -p /usr/local/share/conda" shape="box"];
  "sha256:da03f92f027c04cdd901e47f8ff2e72b5eb2d2b3e293948ee48e099ef3cb0349" [label="/bin/sh -c rm Miniconda-latest-Linux-x86_64.sh" shape="box"];
  "sha256:f21e1d7a00387aae1ba196bb64e0414cd7956dd93278813260e326fee4d7a45c" [label="/bin/sh -c /usr/local/share/conda/bin/conda install --yes conda==3.9.0" shape="box"];
  "sha256:c4f6d483731192c64ba787667e0c8d3e38e0642e1b69176703c2b66c5d6454da" [label="/bin/sh -c conda install -y pip" shape="box"];
  "sha256:ac22f3add098b36be91383784321e83c54c9180c5ce9013c753e08d78fd954c6" [label="/bin/sh -c pip install py4j" shape="box"];
  "sha256:1e2fa91c919960fb1a0a05f26c30488af7f5a5b5b8e7a7fd6c4ff453248fee1a" [label="sha256:1e2fa91c919960fb1a0a05f26c30488af7f5a5b5b8e7a7fd6c4ff453248fee1a" shape="plaintext"];
  "sha256:cd4212faf54db136b0f795ef547588b33dda492cd17b24cdb1f6156535b5a36f" -> "sha256:b8e1c7f69b6d62174ddf67143197d81ca68b6e9c8aa7cc60b59bacf6be1c038f" [label=""];
  "sha256:b8e1c7f69b6d62174ddf67143197d81ca68b6e9c8aa7cc60b59bacf6be1c038f" -> "sha256:19215cf7b3c15a5028e9c56400b5590976e3dc824225e70b0e2f764a4cdd0751" [label=""];
  "sha256:19215cf7b3c15a5028e9c56400b5590976e3dc824225e70b0e2f764a4cdd0751" -> "sha256:5fe55a2ed2f0d407ef12be4e95683d6c29a73ed45e357541aa41b715109ee593" [label=""];
  "sha256:5fe55a2ed2f0d407ef12be4e95683d6c29a73ed45e357541aa41b715109ee593" -> "sha256:35948608d01513ca1a6f364a294b0138669f518be64e4c628931b622015d1e4e" [label=""];
  "sha256:35948608d01513ca1a6f364a294b0138669f518be64e4c628931b622015d1e4e" -> "sha256:c8f1fce010d9dabdd7602de41a286faf68470c77f467e3f451b2cc3a85758e3f" [label=""];
  "sha256:c8f1fce010d9dabdd7602de41a286faf68470c77f467e3f451b2cc3a85758e3f" -> "sha256:bda1efed435af16026a5516ba08d5194a37727ee91a88a74428af85c08ad4a7a" [label=""];
  "sha256:bda1efed435af16026a5516ba08d5194a37727ee91a88a74428af85c08ad4a7a" -> "sha256:a5ce43987897a9aabbc471fe92f3ffa33043d62b0f32e5a47992063263684d0d" [label=""];
  "sha256:a5ce43987897a9aabbc471fe92f3ffa33043d62b0f32e5a47992063263684d0d" -> "sha256:c85dacd4704ce3e39ce1b9bceae54cc1e6890ee5e589e8f1c850aff94283fe30" [label=""];
  "sha256:c85dacd4704ce3e39ce1b9bceae54cc1e6890ee5e589e8f1c850aff94283fe30" -> "sha256:cbf0a62db38b19f4befcff4867b0c2a78c61f315effa9f2304cf20914ae97269" [label=""];
  "sha256:cbf0a62db38b19f4befcff4867b0c2a78c61f315effa9f2304cf20914ae97269" -> "sha256:0f75f06149488ea0f630313af2d27dc0d1a346986cf3a382a0159726a41c7d90" [label=""];
  "sha256:0f75f06149488ea0f630313af2d27dc0d1a346986cf3a382a0159726a41c7d90" -> "sha256:a451ad2efb958790a5742fe36fbbe2fb417638fa847041afb3cb9306ee9b7754" [label=""];
  "sha256:a451ad2efb958790a5742fe36fbbe2fb417638fa847041afb3cb9306ee9b7754" -> "sha256:bf02198c635ab7474235dcebc20945b227145cb24dbdb2b571cef03a15e1b17a" [label=""];
  "sha256:bf02198c635ab7474235dcebc20945b227145cb24dbdb2b571cef03a15e1b17a" -> "sha256:cdb2e20bf41454feae7cd42555be3a7c72cb8ceccdfdbfc18f611806fcabe638" [label=""];
  "sha256:cdb2e20bf41454feae7cd42555be3a7c72cb8ceccdfdbfc18f611806fcabe638" -> "sha256:da03f92f027c04cdd901e47f8ff2e72b5eb2d2b3e293948ee48e099ef3cb0349" [label=""];
  "sha256:da03f92f027c04cdd901e47f8ff2e72b5eb2d2b3e293948ee48e099ef3cb0349" -> "sha256:f21e1d7a00387aae1ba196bb64e0414cd7956dd93278813260e326fee4d7a45c" [label=""];
  "sha256:f21e1d7a00387aae1ba196bb64e0414cd7956dd93278813260e326fee4d7a45c" -> "sha256:c4f6d483731192c64ba787667e0c8d3e38e0642e1b69176703c2b66c5d6454da" [label=""];
  "sha256:c4f6d483731192c64ba787667e0c8d3e38e0642e1b69176703c2b66c5d6454da" -> "sha256:ac22f3add098b36be91383784321e83c54c9180c5ce9013c753e08d78fd954c6" [label=""];
  "sha256:ac22f3add098b36be91383784321e83c54c9180c5ce9013c753e08d78fd954c6" -> "sha256:1e2fa91c919960fb1a0a05f26c30488af7f5a5b5b8e7a7fd6c4ff453248fee1a" [label=""];
}

