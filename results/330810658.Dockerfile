[app/sources/330810658.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:367bccd2acbde54e79ee28bf1fc535b7cfcf9bd7cc55da24cfb6a8bf1d7d08be" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:5d1e1472b0237cf9a02d6ff3354dbb68be509575354334209f2d56c1c67db198" [label="local://context" shape="ellipse"];
  "sha256:e24d0d347380c57e116adc01d1bfddc48e19778ab2a1c58e130f4adc3d252907" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:82c89682f9b5cc82243be6276f17dc2ef8907bd2fb5d7cbccbd4aca679565af4" [label="/bin/sh -c pip3 install ." shape="box"];
  "sha256:642047c80e61fe8ffa19099bcbde349e35115e19bfde46a9d5e41ab27e147dac" [label="sha256:642047c80e61fe8ffa19099bcbde349e35115e19bfde46a9d5e41ab27e147dac" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:367bccd2acbde54e79ee28bf1fc535b7cfcf9bd7cc55da24cfb6a8bf1d7d08be" [label=""];
  "sha256:367bccd2acbde54e79ee28bf1fc535b7cfcf9bd7cc55da24cfb6a8bf1d7d08be" -> "sha256:e24d0d347380c57e116adc01d1bfddc48e19778ab2a1c58e130f4adc3d252907" [label=""];
  "sha256:5d1e1472b0237cf9a02d6ff3354dbb68be509575354334209f2d56c1c67db198" -> "sha256:e24d0d347380c57e116adc01d1bfddc48e19778ab2a1c58e130f4adc3d252907" [label=""];
  "sha256:e24d0d347380c57e116adc01d1bfddc48e19778ab2a1c58e130f4adc3d252907" -> "sha256:82c89682f9b5cc82243be6276f17dc2ef8907bd2fb5d7cbccbd4aca679565af4" [label=""];
  "sha256:82c89682f9b5cc82243be6276f17dc2ef8907bd2fb5d7cbccbd4aca679565af4" -> "sha256:642047c80e61fe8ffa19099bcbde349e35115e19bfde46a9d5e41ab27e147dac" [label=""];
}

