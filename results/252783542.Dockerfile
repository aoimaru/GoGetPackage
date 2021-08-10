[app/sources/252783542.Dockerfile]
digraph {
  "sha256:26c801df3b358f4b0187e28468c764ce217d9d73690e652ff52f92f3ecd2d114" [label="docker-image://docker.io/library/node:8.1.3-alpine" shape="ellipse"];
  "sha256:ec56dc15e564b8e99e1835b9d9fb9f67e6a167eec522fab3465b413a10d2ef09" [label="/bin/sh -c apk update && apk add graphicsmagick" shape="box"];
  "sha256:c30f2c5db556febf0efd94ddc7f74e9ab8fbe0ab7b5e363e7d4dbb05eaebb748" [label="local://context" shape="ellipse"];
  "sha256:bee76300f95f7c64155421d4f652f6215552c71ddaea6f44cb7be1b88164abae" [label="copy{src=/package.json, dest=/muralmalvinas/}" shape="note"];
  "sha256:a555fd310c0bd9596cca3e036b49cf8838fb3ad5c07fca431beb840412ca6d54" [label="mkdir{path=/muralmalvinas}" shape="note"];
  "sha256:8c1c111108c0a108b0ed69d47a0bf7ea839e502eadc544f9f5c71ea1bdb5aef5" [label="/bin/sh -c npm install" shape="box"];
  "sha256:614c335cc121bdfcf098006e2870db74d3bcc230c903c0663f9e60db3ace504a" [label="copy{src=/, dest=/muralmalvinas/}" shape="note"];
  "sha256:9a27e427134d23c86e18b68a1de4350f8680b334bd3c10a5ce0cd704455c2b70" [label="sha256:9a27e427134d23c86e18b68a1de4350f8680b334bd3c10a5ce0cd704455c2b70" shape="plaintext"];
  "sha256:26c801df3b358f4b0187e28468c764ce217d9d73690e652ff52f92f3ecd2d114" -> "sha256:ec56dc15e564b8e99e1835b9d9fb9f67e6a167eec522fab3465b413a10d2ef09" [label=""];
  "sha256:ec56dc15e564b8e99e1835b9d9fb9f67e6a167eec522fab3465b413a10d2ef09" -> "sha256:bee76300f95f7c64155421d4f652f6215552c71ddaea6f44cb7be1b88164abae" [label=""];
  "sha256:c30f2c5db556febf0efd94ddc7f74e9ab8fbe0ab7b5e363e7d4dbb05eaebb748" -> "sha256:bee76300f95f7c64155421d4f652f6215552c71ddaea6f44cb7be1b88164abae" [label=""];
  "sha256:bee76300f95f7c64155421d4f652f6215552c71ddaea6f44cb7be1b88164abae" -> "sha256:a555fd310c0bd9596cca3e036b49cf8838fb3ad5c07fca431beb840412ca6d54" [label=""];
  "sha256:a555fd310c0bd9596cca3e036b49cf8838fb3ad5c07fca431beb840412ca6d54" -> "sha256:8c1c111108c0a108b0ed69d47a0bf7ea839e502eadc544f9f5c71ea1bdb5aef5" [label=""];
  "sha256:8c1c111108c0a108b0ed69d47a0bf7ea839e502eadc544f9f5c71ea1bdb5aef5" -> "sha256:614c335cc121bdfcf098006e2870db74d3bcc230c903c0663f9e60db3ace504a" [label=""];
  "sha256:c30f2c5db556febf0efd94ddc7f74e9ab8fbe0ab7b5e363e7d4dbb05eaebb748" -> "sha256:614c335cc121bdfcf098006e2870db74d3bcc230c903c0663f9e60db3ace504a" [label=""];
  "sha256:614c335cc121bdfcf098006e2870db74d3bcc230c903c0663f9e60db3ace504a" -> "sha256:9a27e427134d23c86e18b68a1de4350f8680b334bd3c10a5ce0cd704455c2b70" [label=""];
}

