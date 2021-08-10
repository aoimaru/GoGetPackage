[app/sources/252778944.Dockerfile]
digraph {
  "sha256:c7e85509b98c766efdf7a63e444d4996c754f166cda3d7e6f14fc405ba17c4ad" [label="docker-image://docker.io/library/node:7.10-alpine" shape="ellipse"];
  "sha256:9cc81fceec48eb09b121793695b2e36db9c89404961d5d14adab93e72674804d" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:6a7cd685c7b138ea0258ba09bba9bc4f47e2849f9d056341d6213dde7efaef5f" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:1c2669e167b3df79a6cca2b7a9b1ef11116cb902ebf1e4c9cda9d1c52352b43c" [label="local://context" shape="ellipse"];
  "sha256:3a2995489b6012aceeffc692a00ee26efbf45dd4af30b0aba4c2c125a4ccdb37" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:86f25aec10ccd1f10e2af227901ba66a37a2c7f5c51d7aaaf7c2c8cbb60bfff6" [label="/bin/sh -c npm install" shape="box"];
  "sha256:e60e1320cdab45813f7166268c42a1bde125f9c2c7737d31e6798efd417f0046" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:57d31230fdb129e884c767d58c758cddb6d5c810a97b2ab401c69616a905a8e1" [label="sha256:57d31230fdb129e884c767d58c758cddb6d5c810a97b2ab401c69616a905a8e1" shape="plaintext"];
  "sha256:c7e85509b98c766efdf7a63e444d4996c754f166cda3d7e6f14fc405ba17c4ad" -> "sha256:9cc81fceec48eb09b121793695b2e36db9c89404961d5d14adab93e72674804d" [label=""];
  "sha256:9cc81fceec48eb09b121793695b2e36db9c89404961d5d14adab93e72674804d" -> "sha256:6a7cd685c7b138ea0258ba09bba9bc4f47e2849f9d056341d6213dde7efaef5f" [label=""];
  "sha256:6a7cd685c7b138ea0258ba09bba9bc4f47e2849f9d056341d6213dde7efaef5f" -> "sha256:3a2995489b6012aceeffc692a00ee26efbf45dd4af30b0aba4c2c125a4ccdb37" [label=""];
  "sha256:1c2669e167b3df79a6cca2b7a9b1ef11116cb902ebf1e4c9cda9d1c52352b43c" -> "sha256:3a2995489b6012aceeffc692a00ee26efbf45dd4af30b0aba4c2c125a4ccdb37" [label=""];
  "sha256:3a2995489b6012aceeffc692a00ee26efbf45dd4af30b0aba4c2c125a4ccdb37" -> "sha256:86f25aec10ccd1f10e2af227901ba66a37a2c7f5c51d7aaaf7c2c8cbb60bfff6" [label=""];
  "sha256:86f25aec10ccd1f10e2af227901ba66a37a2c7f5c51d7aaaf7c2c8cbb60bfff6" -> "sha256:e60e1320cdab45813f7166268c42a1bde125f9c2c7737d31e6798efd417f0046" [label=""];
  "sha256:1c2669e167b3df79a6cca2b7a9b1ef11116cb902ebf1e4c9cda9d1c52352b43c" -> "sha256:e60e1320cdab45813f7166268c42a1bde125f9c2c7737d31e6798efd417f0046" [label=""];
  "sha256:e60e1320cdab45813f7166268c42a1bde125f9c2c7737d31e6798efd417f0046" -> "sha256:57d31230fdb129e884c767d58c758cddb6d5c810a97b2ab401c69616a905a8e1" [label=""];
}

