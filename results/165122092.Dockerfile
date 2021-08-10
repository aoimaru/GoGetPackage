[app/sources/165122092.Dockerfile]
digraph {
  "sha256:262b88e921c30e125b76be94a586bf61b598e501c63cbfecddda66c07467425c" [label="https://secure.logmein.com/labs/logmein-hamachi-2.1.0.119-x64.tgz" shape="ellipse"];
  "sha256:ea626bb0362d825c86568dbca19b4543631bd662d1031805423bde0b6872412c" [label="local://context" shape="ellipse"];
  "sha256:9b86c11684043adc728416688253d80f12dcad3138d2fab7e636fb9d2c4abf74" [label="docker-image://docker.io/phusion/baseimage:0.9.11@sha256:2acbf40d4d77b1f6c534d405e776108cf328d1c5fe490c49b1372c6c6f506c15" shape="ellipse"];
  "sha256:1da943177d65089eebc81ec91222d08aef88c1cd9f53bc07f8fb8fb24a1fe1c4" [label="copy{src=/sources.list, dest=/etc/apt/sources.list}" shape="note"];
  "sha256:7fb253a14f7192e833711a576dd4f8171baccbdd770df7ab8be12edcf10c4683" [label="/bin/sh -c usermod -u 99 nobody &&     usermod -g 100 nobody" shape="box"];
  "sha256:dbc6cea0bc861df0680b4fe23e9def10c0afcbfd6f895839d291336386e4e0ea" [label="/bin/sh -c apt-get update -q" shape="box"];
  "sha256:bc21f9e459489b9f7fad8080b6f44a9b3a461d5283822322c2e630d06fed46bf" [label="copy{src=/logmein-hamachi-2.1.0.119-x64.tgz, dest=/tmp/hamachi.tgz}" shape="note"];
  "sha256:7e21a8559e28c7934d3cf04cec51cf297a1e02ba3824880eddc2d43f5fe4daab" [label="/bin/sh -c mkdir -p /opt/logmein-hamachi" shape="box"];
  "sha256:fb37d71395ec0bd2f6450f9e128f9ad2bde38b2bcf0afaef1de8658b978b77a2" [label="/bin/sh -c tar -zxf /tmp/hamachi.tgz --strip-components 1 -C /opt/logmein-hamachi" shape="box"];
  "sha256:9f692d297354e586dc39f22e797df619d7ecfd3a2ca756cf85d8e0c26b992ae8" [label="/bin/sh -c ln -sf /opt/logmein-hamachi/hamachid /usr/bin/hamachi" shape="box"];
  "sha256:42e9a7c4dc2120d13e7bd30d6a823d7415cc071b5ddf199b03f0bc5ea0028b34" [label="/bin/sh -c rm /tmp/hamachi.tgz" shape="box"];
  "sha256:16a008f38dd5dc126cc030fbe9a6adea24dcd460d942cefe9c5ab7d048f5e81c" [label="/bin/sh -c mkdir -p /etc/my_init.d" shape="box"];
  "sha256:06c7caf4e9d5fdeb160b7355a60bf3c5e9f80510ec23f142753112ecf0d1ded0" [label="copy{src=/install.sh, dest=/etc/my_init.d/install.sh}" shape="note"];
  "sha256:4caeab7438f7149df37c8846f2f8d00947d5d123211256444d2b647ea3ccc0b0" [label="/bin/sh -c chmod +x /etc/my_init.d/install.sh" shape="box"];
  "sha256:94a440614b365e108af2e5b0e585581a265cd1ddf398ad37369bffba71c49992" [label="/bin/sh -c mkdir /etc/service/hamachi" shape="box"];
  "sha256:bb68d17ca472eca19b7dc33b96b7b1a01d46c728bbc725cca7cc5409a0e5d985" [label="copy{src=/hamachi.sh, dest=/etc/service/hamachi/run}" shape="note"];
  "sha256:e988e3c1743b78d1268ce1d355a505e68cc4731b93b54a071624c7bd77efd4fb" [label="/bin/sh -c chmod +x /etc/service/hamachi/run" shape="box"];
  "sha256:971ab64084a1f32bb646a3708904ab62fc35e55c56ee5ff49b4e70fc6805f050" [label="sha256:971ab64084a1f32bb646a3708904ab62fc35e55c56ee5ff49b4e70fc6805f050" shape="plaintext"];
  "sha256:9b86c11684043adc728416688253d80f12dcad3138d2fab7e636fb9d2c4abf74" -> "sha256:1da943177d65089eebc81ec91222d08aef88c1cd9f53bc07f8fb8fb24a1fe1c4" [label=""];
  "sha256:ea626bb0362d825c86568dbca19b4543631bd662d1031805423bde0b6872412c" -> "sha256:1da943177d65089eebc81ec91222d08aef88c1cd9f53bc07f8fb8fb24a1fe1c4" [label=""];
  "sha256:1da943177d65089eebc81ec91222d08aef88c1cd9f53bc07f8fb8fb24a1fe1c4" -> "sha256:7fb253a14f7192e833711a576dd4f8171baccbdd770df7ab8be12edcf10c4683" [label=""];
  "sha256:7fb253a14f7192e833711a576dd4f8171baccbdd770df7ab8be12edcf10c4683" -> "sha256:dbc6cea0bc861df0680b4fe23e9def10c0afcbfd6f895839d291336386e4e0ea" [label=""];
  "sha256:dbc6cea0bc861df0680b4fe23e9def10c0afcbfd6f895839d291336386e4e0ea" -> "sha256:bc21f9e459489b9f7fad8080b6f44a9b3a461d5283822322c2e630d06fed46bf" [label=""];
  "sha256:262b88e921c30e125b76be94a586bf61b598e501c63cbfecddda66c07467425c" -> "sha256:bc21f9e459489b9f7fad8080b6f44a9b3a461d5283822322c2e630d06fed46bf" [label=""];
  "sha256:bc21f9e459489b9f7fad8080b6f44a9b3a461d5283822322c2e630d06fed46bf" -> "sha256:7e21a8559e28c7934d3cf04cec51cf297a1e02ba3824880eddc2d43f5fe4daab" [label=""];
  "sha256:7e21a8559e28c7934d3cf04cec51cf297a1e02ba3824880eddc2d43f5fe4daab" -> "sha256:fb37d71395ec0bd2f6450f9e128f9ad2bde38b2bcf0afaef1de8658b978b77a2" [label=""];
  "sha256:fb37d71395ec0bd2f6450f9e128f9ad2bde38b2bcf0afaef1de8658b978b77a2" -> "sha256:9f692d297354e586dc39f22e797df619d7ecfd3a2ca756cf85d8e0c26b992ae8" [label=""];
  "sha256:9f692d297354e586dc39f22e797df619d7ecfd3a2ca756cf85d8e0c26b992ae8" -> "sha256:42e9a7c4dc2120d13e7bd30d6a823d7415cc071b5ddf199b03f0bc5ea0028b34" [label=""];
  "sha256:42e9a7c4dc2120d13e7bd30d6a823d7415cc071b5ddf199b03f0bc5ea0028b34" -> "sha256:16a008f38dd5dc126cc030fbe9a6adea24dcd460d942cefe9c5ab7d048f5e81c" [label=""];
  "sha256:16a008f38dd5dc126cc030fbe9a6adea24dcd460d942cefe9c5ab7d048f5e81c" -> "sha256:06c7caf4e9d5fdeb160b7355a60bf3c5e9f80510ec23f142753112ecf0d1ded0" [label=""];
  "sha256:ea626bb0362d825c86568dbca19b4543631bd662d1031805423bde0b6872412c" -> "sha256:06c7caf4e9d5fdeb160b7355a60bf3c5e9f80510ec23f142753112ecf0d1ded0" [label=""];
  "sha256:06c7caf4e9d5fdeb160b7355a60bf3c5e9f80510ec23f142753112ecf0d1ded0" -> "sha256:4caeab7438f7149df37c8846f2f8d00947d5d123211256444d2b647ea3ccc0b0" [label=""];
  "sha256:4caeab7438f7149df37c8846f2f8d00947d5d123211256444d2b647ea3ccc0b0" -> "sha256:94a440614b365e108af2e5b0e585581a265cd1ddf398ad37369bffba71c49992" [label=""];
  "sha256:94a440614b365e108af2e5b0e585581a265cd1ddf398ad37369bffba71c49992" -> "sha256:bb68d17ca472eca19b7dc33b96b7b1a01d46c728bbc725cca7cc5409a0e5d985" [label=""];
  "sha256:ea626bb0362d825c86568dbca19b4543631bd662d1031805423bde0b6872412c" -> "sha256:bb68d17ca472eca19b7dc33b96b7b1a01d46c728bbc725cca7cc5409a0e5d985" [label=""];
  "sha256:bb68d17ca472eca19b7dc33b96b7b1a01d46c728bbc725cca7cc5409a0e5d985" -> "sha256:e988e3c1743b78d1268ce1d355a505e68cc4731b93b54a071624c7bd77efd4fb" [label=""];
  "sha256:e988e3c1743b78d1268ce1d355a505e68cc4731b93b54a071624c7bd77efd4fb" -> "sha256:971ab64084a1f32bb646a3708904ab62fc35e55c56ee5ff49b4e70fc6805f050" [label=""];
}

