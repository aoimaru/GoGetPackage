[app/sources/292731179.Dockerfile]
digraph {
  "sha256:2f238bee6cd5f543cb1439b50203a118933d4205db0422d12f128014da68b862" [label="docker-image://quay.io/nuclio/processor:latest-amd64" shape="ellipse"];
  "sha256:131630a1f88c342296f0445c1c14423379847ee0ea138a8c56e2ddef3fa13ace" [label="copy{src=/home/nuclio/bin/processor, dest=/home/nuclio/bin/processor}" shape="note"];
  "sha256:da65d2df3512ab1d0512f28be1eee2864b5f1825c7d2153b7ded13a58c70fd08" [label="local://context" shape="ellipse"];
  "sha256:0b2723d46ee90f496928be53c4b252694194f2f83b0416a5ddaa34bbe5d9b92f" [label="copy{src=/pkg/processor/runtime/nodejs/wrapper.js, dest=/home/nuclio/bin/wrapper.js}" shape="note"];
  "sha256:b1f3c13c58f1bfdeaaaf0296573ac2b275154eccc1e976b759c4efd062fed6c9" [label="sha256:b1f3c13c58f1bfdeaaaf0296573ac2b275154eccc1e976b759c4efd062fed6c9" shape="plaintext"];
  "sha256:2f238bee6cd5f543cb1439b50203a118933d4205db0422d12f128014da68b862" -> "sha256:131630a1f88c342296f0445c1c14423379847ee0ea138a8c56e2ddef3fa13ace" [label=""];
  "sha256:131630a1f88c342296f0445c1c14423379847ee0ea138a8c56e2ddef3fa13ace" -> "sha256:0b2723d46ee90f496928be53c4b252694194f2f83b0416a5ddaa34bbe5d9b92f" [label=""];
  "sha256:da65d2df3512ab1d0512f28be1eee2864b5f1825c7d2153b7ded13a58c70fd08" -> "sha256:0b2723d46ee90f496928be53c4b252694194f2f83b0416a5ddaa34bbe5d9b92f" [label=""];
  "sha256:0b2723d46ee90f496928be53c4b252694194f2f83b0416a5ddaa34bbe5d9b92f" -> "sha256:b1f3c13c58f1bfdeaaaf0296573ac2b275154eccc1e976b759c4efd062fed6c9" [label=""];
}

