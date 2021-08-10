[app/sources/476176402.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:770d6fed8be84ac986d660c5c6e05aa81d224c8131b19153346d6e08daddeeb0" [label="/bin/sh -c apt-get -qq update &&     apt-get -qqy install locales &&     locale-gen en_US.UTF-8 &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:bc03ab525ab1587e7d2117fc0003cade3bbea646c79d670b8eb59fdd01e25f78" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9 &&     echo \"deb http://repos.azulsystems.com/ubuntu stable main\" >> /etc/apt/sources.list.d/zulu.list &&     apt-get -qq update &&     apt-get -qqy install zulu-8=8.30.0.1 &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2d3ed5f419cddf550926ec9a96a3b280a12ff7af1278e9212446eb6ecce60f15" [label="sha256:2d3ed5f419cddf550926ec9a96a3b280a12ff7af1278e9212446eb6ecce60f15" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:770d6fed8be84ac986d660c5c6e05aa81d224c8131b19153346d6e08daddeeb0" [label=""];
  "sha256:770d6fed8be84ac986d660c5c6e05aa81d224c8131b19153346d6e08daddeeb0" -> "sha256:bc03ab525ab1587e7d2117fc0003cade3bbea646c79d670b8eb59fdd01e25f78" [label=""];
  "sha256:bc03ab525ab1587e7d2117fc0003cade3bbea646c79d670b8eb59fdd01e25f78" -> "sha256:2d3ed5f419cddf550926ec9a96a3b280a12ff7af1278e9212446eb6ecce60f15" [label=""];
}

