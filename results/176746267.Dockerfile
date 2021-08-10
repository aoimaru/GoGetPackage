[app/sources/176746267.Dockerfile]
digraph {
  "sha256:5a34cd530d83ac144b9f614d6e42da53d8d131ee892bf2bf3867f569d9814561" [label="docker-image://quay.io/yldio/paz-base@sha256:d3920463430b09ce6c3df2497758d1f4194734442ab85d2e70a503d665b421e7" shape="ellipse"];
  "sha256:13d8f4e82d7d938d54d6ab81c267e89dbbe49f168fb27643e2580e0a7fdb1865" [label="/bin/sh -c apk --update add bash perl" shape="box"];
  "sha256:5686ca11cfc01e8f4fb6e0e2f36d39d7bb028d3986d8a227030d32cb777a8445" [label="/bin/sh -c npm install -g harp" shape="box"];
  "sha256:f80fdc7bfdc25503018dd93368388094167c22caed8ce056d7b738d9757f22d1" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:9803dd1f98cc5e6f14953d4ac4d9a75a3cf8e21ba450f53a9f9d24b83b411148" [label="local://context" shape="ellipse"];
  "sha256:79c73fb35d9e664e9dadaf8e40df05f57bbacf7e76e709e505b661d12e9ad849" [label="copy{src=/assets, dest=/usr/src/app/assets}" shape="note"];
  "sha256:d71c46928c8fd15ee813291b6e514c1078820edbff21b60a5d1a3236f96caa34" [label="copy{src=/crossdomain.xml, dest=/usr/src/app/crossdomain.xml}" shape="note"];
  "sha256:5a141df028ef17f4d29e3ca01631ecacd942e8b9d5ce54358c72951a0fdbf4eb" [label="copy{src=/index.html, dest=/usr/src/app/index.html}" shape="note"];
  "sha256:700925b58a6062ae647468b834a22c2789e0400955f1aec891245bde95ede1b3" [label="copy{src=/200.jade, dest=/usr/src/app/200.jade}" shape="note"];
  "sha256:4bbfb5495b8755976279b7b92b7c11f88114b329d4eed3a607fd25b2ee692991" [label="copy{src=/robots.txt, dest=/usr/src/app/robots.txt}" shape="note"];
  "sha256:174d6fc80d50677fc38e248cd831e231f5f31e956531c58937c7b8b1523f3fde" [label="copy{src=/run.sh, dest=/usr/src/app/run.sh}" shape="note"];
  "sha256:0620d52fe9aa49742cfbe4e260f00f34dcbed15b384266b494cf2a42772969f7" [label="sha256:0620d52fe9aa49742cfbe4e260f00f34dcbed15b384266b494cf2a42772969f7" shape="plaintext"];
  "sha256:5a34cd530d83ac144b9f614d6e42da53d8d131ee892bf2bf3867f569d9814561" -> "sha256:13d8f4e82d7d938d54d6ab81c267e89dbbe49f168fb27643e2580e0a7fdb1865" [label=""];
  "sha256:13d8f4e82d7d938d54d6ab81c267e89dbbe49f168fb27643e2580e0a7fdb1865" -> "sha256:5686ca11cfc01e8f4fb6e0e2f36d39d7bb028d3986d8a227030d32cb777a8445" [label=""];
  "sha256:5686ca11cfc01e8f4fb6e0e2f36d39d7bb028d3986d8a227030d32cb777a8445" -> "sha256:f80fdc7bfdc25503018dd93368388094167c22caed8ce056d7b738d9757f22d1" [label=""];
  "sha256:f80fdc7bfdc25503018dd93368388094167c22caed8ce056d7b738d9757f22d1" -> "sha256:79c73fb35d9e664e9dadaf8e40df05f57bbacf7e76e709e505b661d12e9ad849" [label=""];
  "sha256:9803dd1f98cc5e6f14953d4ac4d9a75a3cf8e21ba450f53a9f9d24b83b411148" -> "sha256:79c73fb35d9e664e9dadaf8e40df05f57bbacf7e76e709e505b661d12e9ad849" [label=""];
  "sha256:79c73fb35d9e664e9dadaf8e40df05f57bbacf7e76e709e505b661d12e9ad849" -> "sha256:d71c46928c8fd15ee813291b6e514c1078820edbff21b60a5d1a3236f96caa34" [label=""];
  "sha256:9803dd1f98cc5e6f14953d4ac4d9a75a3cf8e21ba450f53a9f9d24b83b411148" -> "sha256:d71c46928c8fd15ee813291b6e514c1078820edbff21b60a5d1a3236f96caa34" [label=""];
  "sha256:d71c46928c8fd15ee813291b6e514c1078820edbff21b60a5d1a3236f96caa34" -> "sha256:5a141df028ef17f4d29e3ca01631ecacd942e8b9d5ce54358c72951a0fdbf4eb" [label=""];
  "sha256:9803dd1f98cc5e6f14953d4ac4d9a75a3cf8e21ba450f53a9f9d24b83b411148" -> "sha256:5a141df028ef17f4d29e3ca01631ecacd942e8b9d5ce54358c72951a0fdbf4eb" [label=""];
  "sha256:5a141df028ef17f4d29e3ca01631ecacd942e8b9d5ce54358c72951a0fdbf4eb" -> "sha256:700925b58a6062ae647468b834a22c2789e0400955f1aec891245bde95ede1b3" [label=""];
  "sha256:9803dd1f98cc5e6f14953d4ac4d9a75a3cf8e21ba450f53a9f9d24b83b411148" -> "sha256:700925b58a6062ae647468b834a22c2789e0400955f1aec891245bde95ede1b3" [label=""];
  "sha256:700925b58a6062ae647468b834a22c2789e0400955f1aec891245bde95ede1b3" -> "sha256:4bbfb5495b8755976279b7b92b7c11f88114b329d4eed3a607fd25b2ee692991" [label=""];
  "sha256:9803dd1f98cc5e6f14953d4ac4d9a75a3cf8e21ba450f53a9f9d24b83b411148" -> "sha256:4bbfb5495b8755976279b7b92b7c11f88114b329d4eed3a607fd25b2ee692991" [label=""];
  "sha256:4bbfb5495b8755976279b7b92b7c11f88114b329d4eed3a607fd25b2ee692991" -> "sha256:174d6fc80d50677fc38e248cd831e231f5f31e956531c58937c7b8b1523f3fde" [label=""];
  "sha256:9803dd1f98cc5e6f14953d4ac4d9a75a3cf8e21ba450f53a9f9d24b83b411148" -> "sha256:174d6fc80d50677fc38e248cd831e231f5f31e956531c58937c7b8b1523f3fde" [label=""];
  "sha256:174d6fc80d50677fc38e248cd831e231f5f31e956531c58937c7b8b1523f3fde" -> "sha256:0620d52fe9aa49742cfbe4e260f00f34dcbed15b384266b494cf2a42772969f7" [label=""];
}

