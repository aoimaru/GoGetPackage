[app/sources/249058031.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:de9e9cf26dc900097670ba97ae62de7ef14741cec57edeaa20afb0a002908ce9" [label="local://context" shape="ellipse"];
  "sha256:cb2c2bf42a21a5d69823a262f7ddac821403b9690666fae2beb81612f32527a5" [label="copy{src=/common-assets, dest=/opt/harbor/common-assets}" shape="note"];
  "sha256:31acf501c9ff56c5df649b83e749807039c10180fafb0d58098aa3e9656a4ac4" [label="copy{src=/assets, dest=/opt/harbor/assets}" shape="note"];
  "sha256:84ca3712b3d33c4d58283063df3a65e26d9b35932a3d5b5533b7007409dbfe6c" [label="/bin/sh -c set -e &&     set -x &&     cp -rf /opt/harbor/common-assets/* / &&     rm -rf /opt/harbor/common-assets &&     cp -rf /opt/harbor/assets/* / &&     rm -rf /opt/harbor/assets &&     dnf update -y &&     dnf upgrade -y &&     dnf install -y         findutils         iproute         bind-utils &&     dnf clean all &&     container-base-systemd-reset.sh &&     mkdir -p /var/run/harbor/secrets" shape="box"];
  "sha256:85b8174a66d97c41948c8dcea24f22d2a3bd9019ef453f3fe1a507096b23770a" [label="sha256:85b8174a66d97c41948c8dcea24f22d2a3bd9019ef453f3fe1a507096b23770a" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:cb2c2bf42a21a5d69823a262f7ddac821403b9690666fae2beb81612f32527a5" [label=""];
  "sha256:de9e9cf26dc900097670ba97ae62de7ef14741cec57edeaa20afb0a002908ce9" -> "sha256:cb2c2bf42a21a5d69823a262f7ddac821403b9690666fae2beb81612f32527a5" [label=""];
  "sha256:cb2c2bf42a21a5d69823a262f7ddac821403b9690666fae2beb81612f32527a5" -> "sha256:31acf501c9ff56c5df649b83e749807039c10180fafb0d58098aa3e9656a4ac4" [label=""];
  "sha256:de9e9cf26dc900097670ba97ae62de7ef14741cec57edeaa20afb0a002908ce9" -> "sha256:31acf501c9ff56c5df649b83e749807039c10180fafb0d58098aa3e9656a4ac4" [label=""];
  "sha256:31acf501c9ff56c5df649b83e749807039c10180fafb0d58098aa3e9656a4ac4" -> "sha256:84ca3712b3d33c4d58283063df3a65e26d9b35932a3d5b5533b7007409dbfe6c" [label=""];
  "sha256:84ca3712b3d33c4d58283063df3a65e26d9b35932a3d5b5533b7007409dbfe6c" -> "sha256:85b8174a66d97c41948c8dcea24f22d2a3bd9019ef453f3fe1a507096b23770a" [label=""];
}

