[app/sources/339102894.Dockerfile]
digraph {
  "sha256:70ad0a51b364b6f26d236805c105bce0385989c0cc5b2fb63707523c1f27aa59" [label="local://context" shape="ellipse"];
  "sha256:bd3e233943172ba8f6f0215444bf218f0952e1c43937019033a728123450f85d" [label="docker-image://docker.io/library/trusty:latest" shape="ellipse"];
  "sha256:5227da6c4338802f4521631353f81982b6f67881fb357600219fc189deaefe03" [label="/bin/sh -c rm r-base-versions.txt" shape="box"];
  "sha256:cae751f6b261db5d5250f5beda3e8a86929360684d82bcebd3bd2b34fab58337" [label="/bin/sh -c apt-get remove -y -q -d r-base-core" shape="box"];
  "sha256:2d8ab8941aad8320ebe0700664cbcd75a3df158645fb1c93ce88eba8a8137457" [label="/bin/sh -c sed -i '$ d' /etc/apt/sources.list" shape="box"];
  "sha256:4bbb36aa5bfdfa92f5a80785968c0849b722f485efec1ace3f4a7031fbed8f7e" [label="/bin/sh -c echo \"deb https://cran.rstudio.com/bin/linux/ubuntu trusty-cran35/\" >> /etc/apt/sources.list" shape="box"];
  "sha256:f2e82b6187e3416e90693fad5a354651d6a0f3be86a35e780cd3454cfbbdf8a8" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:2b23de4620dc41ff4893ee54d351c4857bbf1c26bdb0e94208cd2eb7de23b009" [label="/bin/sh -c apt-get install -y -q -d r-base-core" shape="box"];
  "sha256:34035e004781f2d16fbe67f7bc5d17a95f7a87bf80d2282f57048c0d2ea76a06" [label="/bin/sh -c apt-cache madison r-base-core | grep rstudio | cut -d\"|\" -f 2 | perl -pe '$x = $_; $x =~ s/-.*//; s/^ //; $_ = \"# $_\" if $seen{$x}++;' > r-base-versions.txt" shape="box"];
  "sha256:d480abcd1686f5c92905f5ee8cf94fd4777f2d5c44d903034988536dfb0da82b" [label="copy{src=/install-versions.sh, dest=/}" shape="note"];
  "sha256:0abd9ceaeb2c7228d14a7a39cbaeb2a65b96542405c2b632b45cd6b38249904f" [label="/bin/sh -c chmod a+x install-versions.sh" shape="box"];
  "sha256:458b64aaa37c21938215961dc07fba9d2f750ffff28809335620b4d0394e9b70" [label="copy{src=/list-objects.R, dest=/}" shape="note"];
  "sha256:44a1b91201aed69dfa962904c49139e1531694b2610b50bcb1bb6deb9fe5e95e" [label="copy{src=/write-table-backport.R, dest=/}" shape="note"];
  "sha256:73963baaf4192d6d46ffbb31f02bb7080d0e4035ffab96a9c6225eb086fa7b0b" [label="sha256:73963baaf4192d6d46ffbb31f02bb7080d0e4035ffab96a9c6225eb086fa7b0b" shape="plaintext"];
  "sha256:bd3e233943172ba8f6f0215444bf218f0952e1c43937019033a728123450f85d" -> "sha256:5227da6c4338802f4521631353f81982b6f67881fb357600219fc189deaefe03" [label=""];
  "sha256:5227da6c4338802f4521631353f81982b6f67881fb357600219fc189deaefe03" -> "sha256:cae751f6b261db5d5250f5beda3e8a86929360684d82bcebd3bd2b34fab58337" [label=""];
  "sha256:cae751f6b261db5d5250f5beda3e8a86929360684d82bcebd3bd2b34fab58337" -> "sha256:2d8ab8941aad8320ebe0700664cbcd75a3df158645fb1c93ce88eba8a8137457" [label=""];
  "sha256:2d8ab8941aad8320ebe0700664cbcd75a3df158645fb1c93ce88eba8a8137457" -> "sha256:4bbb36aa5bfdfa92f5a80785968c0849b722f485efec1ace3f4a7031fbed8f7e" [label=""];
  "sha256:4bbb36aa5bfdfa92f5a80785968c0849b722f485efec1ace3f4a7031fbed8f7e" -> "sha256:f2e82b6187e3416e90693fad5a354651d6a0f3be86a35e780cd3454cfbbdf8a8" [label=""];
  "sha256:f2e82b6187e3416e90693fad5a354651d6a0f3be86a35e780cd3454cfbbdf8a8" -> "sha256:2b23de4620dc41ff4893ee54d351c4857bbf1c26bdb0e94208cd2eb7de23b009" [label=""];
  "sha256:2b23de4620dc41ff4893ee54d351c4857bbf1c26bdb0e94208cd2eb7de23b009" -> "sha256:34035e004781f2d16fbe67f7bc5d17a95f7a87bf80d2282f57048c0d2ea76a06" [label=""];
  "sha256:34035e004781f2d16fbe67f7bc5d17a95f7a87bf80d2282f57048c0d2ea76a06" -> "sha256:d480abcd1686f5c92905f5ee8cf94fd4777f2d5c44d903034988536dfb0da82b" [label=""];
  "sha256:70ad0a51b364b6f26d236805c105bce0385989c0cc5b2fb63707523c1f27aa59" -> "sha256:d480abcd1686f5c92905f5ee8cf94fd4777f2d5c44d903034988536dfb0da82b" [label=""];
  "sha256:d480abcd1686f5c92905f5ee8cf94fd4777f2d5c44d903034988536dfb0da82b" -> "sha256:0abd9ceaeb2c7228d14a7a39cbaeb2a65b96542405c2b632b45cd6b38249904f" [label=""];
  "sha256:0abd9ceaeb2c7228d14a7a39cbaeb2a65b96542405c2b632b45cd6b38249904f" -> "sha256:458b64aaa37c21938215961dc07fba9d2f750ffff28809335620b4d0394e9b70" [label=""];
  "sha256:70ad0a51b364b6f26d236805c105bce0385989c0cc5b2fb63707523c1f27aa59" -> "sha256:458b64aaa37c21938215961dc07fba9d2f750ffff28809335620b4d0394e9b70" [label=""];
  "sha256:458b64aaa37c21938215961dc07fba9d2f750ffff28809335620b4d0394e9b70" -> "sha256:44a1b91201aed69dfa962904c49139e1531694b2610b50bcb1bb6deb9fe5e95e" [label=""];
  "sha256:70ad0a51b364b6f26d236805c105bce0385989c0cc5b2fb63707523c1f27aa59" -> "sha256:44a1b91201aed69dfa962904c49139e1531694b2610b50bcb1bb6deb9fe5e95e" [label=""];
  "sha256:44a1b91201aed69dfa962904c49139e1531694b2610b50bcb1bb6deb9fe5e95e" -> "sha256:73963baaf4192d6d46ffbb31f02bb7080d0e4035ffab96a9c6225eb086fa7b0b" [label=""];
}

