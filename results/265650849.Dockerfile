[app/sources/265650849.Dockerfile]
digraph {
  "sha256:0fd04eb590f11ec9edbb9d418d04272399ef6993acd7ee9e15fabc5207fffd70" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:3882f318d3d6515971ebad2fd79b85622acc0ee1fca5c66e207531afa1216d27" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     clang-format-3.8     cmake     curl     g++     git     make     python-dev     python-pip     python-setuptools     unzip     zip     zlib1g-dev     libhdf5-dev     libarchive-dev" shape="box"];
  "sha256:943de4571b0fcef7a8390d6314807a0f11db31652821526b3b6658b65c900a3e" [label="copy{src=/python/setup_requirements.txt, dest=/tmp/deps/}" shape="note"];
  "sha256:60d0400bdc5ff371cebe9abd2e09b342c48f819cfc5710b2e37c369fdc5d81d4" [label="/bin/sh -c pip install -U -r /tmp/deps/setup_requirements.txt" shape="box"];
  "sha256:b1d10bbe8aad398a17ee723ef6e05ba161f8c9fe0385039f370a87d96d4ac939" [label="copy{src=/python/requirements.txt, dest=/tmp/deps/}" shape="note"];
  "sha256:e1c8a6dac8fd62dae6b39c81e41db13bc7f5905da6d1f0de387fa47d30bd52d2" [label="/bin/sh -c pip install -U -r /tmp/deps/requirements.txt" shape="box"];
  "sha256:ad5f038c462380964a36ef845ff0bbb046505e67affc114c54a06ea2dcf86aea" [label="copy{src=/python/test_requirements.txt, dest=/tmp/deps/}" shape="note"];
  "sha256:cd00b51f3e105eeccd1b79a835da617eb7c5a6ffbf876f00208e8e1fdd19154e" [label="/bin/sh -c pip install -U -r /tmp/deps/test_requirements.txt" shape="box"];
  "sha256:4dba932759927a7cf2172a319e4947e4b4c827965c3a2c9eb6c2619a0b19c55c" [label="/bin/sh -c pip install -U ipython" shape="box"];
  "sha256:4c1b38129293601216c5b702e1d290fbe4e2be15742744af50f2626c535de400" [label="/bin/sh -c apt-get -yqq update     && apt-get -yqq install --no-install-recommends         build-essential         dh-autoreconf         pkg-config     && git clone https://github.com/google/protobuf.git /protobuf     && cd /protobuf     && git checkout v3.4.1     && ./autogen.sh     && ./configure     && make     && make install     && ldconfig     && apt-get -yqq purge dh-autoreconf     && apt-get -yqq clean     && rm -rf /var/lib/apt/lists/*     && rm -rf /protobuf /protoc-gen-doc" shape="box"];
  "sha256:4830ec1b10949c1897f4eec6c76064e77981b9835c3dfdbc19669f2e75a6c239" [label="/bin/sh -c apt-get -yqq update     && apt-get -yqq install --no-install-recommends         doxygen         fonts-freefont-ttf         graphviz         pandoc         plantuml         unzip     && pip install -U         Sphinx         pygments         recommonmark==0.4.0         sphinx-rtd-theme         sphinxcontrib-actdiag         sphinxcontrib-blockdiag         sphinxcontrib-nwdiag         sphinxcontrib-plantuml         sphinxcontrib-seqdiag         sphinxcontrib-toc     && apt-get -yqq clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cea4596a2e0f9f922bc63302629883e06229ed7784c45b17f52b181de5927557" [label="sha256:cea4596a2e0f9f922bc63302629883e06229ed7784c45b17f52b181de5927557" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:3882f318d3d6515971ebad2fd79b85622acc0ee1fca5c66e207531afa1216d27" [label=""];
  "sha256:3882f318d3d6515971ebad2fd79b85622acc0ee1fca5c66e207531afa1216d27" -> "sha256:943de4571b0fcef7a8390d6314807a0f11db31652821526b3b6658b65c900a3e" [label=""];
  "sha256:0fd04eb590f11ec9edbb9d418d04272399ef6993acd7ee9e15fabc5207fffd70" -> "sha256:943de4571b0fcef7a8390d6314807a0f11db31652821526b3b6658b65c900a3e" [label=""];
  "sha256:943de4571b0fcef7a8390d6314807a0f11db31652821526b3b6658b65c900a3e" -> "sha256:60d0400bdc5ff371cebe9abd2e09b342c48f819cfc5710b2e37c369fdc5d81d4" [label=""];
  "sha256:60d0400bdc5ff371cebe9abd2e09b342c48f819cfc5710b2e37c369fdc5d81d4" -> "sha256:b1d10bbe8aad398a17ee723ef6e05ba161f8c9fe0385039f370a87d96d4ac939" [label=""];
  "sha256:0fd04eb590f11ec9edbb9d418d04272399ef6993acd7ee9e15fabc5207fffd70" -> "sha256:b1d10bbe8aad398a17ee723ef6e05ba161f8c9fe0385039f370a87d96d4ac939" [label=""];
  "sha256:b1d10bbe8aad398a17ee723ef6e05ba161f8c9fe0385039f370a87d96d4ac939" -> "sha256:e1c8a6dac8fd62dae6b39c81e41db13bc7f5905da6d1f0de387fa47d30bd52d2" [label=""];
  "sha256:e1c8a6dac8fd62dae6b39c81e41db13bc7f5905da6d1f0de387fa47d30bd52d2" -> "sha256:ad5f038c462380964a36ef845ff0bbb046505e67affc114c54a06ea2dcf86aea" [label=""];
  "sha256:0fd04eb590f11ec9edbb9d418d04272399ef6993acd7ee9e15fabc5207fffd70" -> "sha256:ad5f038c462380964a36ef845ff0bbb046505e67affc114c54a06ea2dcf86aea" [label=""];
  "sha256:ad5f038c462380964a36ef845ff0bbb046505e67affc114c54a06ea2dcf86aea" -> "sha256:cd00b51f3e105eeccd1b79a835da617eb7c5a6ffbf876f00208e8e1fdd19154e" [label=""];
  "sha256:cd00b51f3e105eeccd1b79a835da617eb7c5a6ffbf876f00208e8e1fdd19154e" -> "sha256:4dba932759927a7cf2172a319e4947e4b4c827965c3a2c9eb6c2619a0b19c55c" [label=""];
  "sha256:4dba932759927a7cf2172a319e4947e4b4c827965c3a2c9eb6c2619a0b19c55c" -> "sha256:4c1b38129293601216c5b702e1d290fbe4e2be15742744af50f2626c535de400" [label=""];
  "sha256:4c1b38129293601216c5b702e1d290fbe4e2be15742744af50f2626c535de400" -> "sha256:4830ec1b10949c1897f4eec6c76064e77981b9835c3dfdbc19669f2e75a6c239" [label=""];
  "sha256:4830ec1b10949c1897f4eec6c76064e77981b9835c3dfdbc19669f2e75a6c239" -> "sha256:cea4596a2e0f9f922bc63302629883e06229ed7784c45b17f52b181de5927557" [label=""];
}

