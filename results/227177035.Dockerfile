[app/sources/227177035.Dockerfile]
digraph {
  "sha256:c9fc474f8c506b22772b4f6193955e1285436720442493066c56f67907d947ed" [label="local://context" shape="ellipse"];
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" [label="docker-image://quay.io/prometheus/busybox:latest@sha256:a56e11cce1c09f50a71290d65733ebe976adc8654395091d5379c7f294cc891e" shape="ellipse"];
  "sha256:57f74c4082416df85a1f790d77ae5bb9b607b2339cdba24b217397b2a5eba821" [label="copy{src=/prometheus, dest=/bin/prometheus}" shape="note"];
  "sha256:dfad8fbc957d452677154dc71235220d094b8f90304287bc4415e644c7a243d8" [label="copy{src=/promtool, dest=/bin/promtool}" shape="note"];
  "sha256:2b9e5e43ce2d535638d87c50148464a78aecf922acd33766a95f02c30342f4d3" [label="copy{src=/documentation/examples/prometheus.yml, dest=/etc/prometheus/prometheus.yml}" shape="note"];
  "sha256:2a1432e7b4376e354950f2fb2b456d5262e36bf9f9669220876507b77be164c3" [label="copy{src=/console_libraries, dest=/usr/share/prometheus/console_libraries/}" shape="note"];
  "sha256:e20bc320b50cb8cd179cff758ce7f15b0e5dda2bfe5529b2f033b5f8742b09a7" [label="copy{src=/consoles, dest=/usr/share/prometheus/consoles/}" shape="note"];
  "sha256:387dac4e52c3bd4c1b95127b9194a76996fba178893943213c35e097e5d4e89b" [label="/bin/sh -c ln -s /usr/share/prometheus/console_libraries /usr/share/prometheus/consoles/ /etc/prometheus/" shape="box"];
  "sha256:4bdaab3565bb4fc7969ceb42c774fa7c2f18acfacf7f4648fc22524258240d0a" [label="mkdir{path=/prometheus}" shape="note"];
  "sha256:c13dcd9e65fb0e78d2282cae86289af9efa72f1d7fee3719dd36bedd7eefad42" [label="sha256:c13dcd9e65fb0e78d2282cae86289af9efa72f1d7fee3719dd36bedd7eefad42" shape="plaintext"];
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" -> "sha256:57f74c4082416df85a1f790d77ae5bb9b607b2339cdba24b217397b2a5eba821" [label=""];
  "sha256:c9fc474f8c506b22772b4f6193955e1285436720442493066c56f67907d947ed" -> "sha256:57f74c4082416df85a1f790d77ae5bb9b607b2339cdba24b217397b2a5eba821" [label=""];
  "sha256:57f74c4082416df85a1f790d77ae5bb9b607b2339cdba24b217397b2a5eba821" -> "sha256:dfad8fbc957d452677154dc71235220d094b8f90304287bc4415e644c7a243d8" [label=""];
  "sha256:c9fc474f8c506b22772b4f6193955e1285436720442493066c56f67907d947ed" -> "sha256:dfad8fbc957d452677154dc71235220d094b8f90304287bc4415e644c7a243d8" [label=""];
  "sha256:dfad8fbc957d452677154dc71235220d094b8f90304287bc4415e644c7a243d8" -> "sha256:2b9e5e43ce2d535638d87c50148464a78aecf922acd33766a95f02c30342f4d3" [label=""];
  "sha256:c9fc474f8c506b22772b4f6193955e1285436720442493066c56f67907d947ed" -> "sha256:2b9e5e43ce2d535638d87c50148464a78aecf922acd33766a95f02c30342f4d3" [label=""];
  "sha256:2b9e5e43ce2d535638d87c50148464a78aecf922acd33766a95f02c30342f4d3" -> "sha256:2a1432e7b4376e354950f2fb2b456d5262e36bf9f9669220876507b77be164c3" [label=""];
  "sha256:c9fc474f8c506b22772b4f6193955e1285436720442493066c56f67907d947ed" -> "sha256:2a1432e7b4376e354950f2fb2b456d5262e36bf9f9669220876507b77be164c3" [label=""];
  "sha256:2a1432e7b4376e354950f2fb2b456d5262e36bf9f9669220876507b77be164c3" -> "sha256:e20bc320b50cb8cd179cff758ce7f15b0e5dda2bfe5529b2f033b5f8742b09a7" [label=""];
  "sha256:c9fc474f8c506b22772b4f6193955e1285436720442493066c56f67907d947ed" -> "sha256:e20bc320b50cb8cd179cff758ce7f15b0e5dda2bfe5529b2f033b5f8742b09a7" [label=""];
  "sha256:e20bc320b50cb8cd179cff758ce7f15b0e5dda2bfe5529b2f033b5f8742b09a7" -> "sha256:387dac4e52c3bd4c1b95127b9194a76996fba178893943213c35e097e5d4e89b" [label=""];
  "sha256:387dac4e52c3bd4c1b95127b9194a76996fba178893943213c35e097e5d4e89b" -> "sha256:4bdaab3565bb4fc7969ceb42c774fa7c2f18acfacf7f4648fc22524258240d0a" [label=""];
  "sha256:4bdaab3565bb4fc7969ceb42c774fa7c2f18acfacf7f4648fc22524258240d0a" -> "sha256:c13dcd9e65fb0e78d2282cae86289af9efa72f1d7fee3719dd36bedd7eefad42" [label=""];
}

