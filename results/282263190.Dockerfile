[app/sources/282263190.Dockerfile]
digraph {
  "sha256:91638ede4c44b30528f20cbd6a5fec248ac63ae04123124f81a89dc899d3535f" [label="docker-image://docker.io/webdevops/base:ubuntu-15.10@sha256:70b882c952e51a915d645c0c316e23dad1dc619f61e72241c0b1c61a2ed05251" shape="ellipse"];
  "sha256:9841ba137710a9e13368e68e6c30b7140e8ba1b17125e105f33b2667bbd08d33" [label="local://context" shape="ellipse"];
  "sha256:869cac0188c5874e55979828985af1a4260460a2b60574ad2632151e54281bb4" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:01b7252568b38f9763418de9d81a91ec88b6caa5fe97a615fa5334730e0eab6b" [label="/bin/sh -c set -x     && apt-install         zip         unzip         bzip2         moreutils         dnsutils         openssh-client         rsync         git         patch     && mkdir -p /var/lib/syslog-ng/     && /usr/local/bin/generate-locales     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:4fc4a3e9236bab078ad4c686efc62d2f8fe2f4a5dfdab9a46471b0b8e58c123e" [label="sha256:4fc4a3e9236bab078ad4c686efc62d2f8fe2f4a5dfdab9a46471b0b8e58c123e" shape="plaintext"];
  "sha256:91638ede4c44b30528f20cbd6a5fec248ac63ae04123124f81a89dc899d3535f" -> "sha256:869cac0188c5874e55979828985af1a4260460a2b60574ad2632151e54281bb4" [label=""];
  "sha256:9841ba137710a9e13368e68e6c30b7140e8ba1b17125e105f33b2667bbd08d33" -> "sha256:869cac0188c5874e55979828985af1a4260460a2b60574ad2632151e54281bb4" [label=""];
  "sha256:869cac0188c5874e55979828985af1a4260460a2b60574ad2632151e54281bb4" -> "sha256:01b7252568b38f9763418de9d81a91ec88b6caa5fe97a615fa5334730e0eab6b" [label=""];
  "sha256:01b7252568b38f9763418de9d81a91ec88b6caa5fe97a615fa5334730e0eab6b" -> "sha256:4fc4a3e9236bab078ad4c686efc62d2f8fe2f4a5dfdab9a46471b0b8e58c123e" [label=""];
}

