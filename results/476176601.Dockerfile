[app/sources/476176601.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:44ada4d7364e15e8e09208c5ba7433c25bd533cea674e77ba99945d16b648fe1" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9" shape="box"];
  "sha256:9b7d38bbff96728d105c05b1a0624e9b0a850d34d6bd52ac5a0aa9639517fa2b" [label="/bin/sh -c echo \"deb http://repos.azulsystems.com/debian stable  main\" >> /etc/apt/sources.list.d/zulu.list" shape="box"];
  "sha256:220da944cd56c466155d6c7e584dd6414997c34ba818305b26ae8059a01fb89c" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:a3e2ba495336c37fcabe44ea44439e487969c1babdebce2cb441a97ff9444883" [label="/bin/sh -c apt-get -y install zulu-7=7.11.0.3" shape="box"];
  "sha256:2db9ef9e12d54942118deb1d4177b1416236b2123d3383e7a059b2d148415daa" [label="sha256:2db9ef9e12d54942118deb1d4177b1416236b2123d3383e7a059b2d148415daa" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:44ada4d7364e15e8e09208c5ba7433c25bd533cea674e77ba99945d16b648fe1" [label=""];
  "sha256:44ada4d7364e15e8e09208c5ba7433c25bd533cea674e77ba99945d16b648fe1" -> "sha256:9b7d38bbff96728d105c05b1a0624e9b0a850d34d6bd52ac5a0aa9639517fa2b" [label=""];
  "sha256:9b7d38bbff96728d105c05b1a0624e9b0a850d34d6bd52ac5a0aa9639517fa2b" -> "sha256:220da944cd56c466155d6c7e584dd6414997c34ba818305b26ae8059a01fb89c" [label=""];
  "sha256:220da944cd56c466155d6c7e584dd6414997c34ba818305b26ae8059a01fb89c" -> "sha256:a3e2ba495336c37fcabe44ea44439e487969c1babdebce2cb441a97ff9444883" [label=""];
  "sha256:a3e2ba495336c37fcabe44ea44439e487969c1babdebce2cb441a97ff9444883" -> "sha256:2db9ef9e12d54942118deb1d4177b1416236b2123d3383e7a059b2d148415daa" [label=""];
}

