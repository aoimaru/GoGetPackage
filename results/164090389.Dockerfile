[app/sources/164090389.Dockerfile]
digraph {
  "sha256:eef59b9de07f227ed1fdd7800f81cd8acce8bd96c912a0f101b2e1855b04744f" [label="docker-image://docker.io/phusion/baseimage:0.9.18" shape="ellipse"];
  "sha256:09888f071a991fe502169e43385295828cd635706e7af0ec1d2d66bddcb3317d" [label="/bin/sh -c echo /root > /etc/container_environment/HOME" shape="box"];
  "sha256:a2d9c23304211893edf62c4dc6ad6e3bf61813859f2e0c75bcda04e0b0aff682" [label="/bin/sh -c /etc/my_init.d/00_regen_ssh_host_keys.sh" shape="box"];
  "sha256:da6f0f90cc58e18510d8258a15421abdfc16678ae21b31577a15c24867debfbe" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:35c6c88514f1b29975078277704d097c6576cd50e42d745f3d2e9c48737a90d9" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:114924e90f5576ac7b14e7e366b3ff7d9c50165a21731ffa56a9e56ce5a8874e" [label="/bin/sh -c echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections" shape="box"];
  "sha256:28b8c36ec0c53e9ae1f71c95e6f46f74c5a6ec88e962d43dc0b7bcd891f25f7c" [label="/bin/sh -c echo \"deb http://packages.erlang-solutions.com/ubuntu trusty contrib\" >> /etc/apt/sources.list &&     apt-key adv --fetch-keys http://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc &&     apt-get -qq update && apt-get install -y     esl-erlang=1:20.0     git     unzip     build-essential     wget &&     apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:1280767eddabcec2ffa3a133fc1aeafd698bb67a89bddb743dabc7e8d133cdf4" [label="mkdir{path=/elixir}" shape="note"];
  "sha256:68e26aa226c37344644dcf937ba7e713c69dfd2e31ed9cb7e8e530e069bd3d25" [label="/bin/sh -c wget -q https://github.com/elixir-lang/elixir/releases/download/v1.5.1/Precompiled.zip &&     unzip Precompiled.zip &&     rm -f Precompiled.zip &&     ln -s /elixir/bin/elixirc /usr/local/bin/elixirc &&     ln -s /elixir/bin/elixir /usr/local/bin/elixir &&     ln -s /elixir/bin/mix /usr/local/bin/mix &&     ln -s /elixir/bin/iex /usr/local/bin/iex" shape="box"];
  "sha256:1a2a1cfea8833243018c3387bde91281a95daf0d03f0b4fa2b5a4ec0941dd26b" [label="/bin/sh -c /usr/local/bin/mix local.hex --force &&     /usr/local/bin/mix local.rebar --force" shape="box"];
  "sha256:d8dbb1cd2f7e3bd20235e2fb7956534c924c83aeb3b90f4059981f1884677b60" [label="sha256:d8dbb1cd2f7e3bd20235e2fb7956534c924c83aeb3b90f4059981f1884677b60" shape="plaintext"];
  "sha256:eef59b9de07f227ed1fdd7800f81cd8acce8bd96c912a0f101b2e1855b04744f" -> "sha256:09888f071a991fe502169e43385295828cd635706e7af0ec1d2d66bddcb3317d" [label=""];
  "sha256:09888f071a991fe502169e43385295828cd635706e7af0ec1d2d66bddcb3317d" -> "sha256:a2d9c23304211893edf62c4dc6ad6e3bf61813859f2e0c75bcda04e0b0aff682" [label=""];
  "sha256:a2d9c23304211893edf62c4dc6ad6e3bf61813859f2e0c75bcda04e0b0aff682" -> "sha256:da6f0f90cc58e18510d8258a15421abdfc16678ae21b31577a15c24867debfbe" [label=""];
  "sha256:da6f0f90cc58e18510d8258a15421abdfc16678ae21b31577a15c24867debfbe" -> "sha256:35c6c88514f1b29975078277704d097c6576cd50e42d745f3d2e9c48737a90d9" [label=""];
  "sha256:35c6c88514f1b29975078277704d097c6576cd50e42d745f3d2e9c48737a90d9" -> "sha256:114924e90f5576ac7b14e7e366b3ff7d9c50165a21731ffa56a9e56ce5a8874e" [label=""];
  "sha256:114924e90f5576ac7b14e7e366b3ff7d9c50165a21731ffa56a9e56ce5a8874e" -> "sha256:28b8c36ec0c53e9ae1f71c95e6f46f74c5a6ec88e962d43dc0b7bcd891f25f7c" [label=""];
  "sha256:28b8c36ec0c53e9ae1f71c95e6f46f74c5a6ec88e962d43dc0b7bcd891f25f7c" -> "sha256:1280767eddabcec2ffa3a133fc1aeafd698bb67a89bddb743dabc7e8d133cdf4" [label=""];
  "sha256:1280767eddabcec2ffa3a133fc1aeafd698bb67a89bddb743dabc7e8d133cdf4" -> "sha256:68e26aa226c37344644dcf937ba7e713c69dfd2e31ed9cb7e8e530e069bd3d25" [label=""];
  "sha256:68e26aa226c37344644dcf937ba7e713c69dfd2e31ed9cb7e8e530e069bd3d25" -> "sha256:1a2a1cfea8833243018c3387bde91281a95daf0d03f0b4fa2b5a4ec0941dd26b" [label=""];
  "sha256:1a2a1cfea8833243018c3387bde91281a95daf0d03f0b4fa2b5a4ec0941dd26b" -> "sha256:d8dbb1cd2f7e3bd20235e2fb7956534c924c83aeb3b90f4059981f1884677b60" [label=""];
}

