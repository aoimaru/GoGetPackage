[app/sources/173075537.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:13e5846b2d5d986a097dcd81e91bb1c10f0b45bf1e1ebd2cd9ddceeee27abd19" [label="/bin/bash -exo pipefail -c apt-get update  && apt-get install -y curl bzip2 ca-certificates --no-install-recommends  && curl -sSfLo teamspeak3-server_linux-amd64.tar.bz2       \"https://files.teamspeak-services.com/releases/server/${TEAMSPEAK_VERSION}/teamspeak3-server_linux_amd64-${TEAMSPEAK_VERSION}.tar.bz2\"  && echo \"${TEAMSPEAK_SHA256} *teamspeak3-server_linux-amd64.tar.bz2\" | sha256sum -c -  && tar -C /opt -xjf teamspeak3-server_linux-amd64.tar.bz2  && rm teamspeak3-server_linux-amd64.tar.bz2  && apt-get purge -y curl bzip2 && apt-get autoremove -y  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:73036009dc20ad171e1c5be6de0e81b617ebeb183675274a368830e81cc1246b" [label="local://context" shape="ellipse"];
  "sha256:73508053576c15358a45c36c364b57dfafec058b329ba72db2a8eebb770d006d" [label="copy{src=/docker-ts3.sh, dest=/opt/docker-ts3.sh}" shape="note"];
  "sha256:0c1e2f245374d1c23c626b742389bf17c40c5f3921bb8ccec89f41ac87779e4d" [label="sha256:0c1e2f245374d1c23c626b742389bf17c40c5f3921bb8ccec89f41ac87779e4d" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:13e5846b2d5d986a097dcd81e91bb1c10f0b45bf1e1ebd2cd9ddceeee27abd19" [label=""];
  "sha256:13e5846b2d5d986a097dcd81e91bb1c10f0b45bf1e1ebd2cd9ddceeee27abd19" -> "sha256:73508053576c15358a45c36c364b57dfafec058b329ba72db2a8eebb770d006d" [label=""];
  "sha256:73036009dc20ad171e1c5be6de0e81b617ebeb183675274a368830e81cc1246b" -> "sha256:73508053576c15358a45c36c364b57dfafec058b329ba72db2a8eebb770d006d" [label=""];
  "sha256:73508053576c15358a45c36c364b57dfafec058b329ba72db2a8eebb770d006d" -> "sha256:0c1e2f245374d1c23c626b742389bf17c40c5f3921bb8ccec89f41ac87779e4d" [label=""];
}

