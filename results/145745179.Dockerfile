[app/sources/145745179.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:cccfa732c1400df9d7bdc488c787b6d7b0ed691a31fbb84a7fec785f15e797a5" [label="local://context" shape="ellipse"];
  "sha256:8addb8545bbea381ae04e65fe20cc192898ce9519deee77d11e7df194e01bbd8" [label="copy{src=/devicehive, dest=/opt/devicehive-python/devicehive}" shape="note"];
  "sha256:b65096eafd69c0ec94e9cdc43b694d3de30a342a3398186ea69913a38717de1b" [label="copy{src=/tests, dest=/opt/devicehive-python/tests}" shape="note"];
  "sha256:46436cfe89d016fbc313c1e21902fa1055ba6d2296962d9fc3debaf3a22afb36" [label="copy{src=/setup.py, dest=/opt/devicehive-python/},copy{src=/README.md, dest=/opt/devicehive-python/}" shape="note"];
  "sha256:eb05d1f9838cddb7397c0a567cc63a7c813fb1d58beee4f47d5ee59db90f85d3" [label="/bin/sh -c cd /opt/devicehive-python && pip install . pytest" shape="box"];
  "sha256:f23beef904c3fac58f7278c11e4d2aa76f53990257808370049e1b1c5c2a6204" [label="sha256:f23beef904c3fac58f7278c11e4d2aa76f53990257808370049e1b1c5c2a6204" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:8addb8545bbea381ae04e65fe20cc192898ce9519deee77d11e7df194e01bbd8" [label=""];
  "sha256:cccfa732c1400df9d7bdc488c787b6d7b0ed691a31fbb84a7fec785f15e797a5" -> "sha256:8addb8545bbea381ae04e65fe20cc192898ce9519deee77d11e7df194e01bbd8" [label=""];
  "sha256:8addb8545bbea381ae04e65fe20cc192898ce9519deee77d11e7df194e01bbd8" -> "sha256:b65096eafd69c0ec94e9cdc43b694d3de30a342a3398186ea69913a38717de1b" [label=""];
  "sha256:cccfa732c1400df9d7bdc488c787b6d7b0ed691a31fbb84a7fec785f15e797a5" -> "sha256:b65096eafd69c0ec94e9cdc43b694d3de30a342a3398186ea69913a38717de1b" [label=""];
  "sha256:b65096eafd69c0ec94e9cdc43b694d3de30a342a3398186ea69913a38717de1b" -> "sha256:46436cfe89d016fbc313c1e21902fa1055ba6d2296962d9fc3debaf3a22afb36" [label=""];
  "sha256:cccfa732c1400df9d7bdc488c787b6d7b0ed691a31fbb84a7fec785f15e797a5" -> "sha256:46436cfe89d016fbc313c1e21902fa1055ba6d2296962d9fc3debaf3a22afb36" [label=""];
  "sha256:46436cfe89d016fbc313c1e21902fa1055ba6d2296962d9fc3debaf3a22afb36" -> "sha256:eb05d1f9838cddb7397c0a567cc63a7c813fb1d58beee4f47d5ee59db90f85d3" [label=""];
  "sha256:eb05d1f9838cddb7397c0a567cc63a7c813fb1d58beee4f47d5ee59db90f85d3" -> "sha256:f23beef904c3fac58f7278c11e4d2aa76f53990257808370049e1b1c5c2a6204" [label=""];
}

