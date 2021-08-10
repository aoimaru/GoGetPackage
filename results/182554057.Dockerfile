[app/sources/182554057.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:47a47f3bfa6cebe4c7378976a6d094195efd36a67c86b624d21feb52117b4906" [label="/bin/sh -c apt-get update &&     apt-get install -y software-properties-common wget curl &&     add-apt-repository --yes ppa:beineri/opt-qt-5.12.3-xenial &&     wget http://ftp.de.debian.org/debian/pool/main/p/patchelf/patchelf_0.8-2_amd64.deb &&     dpkg -i patchelf_0.8-2_amd64.deb &&     rm patchelf_0.8-2_amd64.deb &&     apt-get update &&     apt-get install -y         qt512base         qt512declarative         qt512tools         qt512svg         qt512graphicaleffects         qt512imageformats         qt512translations         qt512quickcontrols         qt512quickcontrols2         qt512x11extras         qt512websockets         qt512webchannel         qt512webengine         qt512remoteobjects         qt512wayland         build-essential         libgl1-mesa-dev         libfuse2         desktop-file-utils         git         cmake         libssl-dev         ninja-build         &&     apt-get clean" shape="box"];
  "sha256:26e00ac4522728a8a26274083726ef9d888c6f45185fbfcceb5f86454490b56d" [label="sha256:26e00ac4522728a8a26274083726ef9d888c6f45185fbfcceb5f86454490b56d" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:47a47f3bfa6cebe4c7378976a6d094195efd36a67c86b624d21feb52117b4906" [label=""];
  "sha256:47a47f3bfa6cebe4c7378976a6d094195efd36a67c86b624d21feb52117b4906" -> "sha256:26e00ac4522728a8a26274083726ef9d888c6f45185fbfcceb5f86454490b56d" [label=""];
}

