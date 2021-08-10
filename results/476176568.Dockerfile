[app/sources/476176568.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:44ada4d7364e15e8e09208c5ba7433c25bd533cea674e77ba99945d16b648fe1" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9" shape="box"];
  "sha256:9b7d38bbff96728d105c05b1a0624e9b0a850d34d6bd52ac5a0aa9639517fa2b" [label="/bin/sh -c echo \"deb http://repos.azulsystems.com/debian stable  main\" >> /etc/apt/sources.list.d/zulu.list" shape="box"];
  "sha256:220da944cd56c466155d6c7e584dd6414997c34ba818305b26ae8059a01fb89c" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:73d9504623ecebac7f8bad135078ec45f81830d2a278ee9ef687b1e69fac399a" [label="/bin/sh -c apt-get -y install zulu-6=6.7.0.2" shape="box"];
  "sha256:7fedd6e4c723f0fb054cdb9db25ac30249c468657757fea02439a0c857342661" [label="sha256:7fedd6e4c723f0fb054cdb9db25ac30249c468657757fea02439a0c857342661" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:44ada4d7364e15e8e09208c5ba7433c25bd533cea674e77ba99945d16b648fe1" [label=""];
  "sha256:44ada4d7364e15e8e09208c5ba7433c25bd533cea674e77ba99945d16b648fe1" -> "sha256:9b7d38bbff96728d105c05b1a0624e9b0a850d34d6bd52ac5a0aa9639517fa2b" [label=""];
  "sha256:9b7d38bbff96728d105c05b1a0624e9b0a850d34d6bd52ac5a0aa9639517fa2b" -> "sha256:220da944cd56c466155d6c7e584dd6414997c34ba818305b26ae8059a01fb89c" [label=""];
  "sha256:220da944cd56c466155d6c7e584dd6414997c34ba818305b26ae8059a01fb89c" -> "sha256:73d9504623ecebac7f8bad135078ec45f81830d2a278ee9ef687b1e69fac399a" [label=""];
  "sha256:73d9504623ecebac7f8bad135078ec45f81830d2a278ee9ef687b1e69fac399a" -> "sha256:7fedd6e4c723f0fb054cdb9db25ac30249c468657757fea02439a0c857342661" [label=""];
}

