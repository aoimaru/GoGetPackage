[app/sources/413589507.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:bb93ae8e307fdaadac9ac6fd44e662170c580ae985d44cdb32c30d861c778b35" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:577f66cccdf98581cb9f1c3cca10d1162bc2eaee3238ce60323bd3f271bfd569" [label="/bin/sh -c sed -i 's/archive.ubuntu.com/is.archive.ubuntu.com/' /etc/apt/sources.list" shape="box"];
  "sha256:a8c522137bffaf2fa9bdadb329904c3ef9f747ba3e0137ce8c82c2c0af30f73b" [label="/bin/sh -c apt-get update -qq && apt-get install -y software-properties-common" shape="box"];
  "sha256:3bdc6b927c91d73aeaa82155d3dd315b4795081b845a9d5ad29e96edafb3457f" [label="/bin/sh -c apt-get install -y build-essential autotools-dev automake gcc g++ python" shape="box"];
  "sha256:8a7938aa5ce128fbe25fd471a4b2305636bb593644d5825c0cd3faed0065abcc" [label="/bin/sh -c apt-get install -y libboost-all-dev libgmp-dev bisonc++ flexc++ python-yaml python3-yaml imagemagick tidy --no-install-recommends" shape="box"];
  "sha256:ae3cfc57b693da03431f7ca5a112a741afb6bad2df08db1571d569debe2db4df" [label="/bin/sh -c apt-get install -y texlive-latex-recommended texlive-fonts-recommended texlive-generic-recommended texlive-latex-extra texlive-lang-cyrillic python-plastex --no-install-recommends" shape="box"];
  "sha256:60a75764079d1ca5cc33e8282a0f5d76a9a38dcbff510358d747f8cfa752ddb8" [label="/bin/sh -c mkdir /problemtools" shape="box"];
  "sha256:bafb73bec90ef882c848c6a94b0b6af58f2c2859809171bacdb7f8910cd427a9" [label="/bin/sh -c mkdir /epsilon" shape="box"];
  "sha256:5d6118fd51b65bf24e3ca5ad9b89fb7e7fd743a7061a54a7f75a6c266dfc1720" [label="local://context" shape="ellipse"];
  "sha256:863243ec86ee91c08864170a44bf14f97708f94bf0d0ee98a1eb7e79ddd3746f" [label="copy{src=/problemtools, dest=/problemtools/}" shape="note"];
  "sha256:fe0ed0091b17813829a34bc48acf0e0c541d4edd7f4e3214c1dff93dccbca4f2" [label="mkdir{path=/problemtools}" shape="note"];
  "sha256:7487862d0369517eb94f773a2d8b8fadb24576b11709fbe42dd3809669443537" [label="/bin/sh -c make" shape="box"];
  "sha256:c91ba3ce10a8d77ec8e7da28ebd199eebe18560da18624d649a0012f5c2e37ba" [label="mkdir{path=/epsilon}" shape="note"];
  "sha256:c25bd544b46fcaa922a8e25656ec27838ee7405e5e3898082e18fc85f61ae404" [label="sha256:c25bd544b46fcaa922a8e25656ec27838ee7405e5e3898082e18fc85f61ae404" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:bb93ae8e307fdaadac9ac6fd44e662170c580ae985d44cdb32c30d861c778b35" [label=""];
  "sha256:bb93ae8e307fdaadac9ac6fd44e662170c580ae985d44cdb32c30d861c778b35" -> "sha256:577f66cccdf98581cb9f1c3cca10d1162bc2eaee3238ce60323bd3f271bfd569" [label=""];
  "sha256:577f66cccdf98581cb9f1c3cca10d1162bc2eaee3238ce60323bd3f271bfd569" -> "sha256:a8c522137bffaf2fa9bdadb329904c3ef9f747ba3e0137ce8c82c2c0af30f73b" [label=""];
  "sha256:a8c522137bffaf2fa9bdadb329904c3ef9f747ba3e0137ce8c82c2c0af30f73b" -> "sha256:3bdc6b927c91d73aeaa82155d3dd315b4795081b845a9d5ad29e96edafb3457f" [label=""];
  "sha256:3bdc6b927c91d73aeaa82155d3dd315b4795081b845a9d5ad29e96edafb3457f" -> "sha256:8a7938aa5ce128fbe25fd471a4b2305636bb593644d5825c0cd3faed0065abcc" [label=""];
  "sha256:8a7938aa5ce128fbe25fd471a4b2305636bb593644d5825c0cd3faed0065abcc" -> "sha256:ae3cfc57b693da03431f7ca5a112a741afb6bad2df08db1571d569debe2db4df" [label=""];
  "sha256:ae3cfc57b693da03431f7ca5a112a741afb6bad2df08db1571d569debe2db4df" -> "sha256:60a75764079d1ca5cc33e8282a0f5d76a9a38dcbff510358d747f8cfa752ddb8" [label=""];
  "sha256:60a75764079d1ca5cc33e8282a0f5d76a9a38dcbff510358d747f8cfa752ddb8" -> "sha256:bafb73bec90ef882c848c6a94b0b6af58f2c2859809171bacdb7f8910cd427a9" [label=""];
  "sha256:bafb73bec90ef882c848c6a94b0b6af58f2c2859809171bacdb7f8910cd427a9" -> "sha256:863243ec86ee91c08864170a44bf14f97708f94bf0d0ee98a1eb7e79ddd3746f" [label=""];
  "sha256:5d6118fd51b65bf24e3ca5ad9b89fb7e7fd743a7061a54a7f75a6c266dfc1720" -> "sha256:863243ec86ee91c08864170a44bf14f97708f94bf0d0ee98a1eb7e79ddd3746f" [label=""];
  "sha256:863243ec86ee91c08864170a44bf14f97708f94bf0d0ee98a1eb7e79ddd3746f" -> "sha256:fe0ed0091b17813829a34bc48acf0e0c541d4edd7f4e3214c1dff93dccbca4f2" [label=""];
  "sha256:fe0ed0091b17813829a34bc48acf0e0c541d4edd7f4e3214c1dff93dccbca4f2" -> "sha256:7487862d0369517eb94f773a2d8b8fadb24576b11709fbe42dd3809669443537" [label=""];
  "sha256:7487862d0369517eb94f773a2d8b8fadb24576b11709fbe42dd3809669443537" -> "sha256:c91ba3ce10a8d77ec8e7da28ebd199eebe18560da18624d649a0012f5c2e37ba" [label=""];
  "sha256:c91ba3ce10a8d77ec8e7da28ebd199eebe18560da18624d649a0012f5c2e37ba" -> "sha256:c25bd544b46fcaa922a8e25656ec27838ee7405e5e3898082e18fc85f61ae404" [label=""];
}

