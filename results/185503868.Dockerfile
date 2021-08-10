[app/sources/185503868.Dockerfile]
digraph {
  "sha256:0efb3b3146ca86eba5cfe293c1dd213bf3a0f0b184a2cd3eb0205204168c7313" [label="docker-image://docker.io/library/ubuntu:xenial-20180525" shape="ellipse"];
  "sha256:f687fd9ecf39a0daf639b272f14894c157482657c0b2f5c853ac6673d8e5a929" [label="/bin/sh -c echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01norecommends  && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends  && apt-get update  && DEBIAN_FRONTEND=noninteractive apt-get install -y vim.tiny wget sudo net-tools ca-certificates unzip apt-transport-https  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:98046e9d3d4a2f46ed2b1653143fde425e2e7e2bd96009ad37e2e2cbeafdea3e" [label="sha256:98046e9d3d4a2f46ed2b1653143fde425e2e7e2bd96009ad37e2e2cbeafdea3e" shape="plaintext"];
  "sha256:0efb3b3146ca86eba5cfe293c1dd213bf3a0f0b184a2cd3eb0205204168c7313" -> "sha256:f687fd9ecf39a0daf639b272f14894c157482657c0b2f5c853ac6673d8e5a929" [label=""];
  "sha256:f687fd9ecf39a0daf639b272f14894c157482657c0b2f5c853ac6673d8e5a929" -> "sha256:98046e9d3d4a2f46ed2b1653143fde425e2e7e2bd96009ad37e2e2cbeafdea3e" [label=""];
}

