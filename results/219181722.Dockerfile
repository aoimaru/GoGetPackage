[app/sources/219181722.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:9eaacbcd6540746539222473c3fea2634f0a01d09def891296f25c04d71eab17" [label="/bin/sh -c apt-get update && apt-get install -y   build-essential   git   libopenblas-dev   python-dev   python-pip   python-nose   python-numpy   python-scipy   wget" shape="box"];
  "sha256:e5b652269184135944fe4c838ee16a090dc87243ae87034f889ce9ba9019ac0d" [label="/bin/sh -c pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git" shape="box"];
  "sha256:dd61c3982ef683ba6569ef736896322cb92a0d9b2b25ea6b5eb031484a917d2a" [label="/bin/sh -c pip install ipdb" shape="box"];
  "sha256:e86ea7bd11bbca9d7eb12d6afb6b7c54e8442fe3507a5678a95edca0740e0ac9" [label="mkdir{path=/home}" shape="note"];
  "sha256:e0c3c7acf9eb3ed46ba829de9b553121231cf54840587fee3e37b5a491df0dc1" [label="/bin/sh -c git clone http://github.com/mbartoli/deep-simplification" shape="box"];
  "sha256:3d1dc66700bfc2cc5ce8059f553e676356ff6550148e74469e42e54916b6d36e" [label="mkdir{path=/home/deep-simplification/simplify}" shape="note"];
  "sha256:59c9a11daf7c9eae12059d82e280b113a5b32bbfc02c296ef45392fba267675a" [label="sha256:59c9a11daf7c9eae12059d82e280b113a5b32bbfc02c296ef45392fba267675a" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:9eaacbcd6540746539222473c3fea2634f0a01d09def891296f25c04d71eab17" [label=""];
  "sha256:9eaacbcd6540746539222473c3fea2634f0a01d09def891296f25c04d71eab17" -> "sha256:e5b652269184135944fe4c838ee16a090dc87243ae87034f889ce9ba9019ac0d" [label=""];
  "sha256:e5b652269184135944fe4c838ee16a090dc87243ae87034f889ce9ba9019ac0d" -> "sha256:dd61c3982ef683ba6569ef736896322cb92a0d9b2b25ea6b5eb031484a917d2a" [label=""];
  "sha256:dd61c3982ef683ba6569ef736896322cb92a0d9b2b25ea6b5eb031484a917d2a" -> "sha256:e86ea7bd11bbca9d7eb12d6afb6b7c54e8442fe3507a5678a95edca0740e0ac9" [label=""];
  "sha256:e86ea7bd11bbca9d7eb12d6afb6b7c54e8442fe3507a5678a95edca0740e0ac9" -> "sha256:e0c3c7acf9eb3ed46ba829de9b553121231cf54840587fee3e37b5a491df0dc1" [label=""];
  "sha256:e0c3c7acf9eb3ed46ba829de9b553121231cf54840587fee3e37b5a491df0dc1" -> "sha256:3d1dc66700bfc2cc5ce8059f553e676356ff6550148e74469e42e54916b6d36e" [label=""];
  "sha256:3d1dc66700bfc2cc5ce8059f553e676356ff6550148e74469e42e54916b6d36e" -> "sha256:59c9a11daf7c9eae12059d82e280b113a5b32bbfc02c296ef45392fba267675a" [label=""];
}

