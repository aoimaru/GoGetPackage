[app/sources/457583675.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:749bd03d65146f0f152b7c7f6e24eb8e06b7096c617142428c63a9b0dac09e41" [label="/bin/sh -c apt-get install -y     autoconf     automake     curl     g++     git     libtool     make     python     unzip     zlib1g-dev" shape="box"];
  "sha256:7ab2b7fb780b57c555b4f74bfcebd3fb24287f377805fe595b5c49781cc9502f" [label="sha256:7ab2b7fb780b57c555b4f74bfcebd3fb24287f377805fe595b5c49781cc9502f" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label=""];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" -> "sha256:749bd03d65146f0f152b7c7f6e24eb8e06b7096c617142428c63a9b0dac09e41" [label=""];
  "sha256:749bd03d65146f0f152b7c7f6e24eb8e06b7096c617142428c63a9b0dac09e41" -> "sha256:7ab2b7fb780b57c555b4f74bfcebd3fb24287f377805fe595b5c49781cc9502f" [label=""];
}

