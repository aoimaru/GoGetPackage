[app/sources/319392397.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:016a93c5f824738fa7f76108b7bdbc6b125522d32b8dec01386e18411fdc4587" [label="/bin/sh -c apt-get -y update &&     apt-get -y install clang git build-essential     wget curl autoconf libtool cmake" shape="box"];
  "sha256:bd6aba32b1c1ed678c8d521541087322aa3564a3c4eab8df530aac6e865b9aa2" [label="local://context" shape="ellipse"];
  "sha256:3629c9186bfc7267823cc907f9ced27781227067d2f47c374cb703b23efb4449" [label="copy{src=/, dest=/gt/gtirb/}" shape="note"];
  "sha256:fbf9ece03afd9822149a59f2c940dc7d1e2c22325a711c6b8ca82b86ca3aae26" [label="/bin/sh -c rm -rf /gt/gtirb/build /gt/gtirb/CMakeCache.txt /gt/gtirb/CMakeFiles /gt/gtirb/CMakeScripts" shape="box"];
  "sha256:1967fd515a1f486bc7715f44554218cb0cdae5eb2f5b97a9e355d65cbc7eaeeb" [label="/bin/sh -c mkdir -p /gt/gtirb/build" shape="box"];
  "sha256:3e537a1fbc4572c178ba20de7446701201828aa13c5c77ccea0c7a381c0a3075" [label="mkdir{path=/gt/gtirb/build}" shape="note"];
  "sha256:9ef904fee0585fd20c772866d49308520495352cd70b85242e2fda9e8ae9cc6d" [label="/bin/sh -c cmake ../ -DCMAKE_CXX_COMPILER=${CXX_COMPILER}" shape="box"];
  "sha256:c67c42b9ea3b57ed8d6537045f8a218182ffd39d91332d7c2874ebdccde5f852" [label="/bin/sh -c make -j" shape="box"];
  "sha256:e5b2d82f3cae156877a7858d3e289d2611e32c54cfa1156fa490cd74328ed75c" [label="mkdir{path=/gt/gtirb}" shape="note"];
  "sha256:395208eb619a8d6716837469cb555305774ad10494958ecabf4a1ea110568157" [label="sha256:395208eb619a8d6716837469cb555305774ad10494958ecabf4a1ea110568157" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:016a93c5f824738fa7f76108b7bdbc6b125522d32b8dec01386e18411fdc4587" [label=""];
  "sha256:016a93c5f824738fa7f76108b7bdbc6b125522d32b8dec01386e18411fdc4587" -> "sha256:3629c9186bfc7267823cc907f9ced27781227067d2f47c374cb703b23efb4449" [label=""];
  "sha256:bd6aba32b1c1ed678c8d521541087322aa3564a3c4eab8df530aac6e865b9aa2" -> "sha256:3629c9186bfc7267823cc907f9ced27781227067d2f47c374cb703b23efb4449" [label=""];
  "sha256:3629c9186bfc7267823cc907f9ced27781227067d2f47c374cb703b23efb4449" -> "sha256:fbf9ece03afd9822149a59f2c940dc7d1e2c22325a711c6b8ca82b86ca3aae26" [label=""];
  "sha256:fbf9ece03afd9822149a59f2c940dc7d1e2c22325a711c6b8ca82b86ca3aae26" -> "sha256:1967fd515a1f486bc7715f44554218cb0cdae5eb2f5b97a9e355d65cbc7eaeeb" [label=""];
  "sha256:1967fd515a1f486bc7715f44554218cb0cdae5eb2f5b97a9e355d65cbc7eaeeb" -> "sha256:3e537a1fbc4572c178ba20de7446701201828aa13c5c77ccea0c7a381c0a3075" [label=""];
  "sha256:3e537a1fbc4572c178ba20de7446701201828aa13c5c77ccea0c7a381c0a3075" -> "sha256:9ef904fee0585fd20c772866d49308520495352cd70b85242e2fda9e8ae9cc6d" [label=""];
  "sha256:9ef904fee0585fd20c772866d49308520495352cd70b85242e2fda9e8ae9cc6d" -> "sha256:c67c42b9ea3b57ed8d6537045f8a218182ffd39d91332d7c2874ebdccde5f852" [label=""];
  "sha256:c67c42b9ea3b57ed8d6537045f8a218182ffd39d91332d7c2874ebdccde5f852" -> "sha256:e5b2d82f3cae156877a7858d3e289d2611e32c54cfa1156fa490cd74328ed75c" [label=""];
  "sha256:e5b2d82f3cae156877a7858d3e289d2611e32c54cfa1156fa490cd74328ed75c" -> "sha256:395208eb619a8d6716837469cb555305774ad10494958ecabf4a1ea110568157" [label=""];
}

