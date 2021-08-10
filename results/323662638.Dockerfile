[app/sources/323662638.Dockerfile]
digraph {
  "sha256:c64f06258dfde1e28c16b12ee23fba37d46253b3c33d71fcc8f876ef3ff5dd78" [label="docker-image://docker.io/shosoar/alpine-python-opencv:latest" shape="ellipse"];
  "sha256:40b5ca2c65ebe5c28d698a230721183c3ee67140d39a1af1c4c6edde766487ab" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:bfb6f65dc623f3b2f693995590bef3a931938af518d6f2b5535e7d213a2d8535" [label="local://context" shape="ellipse"];
  "sha256:ac79856a1ad2bbc448f4db4e817574938e949b8343a42b0f64d84d56fb05e578" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:872e3b0c4809d8384b79364fc8ef5503437631d67736b3619f2698c67ae7f190" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:3c8939d79cd59c9149dc0a8ff08b9da9231e2824d755d80aa24d5bbd4b6f47bf" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:2538e4a2b860c6ab086e3c2d3756a5781f6b5adc9a04b7697da159ac8af286ca" [label="sha256:2538e4a2b860c6ab086e3c2d3756a5781f6b5adc9a04b7697da159ac8af286ca" shape="plaintext"];
  "sha256:c64f06258dfde1e28c16b12ee23fba37d46253b3c33d71fcc8f876ef3ff5dd78" -> "sha256:40b5ca2c65ebe5c28d698a230721183c3ee67140d39a1af1c4c6edde766487ab" [label=""];
  "sha256:40b5ca2c65ebe5c28d698a230721183c3ee67140d39a1af1c4c6edde766487ab" -> "sha256:ac79856a1ad2bbc448f4db4e817574938e949b8343a42b0f64d84d56fb05e578" [label=""];
  "sha256:bfb6f65dc623f3b2f693995590bef3a931938af518d6f2b5535e7d213a2d8535" -> "sha256:ac79856a1ad2bbc448f4db4e817574938e949b8343a42b0f64d84d56fb05e578" [label=""];
  "sha256:ac79856a1ad2bbc448f4db4e817574938e949b8343a42b0f64d84d56fb05e578" -> "sha256:872e3b0c4809d8384b79364fc8ef5503437631d67736b3619f2698c67ae7f190" [label=""];
  "sha256:872e3b0c4809d8384b79364fc8ef5503437631d67736b3619f2698c67ae7f190" -> "sha256:3c8939d79cd59c9149dc0a8ff08b9da9231e2824d755d80aa24d5bbd4b6f47bf" [label=""];
  "sha256:bfb6f65dc623f3b2f693995590bef3a931938af518d6f2b5535e7d213a2d8535" -> "sha256:3c8939d79cd59c9149dc0a8ff08b9da9231e2824d755d80aa24d5bbd4b6f47bf" [label=""];
  "sha256:3c8939d79cd59c9149dc0a8ff08b9da9231e2824d755d80aa24d5bbd4b6f47bf" -> "sha256:2538e4a2b860c6ab086e3c2d3756a5781f6b5adc9a04b7697da159ac8af286ca" [label=""];
}

