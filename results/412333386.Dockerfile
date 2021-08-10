[app/sources/412333386.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:cebb41beb1717b5bdd9a690183e318836e644cbb2b790bca108575a536df5619" [label="/bin/sh -c echo \"deb http://hk.archive.ubuntu.com/ubuntu precise main universe\" > /etc/apt/sources.list &&     echo \"deb http://hk.archive.ubuntu.com/ubuntu precise-updates main universe\" >> /etc/apt/sources.list &&     DEBIAN_FRONTEND=noninteractive apt-get update --assume-yes &&     DEBIAN_FRONTEND=noninteractive apt-get install                                                    python-software-properties                                                    locales                                                    sudo                                                    wget                                                    git                                                    unzip                                                    less                                                    vim                                                    byobu                                                    mosh                                            --assume-yes" shape="box"];
  "sha256:5776ab75cef5011ded0ba24e97c3979435765eecd3583bf1b92e03446c6adce7" [label="/bin/sh -c localedef -c -i en_US -f UTF-8 en_US.UTF-8" shape="box"];
  "sha256:6b1d3fbfe7931cb550e51aa3860af514dae919eb0bc3395cbe89f75fbb0bcb24" [label="https://raw.githubusercontent.com/opencog/ocpkg/master/ocpkg" shape="ellipse"];
  "sha256:1d2b4dda9b16b99c95a025d241e3cb697d98ecb358e28cf6e75da5e532005ec3" [label="copy{src=/ocpkg, dest=/octool}" shape="note"];
  "sha256:172d45fc0a4ab0362debd3c00b09fadf052f7449f70e8e83a70fb28ce036b72f" [label="/bin/sh -c chmod ugo+x /octool && /octool -a -d" shape="box"];
  "sha256:0238e4a4f6a5e30ffcb9eb238539c229d1cc3129997650175b482ee4314a628e" [label="/bin/sh -c apt-get -y install python-pip python-dev" shape="box"];
  "sha256:4fdeb55212bf7e9f714d6a3af1e210cfc19d722fa7d98abc410bb9d251d95d43" [label="/bin/sh -c pip install buildbot-slave==0.8.8" shape="box"];
  "sha256:79b811dbad90546fc7c86d5229fd1cf7399cca52efb4ce735c7773be8af5e495" [label="/bin/sh -c adduser --disabled-password -uid 1099 --gecos \"Buildbot,,,\" --home /buildbot buildbot" shape="box"];
  "sha256:f7617b164050901686f95a54e37904cf425c0118d5bf98b195d2764662c74853" [label="/bin/sh -c su buildbot sh -c \"buildslave create-slave --umask=022 /buildbot buildbot.opencog.org:9989 BUILDSLAVE_NAME BUILDSLAVE_PASSWD\"" shape="box"];
  "sha256:b6b73d45e3d882c794569d5a56109da5c0e07bfebadd976cb6eb786a386c304b" [label="local://context" shape="ellipse"];
  "sha256:97f92738472e02ba2fb80f9d2d942c7941aabd28c70690964abf7c59302e553f" [label="copy{src=/opencog, dest=/buildbot/opencog_master_precise/build}" shape="note"];
  "sha256:9f8d3af426880a2e4a728f27f1943810b4c3a6582a850c8905aa4e331c507650" [label="/bin/sh -c chown -R buildbot:buildbot /buildbot" shape="box"];
  "sha256:2e7b3de7b7a523597e10858651a304b00116af71613de945b5a8f54692e9752f" [label="mkdir{path=/buildbot/opencog_master_precise/build}" shape="note"];
  "sha256:78a4a5d0cf822ddc54dfca661c71f6372e2c66bfd13521326b12db802869f37d" [label="/bin/sh -c git remote rm origin" shape="box"];
  "sha256:7e75450802a31e9df4f3756c2a8cc7ca018f53b7e4579264240bc0d0b73fc495" [label="/bin/sh -c git remote add origin git://github.com/opencog/opencog" shape="box"];
  "sha256:c17c5c4f372db947f896251e67a854117db7f087d3d306e44897c525ea7823de" [label="/bin/sh -c echo \"David Hart <dhart@opencog.org>\" > /buildbot/info/admin &&     grep \"model name\" /proc/cpuinfo | head -1 | cut -d \":\" -f 2 | tr -d \" \" > /buildbot/info/host &&     grep DISTRIB_DESCRIPTION /etc/lsb-release | cut -d \"=\" -f 2 | tr -d \"\\\"\" >> /buildbot/info/host" shape="box"];
  "sha256:99320221479574051785102df3884b9039b37b6b34f2f923e8814425a242e1c4" [label="sha256:99320221479574051785102df3884b9039b37b6b34f2f923e8814425a242e1c4" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:cebb41beb1717b5bdd9a690183e318836e644cbb2b790bca108575a536df5619" [label=""];
  "sha256:cebb41beb1717b5bdd9a690183e318836e644cbb2b790bca108575a536df5619" -> "sha256:5776ab75cef5011ded0ba24e97c3979435765eecd3583bf1b92e03446c6adce7" [label=""];
  "sha256:5776ab75cef5011ded0ba24e97c3979435765eecd3583bf1b92e03446c6adce7" -> "sha256:1d2b4dda9b16b99c95a025d241e3cb697d98ecb358e28cf6e75da5e532005ec3" [label=""];
  "sha256:6b1d3fbfe7931cb550e51aa3860af514dae919eb0bc3395cbe89f75fbb0bcb24" -> "sha256:1d2b4dda9b16b99c95a025d241e3cb697d98ecb358e28cf6e75da5e532005ec3" [label=""];
  "sha256:1d2b4dda9b16b99c95a025d241e3cb697d98ecb358e28cf6e75da5e532005ec3" -> "sha256:172d45fc0a4ab0362debd3c00b09fadf052f7449f70e8e83a70fb28ce036b72f" [label=""];
  "sha256:172d45fc0a4ab0362debd3c00b09fadf052f7449f70e8e83a70fb28ce036b72f" -> "sha256:0238e4a4f6a5e30ffcb9eb238539c229d1cc3129997650175b482ee4314a628e" [label=""];
  "sha256:0238e4a4f6a5e30ffcb9eb238539c229d1cc3129997650175b482ee4314a628e" -> "sha256:4fdeb55212bf7e9f714d6a3af1e210cfc19d722fa7d98abc410bb9d251d95d43" [label=""];
  "sha256:4fdeb55212bf7e9f714d6a3af1e210cfc19d722fa7d98abc410bb9d251d95d43" -> "sha256:79b811dbad90546fc7c86d5229fd1cf7399cca52efb4ce735c7773be8af5e495" [label=""];
  "sha256:79b811dbad90546fc7c86d5229fd1cf7399cca52efb4ce735c7773be8af5e495" -> "sha256:f7617b164050901686f95a54e37904cf425c0118d5bf98b195d2764662c74853" [label=""];
  "sha256:f7617b164050901686f95a54e37904cf425c0118d5bf98b195d2764662c74853" -> "sha256:97f92738472e02ba2fb80f9d2d942c7941aabd28c70690964abf7c59302e553f" [label=""];
  "sha256:b6b73d45e3d882c794569d5a56109da5c0e07bfebadd976cb6eb786a386c304b" -> "sha256:97f92738472e02ba2fb80f9d2d942c7941aabd28c70690964abf7c59302e553f" [label=""];
  "sha256:97f92738472e02ba2fb80f9d2d942c7941aabd28c70690964abf7c59302e553f" -> "sha256:9f8d3af426880a2e4a728f27f1943810b4c3a6582a850c8905aa4e331c507650" [label=""];
  "sha256:9f8d3af426880a2e4a728f27f1943810b4c3a6582a850c8905aa4e331c507650" -> "sha256:2e7b3de7b7a523597e10858651a304b00116af71613de945b5a8f54692e9752f" [label=""];
  "sha256:2e7b3de7b7a523597e10858651a304b00116af71613de945b5a8f54692e9752f" -> "sha256:78a4a5d0cf822ddc54dfca661c71f6372e2c66bfd13521326b12db802869f37d" [label=""];
  "sha256:78a4a5d0cf822ddc54dfca661c71f6372e2c66bfd13521326b12db802869f37d" -> "sha256:7e75450802a31e9df4f3756c2a8cc7ca018f53b7e4579264240bc0d0b73fc495" [label=""];
  "sha256:7e75450802a31e9df4f3756c2a8cc7ca018f53b7e4579264240bc0d0b73fc495" -> "sha256:c17c5c4f372db947f896251e67a854117db7f087d3d306e44897c525ea7823de" [label=""];
  "sha256:c17c5c4f372db947f896251e67a854117db7f087d3d306e44897c525ea7823de" -> "sha256:99320221479574051785102df3884b9039b37b6b34f2f923e8814425a242e1c4" [label=""];
}

