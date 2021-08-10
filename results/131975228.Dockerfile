[app/sources/131975228.Dockerfile]
digraph {
  "sha256:b7da3db566c35128bc99ff34429b6d638405c77daa85b54ec25bb8a9102e4c03" [label="docker-image://docker.io/library/ruby:2.1" shape="ellipse"];
  "sha256:ff3106abbc904dd5f223aacaa0268732059d3a56f2c2a62e9d01470aab86ce7a" [label="/bin/sh -c apt-get clean   && mv /var/lib/apt/lists /var/lib/apt/lists.broke   && mkdir -p /var/lib/apt/lists/partial" shape="box"];
  "sha256:c62f64492535799b9f16e7942fbbf2cb8ccec8b834c2f5c3f15f803764398fc7" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:11d12bfc14fa89ef44c96f779f98c8a98a1c78c20f5abc805ae3646f702ac83e" [label="/bin/sh -c apt-get install -y     node     python-pygments   && apt-get clean   && rm -rf /var/lib/apt/lists/" shape="box"];
  "sha256:1504356cbae612e1c8ce7378723df5e9fd56507ca504d64ebe6048e21c8ba06c" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:427eaadedd03b756a2ca496565a7e3b110db61be71d49ddf8d124724bcb28a91" [label="local://context" shape="ellipse"];
  "sha256:962fd3c67bdad3d7f0e569536d400c3b0c07695a85ba33606f724effd02c0ff1" [label="copy{src=/Gemfile, dest=/tmp/}" shape="note"];
  "sha256:ad3916698d41a0ef545fe7b98e75c335fe2676ebe48fcda4c46b76b2722cc50b" [label="copy{src=/Gemfile.lock, dest=/tmp/}" shape="note"];
  "sha256:62b716060290b1f6e5bdb2cf2a154e3bf71b96638890a7aa60d10494829fa649" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:c2c0361e50ea1be52a08f634f71ee7ef3fdf181259c105532e8e934fb02bffcd" [label="mkdir{path=/src}" shape="note"];
  "sha256:dc7ce0d57c7c593f1e888166f03510a85d017320574b0396c0fdc1ac0f85859e" [label="sha256:dc7ce0d57c7c593f1e888166f03510a85d017320574b0396c0fdc1ac0f85859e" shape="plaintext"];
  "sha256:b7da3db566c35128bc99ff34429b6d638405c77daa85b54ec25bb8a9102e4c03" -> "sha256:ff3106abbc904dd5f223aacaa0268732059d3a56f2c2a62e9d01470aab86ce7a" [label=""];
  "sha256:ff3106abbc904dd5f223aacaa0268732059d3a56f2c2a62e9d01470aab86ce7a" -> "sha256:c62f64492535799b9f16e7942fbbf2cb8ccec8b834c2f5c3f15f803764398fc7" [label=""];
  "sha256:c62f64492535799b9f16e7942fbbf2cb8ccec8b834c2f5c3f15f803764398fc7" -> "sha256:11d12bfc14fa89ef44c96f779f98c8a98a1c78c20f5abc805ae3646f702ac83e" [label=""];
  "sha256:11d12bfc14fa89ef44c96f779f98c8a98a1c78c20f5abc805ae3646f702ac83e" -> "sha256:1504356cbae612e1c8ce7378723df5e9fd56507ca504d64ebe6048e21c8ba06c" [label=""];
  "sha256:1504356cbae612e1c8ce7378723df5e9fd56507ca504d64ebe6048e21c8ba06c" -> "sha256:962fd3c67bdad3d7f0e569536d400c3b0c07695a85ba33606f724effd02c0ff1" [label=""];
  "sha256:427eaadedd03b756a2ca496565a7e3b110db61be71d49ddf8d124724bcb28a91" -> "sha256:962fd3c67bdad3d7f0e569536d400c3b0c07695a85ba33606f724effd02c0ff1" [label=""];
  "sha256:962fd3c67bdad3d7f0e569536d400c3b0c07695a85ba33606f724effd02c0ff1" -> "sha256:ad3916698d41a0ef545fe7b98e75c335fe2676ebe48fcda4c46b76b2722cc50b" [label=""];
  "sha256:427eaadedd03b756a2ca496565a7e3b110db61be71d49ddf8d124724bcb28a91" -> "sha256:ad3916698d41a0ef545fe7b98e75c335fe2676ebe48fcda4c46b76b2722cc50b" [label=""];
  "sha256:ad3916698d41a0ef545fe7b98e75c335fe2676ebe48fcda4c46b76b2722cc50b" -> "sha256:62b716060290b1f6e5bdb2cf2a154e3bf71b96638890a7aa60d10494829fa649" [label=""];
  "sha256:62b716060290b1f6e5bdb2cf2a154e3bf71b96638890a7aa60d10494829fa649" -> "sha256:c2c0361e50ea1be52a08f634f71ee7ef3fdf181259c105532e8e934fb02bffcd" [label=""];
  "sha256:c2c0361e50ea1be52a08f634f71ee7ef3fdf181259c105532e8e934fb02bffcd" -> "sha256:dc7ce0d57c7c593f1e888166f03510a85d017320574b0396c0fdc1ac0f85859e" [label=""];
}

