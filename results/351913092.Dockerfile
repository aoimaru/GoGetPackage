[app/sources/351913092.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:34ee407bfd7e2805c744292faad0d9abb988a7a9f83f963b15246a625b0af2e4" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get -yq upgrade" shape="box"];
  "sha256:eef9f9abf0f2dc6c79ba44ff5162dca58d030ac2d29ea4df995a86267afbf0c5" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu trusty main universe\" > /etc/apt/sources.list &&     echo \"deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main\" > /etc/apt/sources.list.d/webupd8team-java.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886 &&             echo \"===> add webupd8 repository...\"  &&     echo \"deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main\" | tee /etc/apt/sources.list.d/webupd8team-java.list  &&     echo \"deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main\" | tee -a /etc/apt/sources.list.d/webupd8team-java.list  &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886  &&     apt-get update  &&             echo \"===> install Java\"  &&     echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections  &&     echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections  &&     DEBIAN_FRONTEND=noninteractive  apt-get install -y --force-yes oracle-java7-installer oracle-java7-set-default  &&     rm -rf /var/cache/oracle-jdk7-installer &&     mkdir /data" shape="box"];
  "sha256:23861b84f60974fbc2b70b3c82faf907676102656d67ec88654692f484a9c953" [label="local://context" shape="ellipse"];
  "sha256:f1d11ef86e68b3cb2ea15fad2342bec2bfe00c59c29333c9c511421b794fc8fd" [label="copy{src=/target/splash-analysis-0.0.1-SNAPSHOT.jar, dest=/opt/analyze.jar}" shape="note"];
  "sha256:24b1cf3d917518bf9e109da8e26a4013879ed447667c2d3eb36c33a036c9ce6c" [label="copy{src=/complete-201510-precomputed.csv.gz, dest=/data/input.csv.gz}" shape="note"];
  "sha256:6512d3b80ee4a830a05120b6d9f4087262702607242f42adcb67a22a13cf108d" [label="copy{src=/src/run.sh, dest=/opt/run.sh}" shape="note"];
  "sha256:9be2e5464d455198cbdbcaedb7708c1764903aec500e1346db1bd28ab5df333a" [label="sha256:9be2e5464d455198cbdbcaedb7708c1764903aec500e1346db1bd28ab5df333a" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:34ee407bfd7e2805c744292faad0d9abb988a7a9f83f963b15246a625b0af2e4" [label=""];
  "sha256:34ee407bfd7e2805c744292faad0d9abb988a7a9f83f963b15246a625b0af2e4" -> "sha256:eef9f9abf0f2dc6c79ba44ff5162dca58d030ac2d29ea4df995a86267afbf0c5" [label=""];
  "sha256:eef9f9abf0f2dc6c79ba44ff5162dca58d030ac2d29ea4df995a86267afbf0c5" -> "sha256:f1d11ef86e68b3cb2ea15fad2342bec2bfe00c59c29333c9c511421b794fc8fd" [label=""];
  "sha256:23861b84f60974fbc2b70b3c82faf907676102656d67ec88654692f484a9c953" -> "sha256:f1d11ef86e68b3cb2ea15fad2342bec2bfe00c59c29333c9c511421b794fc8fd" [label=""];
  "sha256:f1d11ef86e68b3cb2ea15fad2342bec2bfe00c59c29333c9c511421b794fc8fd" -> "sha256:24b1cf3d917518bf9e109da8e26a4013879ed447667c2d3eb36c33a036c9ce6c" [label=""];
  "sha256:23861b84f60974fbc2b70b3c82faf907676102656d67ec88654692f484a9c953" -> "sha256:24b1cf3d917518bf9e109da8e26a4013879ed447667c2d3eb36c33a036c9ce6c" [label=""];
  "sha256:24b1cf3d917518bf9e109da8e26a4013879ed447667c2d3eb36c33a036c9ce6c" -> "sha256:6512d3b80ee4a830a05120b6d9f4087262702607242f42adcb67a22a13cf108d" [label=""];
  "sha256:23861b84f60974fbc2b70b3c82faf907676102656d67ec88654692f484a9c953" -> "sha256:6512d3b80ee4a830a05120b6d9f4087262702607242f42adcb67a22a13cf108d" [label=""];
  "sha256:6512d3b80ee4a830a05120b6d9f4087262702607242f42adcb67a22a13cf108d" -> "sha256:9be2e5464d455198cbdbcaedb7708c1764903aec500e1346db1bd28ab5df333a" [label=""];
}

