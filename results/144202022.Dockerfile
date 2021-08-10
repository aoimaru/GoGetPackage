[app/sources/144202022.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:9b07c3c82b617c0603fa0e8c15b1f832a0d7d659b39685b35103910a9f6a9cac" [label="local://context" shape="ellipse"];
  "sha256:42e9bbe1b509d0d2f6ab910bc2cf33164eab211a855e59172bb50d854e80c9d0" [label="copy{src=/tini, dest=/tini}" shape="note"];
  "sha256:5db0722e6d7389adb13a2edd9efa01d55c61a7bd55040651b62cbd425336fb0c" [label="/bin/sh -c sed -i \"s/jessie main/jessie main non-free/\" /etc/apt/sources.list  && apt-get update  && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends     automake     build-essential     desktop-file-utils     git     libglib2.0-dev     libtool     python     python-dateutil     python-dev     python-lxml     python-m2crypto     python-pil     python-setuptools     python-yaml     socat     xml2rfc  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:bb15404aeb251938085f9e83a577c28622f024f6f32442eb72f22f71e2699f65" [label="copy{src=/opendiamond-HEAD.tar.gz, dest=/usr/src/opendiamond}" shape="note"];
  "sha256:804362ead664f4d64565d6d8f9eb38ec85ea713a2466e45afa3dba3840dbd669" [label="/bin/sh -c cd /usr/src/opendiamond && autoreconf -f -i  && ./configure && make install && make clean  && ldconfig" shape="box"];
  "sha256:e3f1438380fa04fb000f84cf71776fe6d13b9bf9c1df92769dc1ff2e70084add" [label="copy{src=/extract-filters, dest=/usr/local/bin}" shape="note"];
  "sha256:8564532652e143cf3804532247538c69c7646ba9d28d33a86b7c4b405f0caa92" [label="sha256:8564532652e143cf3804532247538c69c7646ba9d28d33a86b7c4b405f0caa92" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:42e9bbe1b509d0d2f6ab910bc2cf33164eab211a855e59172bb50d854e80c9d0" [label=""];
  "sha256:9b07c3c82b617c0603fa0e8c15b1f832a0d7d659b39685b35103910a9f6a9cac" -> "sha256:42e9bbe1b509d0d2f6ab910bc2cf33164eab211a855e59172bb50d854e80c9d0" [label=""];
  "sha256:42e9bbe1b509d0d2f6ab910bc2cf33164eab211a855e59172bb50d854e80c9d0" -> "sha256:5db0722e6d7389adb13a2edd9efa01d55c61a7bd55040651b62cbd425336fb0c" [label=""];
  "sha256:5db0722e6d7389adb13a2edd9efa01d55c61a7bd55040651b62cbd425336fb0c" -> "sha256:bb15404aeb251938085f9e83a577c28622f024f6f32442eb72f22f71e2699f65" [label=""];
  "sha256:9b07c3c82b617c0603fa0e8c15b1f832a0d7d659b39685b35103910a9f6a9cac" -> "sha256:bb15404aeb251938085f9e83a577c28622f024f6f32442eb72f22f71e2699f65" [label=""];
  "sha256:bb15404aeb251938085f9e83a577c28622f024f6f32442eb72f22f71e2699f65" -> "sha256:804362ead664f4d64565d6d8f9eb38ec85ea713a2466e45afa3dba3840dbd669" [label=""];
  "sha256:804362ead664f4d64565d6d8f9eb38ec85ea713a2466e45afa3dba3840dbd669" -> "sha256:e3f1438380fa04fb000f84cf71776fe6d13b9bf9c1df92769dc1ff2e70084add" [label=""];
  "sha256:9b07c3c82b617c0603fa0e8c15b1f832a0d7d659b39685b35103910a9f6a9cac" -> "sha256:e3f1438380fa04fb000f84cf71776fe6d13b9bf9c1df92769dc1ff2e70084add" [label=""];
  "sha256:e3f1438380fa04fb000f84cf71776fe6d13b9bf9c1df92769dc1ff2e70084add" -> "sha256:8564532652e143cf3804532247538c69c7646ba9d28d33a86b7c4b405f0caa92" [label=""];
}

