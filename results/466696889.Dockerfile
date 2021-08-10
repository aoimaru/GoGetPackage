[app/sources/466696889.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:237b04f271b7b457a8da05e663b23c6089af57ad0f11f4a8df3f01f3ed02ae55" [label="/bin/sh -c apk add --no-cache -u ca-certificates" shape="box"];
  "sha256:ba1c586851d9e69b24543f7dc75de4625000f3a5e2ac486575e96963ff83e714" [label="https://github.com/Azure/aks-engine/releases/download/v0.32.0/aks-engine-v0.32.0-linux-amd64.tar.gz" shape="ellipse"];
  "sha256:a2d65c03827b6a0c62da1bc9365d0d9c6fd70e779183257782ed5ebd292c7593" [label="copy{src=/aks-engine-v0.32.0-linux-amd64.tar.gz, dest=/tmp/aks-engine.tgz}" shape="note"];
  "sha256:6084b989206a01af9877016bd28f5e35e0bd1d87e39efc39256e73dbaadcab74" [label="/bin/sh -c mkdir -p /opt/ &&     tar xvzf /tmp/aks-engine.tgz -C /opt/ &&     rm /tmp/aks-engine.tgz &&     chown -R root:root /opt/aks-engine-v${AKSENGINE_VERSION}-linux-amd64 &&     ln -s /opt/aks-engine-v${AKSENGINE_VERSION}-linux-amd64/aks-engine /usr/local/bin/aks-engine &&     chmod +x /usr/local/bin/aks-engine" shape="box"];
  "sha256:f76fd171e3afd7354a05ebb89cf6c19b079a3811a9860c7d57004e990f74f5f5" [label="sha256:f76fd171e3afd7354a05ebb89cf6c19b079a3811a9860c7d57004e990f74f5f5" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:237b04f271b7b457a8da05e663b23c6089af57ad0f11f4a8df3f01f3ed02ae55" [label=""];
  "sha256:237b04f271b7b457a8da05e663b23c6089af57ad0f11f4a8df3f01f3ed02ae55" -> "sha256:a2d65c03827b6a0c62da1bc9365d0d9c6fd70e779183257782ed5ebd292c7593" [label=""];
  "sha256:ba1c586851d9e69b24543f7dc75de4625000f3a5e2ac486575e96963ff83e714" -> "sha256:a2d65c03827b6a0c62da1bc9365d0d9c6fd70e779183257782ed5ebd292c7593" [label=""];
  "sha256:a2d65c03827b6a0c62da1bc9365d0d9c6fd70e779183257782ed5ebd292c7593" -> "sha256:6084b989206a01af9877016bd28f5e35e0bd1d87e39efc39256e73dbaadcab74" [label=""];
  "sha256:6084b989206a01af9877016bd28f5e35e0bd1d87e39efc39256e73dbaadcab74" -> "sha256:f76fd171e3afd7354a05ebb89cf6c19b079a3811a9860c7d57004e990f74f5f5" [label=""];
}

