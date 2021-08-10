[app/sources/252771414.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label="/bin/sh -c apk update" shape="box"];
  "sha256:a3c17040d3197206b293d84fd264ee25902da7a46a5df9b8dc21851a5318384e" [label="/bin/sh -c apk add quagga" shape="box"];
  "sha256:609c76aa4ccc4423761df1445050bd6bdf65b5795820b306ea986bbe0b9ddc3b" [label="/bin/sh -c touch /etc/quagga/babeld.conf && touch /etc/quagga/bgpd.conf && touch /etc/quagga/isisd.conf && touch /etc/quagga/ospf6d.conf && touch /etc/quagga/ospfd.conf && touch /etc/quagga/ripd.conf && touch /etc/quagga/ripngd.conf && touch /etc/quagga/vtysh.conf && touch /etc/quagga/zebra.conf" shape="box"];
  "sha256:9bc5a7c68271d09dce59da8178958acbdc8a67fce4e91d6326c8430a4454685d" [label="/bin/sh -c echo \"export VTYSH_PAGER=more\" >> /etc/bash.bashrc" shape="box"];
  "sha256:592cfa2f0c404d4829d0771e390562e77d79249abab496ab8bfa30171780880f" [label="/bin/sh -c echo \"VTYSH_PAGER=more\" >> /etc/environment" shape="box"];
  "sha256:9e4e11392b4de5df5acc29c828936cb375b409b3dfbf00f210dfa7f805ef21ae" [label="/bin/sh -c chown -R quagga /etc/quagga" shape="box"];
  "sha256:db376c317f9fd25a24e47a248f5fcaf2bef310b0ad8edaee8badd238dfa1a705" [label="local://context" shape="ellipse"];
  "sha256:2b525e7fab18e1c904096028106098f8e33febd797d3fdd9081a590378118ceb" [label="copy{src=/start-quagga.sh, dest=/start-quagga.sh}" shape="note"];
  "sha256:ca2c168673cc3b1efada18fd22f10a51b8884a11a1df37971dd4d43f6cb4187d" [label="/bin/sh -c chmod a+x start-quagga.sh" shape="box"];
  "sha256:e601b9dd22b0193c684938d63f161c995a694e72140c491acc7150876e5f8501" [label="sha256:e601b9dd22b0193c684938d63f161c995a694e72140c491acc7150876e5f8501" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label=""];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" -> "sha256:a3c17040d3197206b293d84fd264ee25902da7a46a5df9b8dc21851a5318384e" [label=""];
  "sha256:a3c17040d3197206b293d84fd264ee25902da7a46a5df9b8dc21851a5318384e" -> "sha256:609c76aa4ccc4423761df1445050bd6bdf65b5795820b306ea986bbe0b9ddc3b" [label=""];
  "sha256:609c76aa4ccc4423761df1445050bd6bdf65b5795820b306ea986bbe0b9ddc3b" -> "sha256:9bc5a7c68271d09dce59da8178958acbdc8a67fce4e91d6326c8430a4454685d" [label=""];
  "sha256:9bc5a7c68271d09dce59da8178958acbdc8a67fce4e91d6326c8430a4454685d" -> "sha256:592cfa2f0c404d4829d0771e390562e77d79249abab496ab8bfa30171780880f" [label=""];
  "sha256:592cfa2f0c404d4829d0771e390562e77d79249abab496ab8bfa30171780880f" -> "sha256:9e4e11392b4de5df5acc29c828936cb375b409b3dfbf00f210dfa7f805ef21ae" [label=""];
  "sha256:9e4e11392b4de5df5acc29c828936cb375b409b3dfbf00f210dfa7f805ef21ae" -> "sha256:2b525e7fab18e1c904096028106098f8e33febd797d3fdd9081a590378118ceb" [label=""];
  "sha256:db376c317f9fd25a24e47a248f5fcaf2bef310b0ad8edaee8badd238dfa1a705" -> "sha256:2b525e7fab18e1c904096028106098f8e33febd797d3fdd9081a590378118ceb" [label=""];
  "sha256:2b525e7fab18e1c904096028106098f8e33febd797d3fdd9081a590378118ceb" -> "sha256:ca2c168673cc3b1efada18fd22f10a51b8884a11a1df37971dd4d43f6cb4187d" [label=""];
  "sha256:ca2c168673cc3b1efada18fd22f10a51b8884a11a1df37971dd4d43f6cb4187d" -> "sha256:e601b9dd22b0193c684938d63f161c995a694e72140c491acc7150876e5f8501" [label=""];
}

