[app/sources/245010031.Dockerfile]
digraph {
  "sha256:d19758662293df0f2eee93ddec580b57e3114637e1b274f4b0e906753d6c7a90" [label="docker-image://docker.io/library/fedora:26" shape="ellipse"];
  "sha256:eafcf00009ce38d2d56c5e764ed8a33ee41601883c42331f201a3d7aa045d7aa" [label="/bin/sh -c echo \"echo \\\"Welcome to Leapp development image. The development environment is prepared for you in ${LEAPP_HOME}\\\"\" >> $HOME/.bashrc &&     echo \"echo -e \\\"\\n\\$(ls -l ${LEAPP_HOME})\\n\\\"\" >> $HOME/.bashrc &&     echo \"export SHELL=/bin/bash\" >> $HOME/.bashrc" shape="box"];
  "sha256:e1a88d0912c8460f69fc687b6ffa0535b56246e54373a6e15e5c4dc26bcbf88c" [label="/bin/sh -c dnf upgrade -y &&     dnf -y install     ansible     'dnf-command(copr)'     docker     git     passwd     && dnf -y clean all" shape="box"];
  "sha256:9c2c7347330f94381614959f0a11758ccbedcf41b59eb0a5dee5653309ec7809" [label="/bin/sh -c echo \"leapp\" | passwd root --stdin" shape="box"];
  "sha256:ee7eb496cf8205de7f72efc4782a31d131d8498fe4ad445aca7a87e240f97196" [label="/bin/sh -c systemctl enable docker" shape="box"];
  "sha256:c470e698a4a0c8163fc9f756246ea1bed4c1529069635f34d271db377ea4cca5" [label="sha256:c470e698a4a0c8163fc9f756246ea1bed4c1529069635f34d271db377ea4cca5" shape="plaintext"];
  "sha256:d19758662293df0f2eee93ddec580b57e3114637e1b274f4b0e906753d6c7a90" -> "sha256:eafcf00009ce38d2d56c5e764ed8a33ee41601883c42331f201a3d7aa045d7aa" [label=""];
  "sha256:eafcf00009ce38d2d56c5e764ed8a33ee41601883c42331f201a3d7aa045d7aa" -> "sha256:e1a88d0912c8460f69fc687b6ffa0535b56246e54373a6e15e5c4dc26bcbf88c" [label=""];
  "sha256:e1a88d0912c8460f69fc687b6ffa0535b56246e54373a6e15e5c4dc26bcbf88c" -> "sha256:9c2c7347330f94381614959f0a11758ccbedcf41b59eb0a5dee5653309ec7809" [label=""];
  "sha256:9c2c7347330f94381614959f0a11758ccbedcf41b59eb0a5dee5653309ec7809" -> "sha256:ee7eb496cf8205de7f72efc4782a31d131d8498fe4ad445aca7a87e240f97196" [label=""];
  "sha256:ee7eb496cf8205de7f72efc4782a31d131d8498fe4ad445aca7a87e240f97196" -> "sha256:c470e698a4a0c8163fc9f756246ea1bed4c1529069635f34d271db377ea4cca5" [label=""];
}

