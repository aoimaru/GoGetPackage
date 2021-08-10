[app/sources/233284078.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:8afb01798230aef96d5abe44308f1f64cb72747213ccda87ba76ea596a286290" [label="/bin/sh -c echo \"===> add webupd8 repository...\"  &&     echo \"deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main\" | tee /etc/apt/sources.list.d/webupd8team-java.list  &&     echo \"deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main\" | tee -a /etc/apt/sources.list.d/webupd8team-java.list  &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886  &&     apt-get update  &&             echo \"===> install Java\"  &&     echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections  &&     echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections  &&     DEBIAN_FRONTEND=noninteractive  apt-get install -y --force-yes oracle-java8-installer oracle-java8-set-default" shape="box"];
  "sha256:bb8b325218b933730164004fb0c867dd4aab68f3512b09f7d545ac3c5e4d4265" [label="/bin/sh -c echo \"===> install g++\" &&     apt-get update && apt-get install -y --force-yes g++" shape="box"];
  "sha256:88690ba61383d28d66fc4c9f60677be39ee3c645f95e1d4d29e8f2cee7a0cafb" [label="/bin/sh -c echo \"===> install make, curl, perl\" &&     apt-get update && apt-get install -y --force-yes make curl perl" shape="box"];
  "sha256:4d56957b220111a2e1d11d1aad3e03687f510cd23468e9492dc94728fb1c70c2" [label="local://context" shape="ellipse"];
  "sha256:f7edc0fbf1997b3876ca012ab32e4bc256ef39405286ee8aa8a879d333b8cc4c" [label="copy{src=/autophrase.tar.gz, dest=/}" shape="note"];
  "sha256:1954f7a4f5687961110f3df5971cafb905046cf972dd178c81c479d79564144a" [label="/bin/sh -c echo \"===> compile\" &&    cd /autophrase && bash compile.sh" shape="box"];
  "sha256:eac61b9ec039f5d346ce9ede3e094c45ef830341c0ea13e321cd00bf239311d1" [label="/bin/sh -c echo \"===> clean up...\"  &&     apt-get purge -y --force-yes make &&     apt-get autoremove -y --purge make &&     rm -rf /var/cache/oracle-jdk8-installer  &&     apt-get clean  &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:723ed278cdc769f377fb908cd7c2eb2c5602eb2c7425d96cb894a8ebce55e668" [label="mkdir{path=/autophrase}" shape="note"];
  "sha256:2b3b0a068fa756d86987378aaff7f54f36ac5f240f08f5c5ce53a37329579621" [label="sha256:2b3b0a068fa756d86987378aaff7f54f36ac5f240f08f5c5ce53a37329579621" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:8afb01798230aef96d5abe44308f1f64cb72747213ccda87ba76ea596a286290" [label=""];
  "sha256:8afb01798230aef96d5abe44308f1f64cb72747213ccda87ba76ea596a286290" -> "sha256:bb8b325218b933730164004fb0c867dd4aab68f3512b09f7d545ac3c5e4d4265" [label=""];
  "sha256:bb8b325218b933730164004fb0c867dd4aab68f3512b09f7d545ac3c5e4d4265" -> "sha256:88690ba61383d28d66fc4c9f60677be39ee3c645f95e1d4d29e8f2cee7a0cafb" [label=""];
  "sha256:88690ba61383d28d66fc4c9f60677be39ee3c645f95e1d4d29e8f2cee7a0cafb" -> "sha256:f7edc0fbf1997b3876ca012ab32e4bc256ef39405286ee8aa8a879d333b8cc4c" [label=""];
  "sha256:4d56957b220111a2e1d11d1aad3e03687f510cd23468e9492dc94728fb1c70c2" -> "sha256:f7edc0fbf1997b3876ca012ab32e4bc256ef39405286ee8aa8a879d333b8cc4c" [label=""];
  "sha256:f7edc0fbf1997b3876ca012ab32e4bc256ef39405286ee8aa8a879d333b8cc4c" -> "sha256:1954f7a4f5687961110f3df5971cafb905046cf972dd178c81c479d79564144a" [label=""];
  "sha256:1954f7a4f5687961110f3df5971cafb905046cf972dd178c81c479d79564144a" -> "sha256:eac61b9ec039f5d346ce9ede3e094c45ef830341c0ea13e321cd00bf239311d1" [label=""];
  "sha256:eac61b9ec039f5d346ce9ede3e094c45ef830341c0ea13e321cd00bf239311d1" -> "sha256:723ed278cdc769f377fb908cd7c2eb2c5602eb2c7425d96cb894a8ebce55e668" [label=""];
  "sha256:723ed278cdc769f377fb908cd7c2eb2c5602eb2c7425d96cb894a8ebce55e668" -> "sha256:2b3b0a068fa756d86987378aaff7f54f36ac5f240f08f5c5ce53a37329579621" [label=""];
}

