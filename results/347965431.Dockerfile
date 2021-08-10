[app/sources/347965431.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:864991cfcf8a2892dae77eb83657ea4e755cb4e33e1f7811027779feb51b1624" [label="/bin/sh -c apk --purge --no-cache add kmod bash" shape="box"];
  "sha256:3430695d64138b4e420ec32e4304f833bb540c7124594f9a484246e318c092d3" [label="local://context" shape="ellipse"];
  "sha256:641447fa3d8af6f87078c0ac0c8e45bb0692cf55b31d55cc6b3b5649afb3d063" [label="copy{src=/extra.sh, dest=/usr/bin}" shape="note"];
  "sha256:152ef16dbf58bb72f9eb055ab96d84fea2e431dbb7acea378542b2ec20e8c8aa" [label="copy{src=/extras.tar.gz, dest=/}" shape="note"];
  "sha256:02235c820c469de50e17f876df13e68c48d73f6991a26466836e81914d09511c" [label="sha256:02235c820c469de50e17f876df13e68c48d73f6991a26466836e81914d09511c" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:864991cfcf8a2892dae77eb83657ea4e755cb4e33e1f7811027779feb51b1624" [label=""];
  "sha256:864991cfcf8a2892dae77eb83657ea4e755cb4e33e1f7811027779feb51b1624" -> "sha256:641447fa3d8af6f87078c0ac0c8e45bb0692cf55b31d55cc6b3b5649afb3d063" [label=""];
  "sha256:3430695d64138b4e420ec32e4304f833bb540c7124594f9a484246e318c092d3" -> "sha256:641447fa3d8af6f87078c0ac0c8e45bb0692cf55b31d55cc6b3b5649afb3d063" [label=""];
  "sha256:641447fa3d8af6f87078c0ac0c8e45bb0692cf55b31d55cc6b3b5649afb3d063" -> "sha256:152ef16dbf58bb72f9eb055ab96d84fea2e431dbb7acea378542b2ec20e8c8aa" [label=""];
  "sha256:3430695d64138b4e420ec32e4304f833bb540c7124594f9a484246e318c092d3" -> "sha256:152ef16dbf58bb72f9eb055ab96d84fea2e431dbb7acea378542b2ec20e8c8aa" [label=""];
  "sha256:152ef16dbf58bb72f9eb055ab96d84fea2e431dbb7acea378542b2ec20e8c8aa" -> "sha256:02235c820c469de50e17f876df13e68c48d73f6991a26466836e81914d09511c" [label=""];
}

