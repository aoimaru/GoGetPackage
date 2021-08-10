[app/sources/483213212.Dockerfile]
digraph {
  "sha256:2f412dbc66df94fa0248dd03384d307dcfa0c931f0d6f980f0315d2ce764830a" [label="docker-image://docker.io/komljen/ubuntu:latest" shape="ellipse"];
  "sha256:1c54c703a97e194ccad6f6503b8b40204bac3b1c1ac7e51002d3414d2f37e8a3" [label="/bin/sh -c add-apt-repository -y ppa:chris-lea/redis-server &&   apt-get update &&   apt-get -y install           redis-server &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5905b4303e9a6340395b70b9cbee26a4c504dac4df414ac082d76e4c3d221601" [label="/bin/sh -c rm /usr/sbin/policy-rc.d" shape="box"];
  "sha256:e3dec07814e248e16709977aa7af07e08c494e0b73ac051faaf0d6cbd0b42718" [label="sha256:e3dec07814e248e16709977aa7af07e08c494e0b73ac051faaf0d6cbd0b42718" shape="plaintext"];
  "sha256:2f412dbc66df94fa0248dd03384d307dcfa0c931f0d6f980f0315d2ce764830a" -> "sha256:1c54c703a97e194ccad6f6503b8b40204bac3b1c1ac7e51002d3414d2f37e8a3" [label=""];
  "sha256:1c54c703a97e194ccad6f6503b8b40204bac3b1c1ac7e51002d3414d2f37e8a3" -> "sha256:5905b4303e9a6340395b70b9cbee26a4c504dac4df414ac082d76e4c3d221601" [label=""];
  "sha256:5905b4303e9a6340395b70b9cbee26a4c504dac4df414ac082d76e4c3d221601" -> "sha256:e3dec07814e248e16709977aa7af07e08c494e0b73ac051faaf0d6cbd0b42718" [label=""];
}

