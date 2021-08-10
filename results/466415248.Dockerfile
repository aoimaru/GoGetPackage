[app/sources/466415248.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:fdfdb147a225eb9c4a84d7d8fb8893da0644e90a07708e8eec0ea18d64d51e53" [label="/bin/sh -c yum -y install gcc automake libtool vim git make patch" shape="box"];
  "sha256:ab3a43b2a8f819b2ae36cfd3956ba11256df3dae7071a67e69583e3fa8add040" [label="/bin/sh -c curl https://sh.rustup.rs -sSf > rustup.sh && sh rustup.sh -y" shape="box"];
  "sha256:e58e297c596fc1b3e433c4c4b113d7ea9f580e2277c045b76dc4bc696bcee012" [label="/bin/sh -c cargo install frugalos --version $FRUGALOS_VERSION" shape="box"];
  "sha256:d900a3eda612793bd7f580c87f08c725bc96072eda7075217a40a227b54be43f" [label="copy{src=/root/.cargo/bin/frugalos, dest=/bin/frugalos}" shape="note"];
  "sha256:649aa2e2eeaf44235804306b5c01d377b98f87330d91ce1809cfee9d07b7035b" [label="sha256:649aa2e2eeaf44235804306b5c01d377b98f87330d91ce1809cfee9d07b7035b" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:fdfdb147a225eb9c4a84d7d8fb8893da0644e90a07708e8eec0ea18d64d51e53" [label=""];
  "sha256:fdfdb147a225eb9c4a84d7d8fb8893da0644e90a07708e8eec0ea18d64d51e53" -> "sha256:ab3a43b2a8f819b2ae36cfd3956ba11256df3dae7071a67e69583e3fa8add040" [label=""];
  "sha256:ab3a43b2a8f819b2ae36cfd3956ba11256df3dae7071a67e69583e3fa8add040" -> "sha256:e58e297c596fc1b3e433c4c4b113d7ea9f580e2277c045b76dc4bc696bcee012" [label=""];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:d900a3eda612793bd7f580c87f08c725bc96072eda7075217a40a227b54be43f" [label=""];
  "sha256:e58e297c596fc1b3e433c4c4b113d7ea9f580e2277c045b76dc4bc696bcee012" -> "sha256:d900a3eda612793bd7f580c87f08c725bc96072eda7075217a40a227b54be43f" [label=""];
  "sha256:d900a3eda612793bd7f580c87f08c725bc96072eda7075217a40a227b54be43f" -> "sha256:649aa2e2eeaf44235804306b5c01d377b98f87330d91ce1809cfee9d07b7035b" [label=""];
}

