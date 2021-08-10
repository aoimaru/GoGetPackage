[app/sources/275329877.Dockerfile]
digraph {
  "sha256:ebfbf86de6dac1f3b8aaca37c6b99453665f879a5b7b5d4ef680fd540bb9a51c" [label="local://context" shape="ellipse"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" [label="docker-image://docker.io/library/openjdk:8" shape="ellipse"];
  "sha256:2a65fe6430d1501530862da83668af83ebbd1d841893c9160aa19ed063c6bea5" [label="/bin/sh -c mkdir -p $SYNTAXNETDIR     && cd $SYNTAXNETDIR     && apt-get update     && apt-get install -y           file           git           graphviz           libcurl3-dev           libfreetype6-dev           libgraphviz-dev           liblapack-dev           libopenblas-dev           libpng12-dev           libxft-dev           python-dev           python-mock           python-pip           python2.7           swig           vim           zlib1g-dev     && apt-get clean     && (rm -f /var/cache/apt/archives/*.deb         /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true)" shape="box"];
  "sha256:a0162708af933ac4080c5539b71704884dff44ac3522eb0a7a29a37e0c89870c" [label="/bin/sh -c pip install --ignore-installed pip     && python -m pip install numpy     && rm -rf /root/.cache/pip /tmp/pip*" shape="box"];
  "sha256:70187feb59566c219a7be0f31126356a86e7515fa0b7a30feff2ff278829951e" [label="/bin/sh -c python -m pip install           asciitree           ipykernel           jupyter           matplotlib           pandas           protobuf           scipy           sklearn     && python -m ipykernel.kernelspec     && python -m pip install pygraphviz           --install-option=\"--include-path=/usr/include/graphviz\"           --install-option=\"--library-path=/usr/lib/graphviz/\"     && python -m jupyter_core.command nbextension enable           --py --sys-prefix widgetsnbextension     && rm -rf /root/.cache/pip /tmp/pip*" shape="box"];
  "sha256:d885d2a96a591d8a26eee49497b5e810f0c95bdf1dc8f307f0dc80a51bc1dc2c" [label="/bin/sh -c wget --quiet https://github.com/bazelbuild/bazel/releases/download/0.4.3/bazel-0.4.3-installer-linux-x86_64.sh     && chmod +x bazel-0.4.3-installer-linux-x86_64.sh     && ./bazel-0.4.3-installer-linux-x86_64.sh     && rm ./bazel-0.4.3-installer-linux-x86_64.sh" shape="box"];
  "sha256:54ba991b08bb25b064f6c7e4db531bfddca7b9db2452639901392f4203b1fc10" [label="copy{src=/WORKSPACE, dest=/opt/tensorflow/syntaxnet/WORKSPACE}" shape="note"];
  "sha256:80f4aeaa3e01fcdd44fa1e1cf23e1c8e6f4b1b4dc54a183a3fcbb25caca4e67b" [label="copy{src=/tools/bazel.rc, dest=/opt/tensorflow/syntaxnet/tools/bazel.rc}" shape="note"];
  "sha256:065ffd545a4fe788f820212ae50999c1059b951be68e6669bbe3503a7ced19ae" [label="copy{src=/tensorflow, dest=/opt/tensorflow/syntaxnet/tensorflow}" shape="note"];
  "sha256:a4855581dd38070f94aeeb6dd419dae466e4af97918f535187a77ccaa5343cc7" [label="/bin/sh -c cd $SYNTAXNETDIR/syntaxnet/tensorflow     && tensorflow/tools/ci_build/builds/configured CPU     && cd $SYNTAXNETDIR/syntaxnet     && bazel build -c opt @org_tensorflow//tensorflow:tensorflow_py" shape="box"];
  "sha256:b9ed256a3f88a00fd68ad097d30ab6a010f0bf2b72978ae4ee1865b1f59f7b1f" [label="mkdir{path=/opt/tensorflow/syntaxnet}" shape="note"];
  "sha256:83be3d23a3e9e1e4dce8af335b060da180e18f3e01fa963c16ff09820f89fa4e" [label="copy{src=/dragnn, dest=/opt/tensorflow/syntaxnet/dragnn}" shape="note"];
  "sha256:35559fdfcaba1cb314358a9c503e5ea2d99498047c14988b96a743622ad24bcb" [label="copy{src=/syntaxnet, dest=/opt/tensorflow/syntaxnet/syntaxnet}" shape="note"];
  "sha256:357a5beb3e455a3a7b7154ee75725a7bf5fd566b29694e21997291aee49dadd1" [label="copy{src=/third_party, dest=/opt/tensorflow/syntaxnet/third_party}" shape="note"];
  "sha256:9f2efe06b15a70976f7870ee7b0eb803fb2a7dcd390794bcf02ead84df3a7e16" [label="copy{src=/util/utf8, dest=/opt/tensorflow/syntaxnet/util/utf8}" shape="note"];
  "sha256:f6f36528bb11dfa46c23a5546e41886a4963ab6be01cd31b6c4a5a604fb9ac31" [label="/bin/sh -c bazel build -c opt //dragnn/python:all //dragnn/tools:all" shape="box"];
  "sha256:cce55d83a4c55682d6b0fb6745c3e01329739e711991284b56248bc5876d8ae7" [label="copy{src=/tensorflow/tensorflow/tools/docker/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:8e7009ebbc206124e17a464bba7ed6618c4c3581fb91a09e417d3cbb4e3dc5d8" [label="copy{src=/examples, dest=/opt/tensorflow/syntaxnet/examples}" shape="note"];
  "sha256:cbeb7080757349df2b5c4b22413ead200bddc36bacecb56d65e30d9657a21b88" [label="sha256:cbeb7080757349df2b5c4b22413ead200bddc36bacecb56d65e30d9657a21b88" shape="plaintext"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" -> "sha256:2a65fe6430d1501530862da83668af83ebbd1d841893c9160aa19ed063c6bea5" [label=""];
  "sha256:2a65fe6430d1501530862da83668af83ebbd1d841893c9160aa19ed063c6bea5" -> "sha256:a0162708af933ac4080c5539b71704884dff44ac3522eb0a7a29a37e0c89870c" [label=""];
  "sha256:a0162708af933ac4080c5539b71704884dff44ac3522eb0a7a29a37e0c89870c" -> "sha256:70187feb59566c219a7be0f31126356a86e7515fa0b7a30feff2ff278829951e" [label=""];
  "sha256:70187feb59566c219a7be0f31126356a86e7515fa0b7a30feff2ff278829951e" -> "sha256:d885d2a96a591d8a26eee49497b5e810f0c95bdf1dc8f307f0dc80a51bc1dc2c" [label=""];
  "sha256:d885d2a96a591d8a26eee49497b5e810f0c95bdf1dc8f307f0dc80a51bc1dc2c" -> "sha256:54ba991b08bb25b064f6c7e4db531bfddca7b9db2452639901392f4203b1fc10" [label=""];
  "sha256:ebfbf86de6dac1f3b8aaca37c6b99453665f879a5b7b5d4ef680fd540bb9a51c" -> "sha256:54ba991b08bb25b064f6c7e4db531bfddca7b9db2452639901392f4203b1fc10" [label=""];
  "sha256:54ba991b08bb25b064f6c7e4db531bfddca7b9db2452639901392f4203b1fc10" -> "sha256:80f4aeaa3e01fcdd44fa1e1cf23e1c8e6f4b1b4dc54a183a3fcbb25caca4e67b" [label=""];
  "sha256:ebfbf86de6dac1f3b8aaca37c6b99453665f879a5b7b5d4ef680fd540bb9a51c" -> "sha256:80f4aeaa3e01fcdd44fa1e1cf23e1c8e6f4b1b4dc54a183a3fcbb25caca4e67b" [label=""];
  "sha256:80f4aeaa3e01fcdd44fa1e1cf23e1c8e6f4b1b4dc54a183a3fcbb25caca4e67b" -> "sha256:065ffd545a4fe788f820212ae50999c1059b951be68e6669bbe3503a7ced19ae" [label=""];
  "sha256:ebfbf86de6dac1f3b8aaca37c6b99453665f879a5b7b5d4ef680fd540bb9a51c" -> "sha256:065ffd545a4fe788f820212ae50999c1059b951be68e6669bbe3503a7ced19ae" [label=""];
  "sha256:065ffd545a4fe788f820212ae50999c1059b951be68e6669bbe3503a7ced19ae" -> "sha256:a4855581dd38070f94aeeb6dd419dae466e4af97918f535187a77ccaa5343cc7" [label=""];
  "sha256:a4855581dd38070f94aeeb6dd419dae466e4af97918f535187a77ccaa5343cc7" -> "sha256:b9ed256a3f88a00fd68ad097d30ab6a010f0bf2b72978ae4ee1865b1f59f7b1f" [label=""];
  "sha256:b9ed256a3f88a00fd68ad097d30ab6a010f0bf2b72978ae4ee1865b1f59f7b1f" -> "sha256:83be3d23a3e9e1e4dce8af335b060da180e18f3e01fa963c16ff09820f89fa4e" [label=""];
  "sha256:ebfbf86de6dac1f3b8aaca37c6b99453665f879a5b7b5d4ef680fd540bb9a51c" -> "sha256:83be3d23a3e9e1e4dce8af335b060da180e18f3e01fa963c16ff09820f89fa4e" [label=""];
  "sha256:83be3d23a3e9e1e4dce8af335b060da180e18f3e01fa963c16ff09820f89fa4e" -> "sha256:35559fdfcaba1cb314358a9c503e5ea2d99498047c14988b96a743622ad24bcb" [label=""];
  "sha256:ebfbf86de6dac1f3b8aaca37c6b99453665f879a5b7b5d4ef680fd540bb9a51c" -> "sha256:35559fdfcaba1cb314358a9c503e5ea2d99498047c14988b96a743622ad24bcb" [label=""];
  "sha256:35559fdfcaba1cb314358a9c503e5ea2d99498047c14988b96a743622ad24bcb" -> "sha256:357a5beb3e455a3a7b7154ee75725a7bf5fd566b29694e21997291aee49dadd1" [label=""];
  "sha256:ebfbf86de6dac1f3b8aaca37c6b99453665f879a5b7b5d4ef680fd540bb9a51c" -> "sha256:357a5beb3e455a3a7b7154ee75725a7bf5fd566b29694e21997291aee49dadd1" [label=""];
  "sha256:357a5beb3e455a3a7b7154ee75725a7bf5fd566b29694e21997291aee49dadd1" -> "sha256:9f2efe06b15a70976f7870ee7b0eb803fb2a7dcd390794bcf02ead84df3a7e16" [label=""];
  "sha256:ebfbf86de6dac1f3b8aaca37c6b99453665f879a5b7b5d4ef680fd540bb9a51c" -> "sha256:9f2efe06b15a70976f7870ee7b0eb803fb2a7dcd390794bcf02ead84df3a7e16" [label=""];
  "sha256:9f2efe06b15a70976f7870ee7b0eb803fb2a7dcd390794bcf02ead84df3a7e16" -> "sha256:f6f36528bb11dfa46c23a5546e41886a4963ab6be01cd31b6c4a5a604fb9ac31" [label=""];
  "sha256:f6f36528bb11dfa46c23a5546e41886a4963ab6be01cd31b6c4a5a604fb9ac31" -> "sha256:cce55d83a4c55682d6b0fb6745c3e01329739e711991284b56248bc5876d8ae7" [label=""];
  "sha256:ebfbf86de6dac1f3b8aaca37c6b99453665f879a5b7b5d4ef680fd540bb9a51c" -> "sha256:cce55d83a4c55682d6b0fb6745c3e01329739e711991284b56248bc5876d8ae7" [label=""];
  "sha256:cce55d83a4c55682d6b0fb6745c3e01329739e711991284b56248bc5876d8ae7" -> "sha256:8e7009ebbc206124e17a464bba7ed6618c4c3581fb91a09e417d3cbb4e3dc5d8" [label=""];
  "sha256:ebfbf86de6dac1f3b8aaca37c6b99453665f879a5b7b5d4ef680fd540bb9a51c" -> "sha256:8e7009ebbc206124e17a464bba7ed6618c4c3581fb91a09e417d3cbb4e3dc5d8" [label=""];
  "sha256:8e7009ebbc206124e17a464bba7ed6618c4c3581fb91a09e417d3cbb4e3dc5d8" -> "sha256:cbeb7080757349df2b5c4b22413ead200bddc36bacecb56d65e30d9657a21b88" [label=""];
}

