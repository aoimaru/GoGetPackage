[app/sources/181943328.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:a7f16a5c3790cef4830eb656ad3ab504df687b444f0242e049b0fcfa412369ae" [label="/bin/sh -c apt-get update &&   apt-get upgrade -y &&   apt-get clean -y &&   apt-get autoclean -y &&   apt-get autoremove -y &&   rm -rf /usr/share/locale/* &&   rm -rf /var/cache/debconf/*-old &&   rm -rf /var/lib/apt/lists/* &&   rm -rf /usr/share/doc/*" shape="box"];
  "sha256:286b97ade82989f5699df06e3e74283593c613ca494f3a1103e3ebca1baeb170" [label="sha256:286b97ade82989f5699df06e3e74283593c613ca494f3a1103e3ebca1baeb170" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:a7f16a5c3790cef4830eb656ad3ab504df687b444f0242e049b0fcfa412369ae" [label=""];
  "sha256:a7f16a5c3790cef4830eb656ad3ab504df687b444f0242e049b0fcfa412369ae" -> "sha256:286b97ade82989f5699df06e3e74283593c613ca494f3a1103e3ebca1baeb170" [label=""];
}

