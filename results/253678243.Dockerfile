[app/sources/253678243.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:ddf607e46c0a9f22922bd046dc4bef5979c3776db0b11abce7e9f345ceef53e3" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:b554a59fae853daee7268a39a53fed3346b17937a72cbf43910979577d0cd518" [label="/bin/sh -c sed -i 's/# \\(.*multiverse$\\)/\\1/g' /etc/apt/sources.list &&   apt-get update &&   apt-get -y upgrade &&   apt-get install -y build-essential libssl-dev &&   apt-get install -y curl git man vim wget" shape="box"];
  "sha256:8f43324c983fc3b7d9e79d0c85dcec24e0e2f0199d1dc3b56097cc5d26792876" [label="/bin/sh -c wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash" shape="box"];
  "sha256:31933a24d1d22ac960039337ca967f415a4a5ecebc6e3cff2b2f72cff8403da9" [label="/bin/sh -c source ~/.nvm/nvm.sh && nvm install 6.10.1 && npm install -g npm && npm install -g typescript" shape="box"];
  "sha256:ff2e2f674b23c19b29b355434be09b17751b1cf35b6140330bec96e2a570939a" [label="/bin/sh -c mkdir -p /srv" shape="box"];
  "sha256:23484388d2d4c1703fff5db2f60f3324642d98ff2fa302cbc6bcc601523a807a" [label="local://context" shape="ellipse"];
  "sha256:eab39a48524d9ba66a9d905dc85deae65feafcd57d2337a064404a412d585e6a" [label="copy{src=/, dest=/srv/billing-invoice}" shape="note"];
  "sha256:6ccaf586b593c1594bc463d52d60f3b058fd21351d42d8a0cf7a0043856a6b62" [label="mkdir{path=/srv/billing-invoice}" shape="note"];
  "sha256:4b6e63992b9a1648bbd07f8346a81f9766de4527f6763efe9408cf218b3e65b0" [label="/bin/sh -c source ~/.nvm/nvm.sh && npm install && tsc -p ." shape="box"];
  "sha256:b701631e1e15f5c95771f0ed9be4690e0e516ae5f01069e5449570fbe74c3349" [label="sha256:b701631e1e15f5c95771f0ed9be4690e0e516ae5f01069e5449570fbe74c3349" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:ddf607e46c0a9f22922bd046dc4bef5979c3776db0b11abce7e9f345ceef53e3" [label=""];
  "sha256:ddf607e46c0a9f22922bd046dc4bef5979c3776db0b11abce7e9f345ceef53e3" -> "sha256:b554a59fae853daee7268a39a53fed3346b17937a72cbf43910979577d0cd518" [label=""];
  "sha256:b554a59fae853daee7268a39a53fed3346b17937a72cbf43910979577d0cd518" -> "sha256:8f43324c983fc3b7d9e79d0c85dcec24e0e2f0199d1dc3b56097cc5d26792876" [label=""];
  "sha256:8f43324c983fc3b7d9e79d0c85dcec24e0e2f0199d1dc3b56097cc5d26792876" -> "sha256:31933a24d1d22ac960039337ca967f415a4a5ecebc6e3cff2b2f72cff8403da9" [label=""];
  "sha256:31933a24d1d22ac960039337ca967f415a4a5ecebc6e3cff2b2f72cff8403da9" -> "sha256:ff2e2f674b23c19b29b355434be09b17751b1cf35b6140330bec96e2a570939a" [label=""];
  "sha256:ff2e2f674b23c19b29b355434be09b17751b1cf35b6140330bec96e2a570939a" -> "sha256:eab39a48524d9ba66a9d905dc85deae65feafcd57d2337a064404a412d585e6a" [label=""];
  "sha256:23484388d2d4c1703fff5db2f60f3324642d98ff2fa302cbc6bcc601523a807a" -> "sha256:eab39a48524d9ba66a9d905dc85deae65feafcd57d2337a064404a412d585e6a" [label=""];
  "sha256:eab39a48524d9ba66a9d905dc85deae65feafcd57d2337a064404a412d585e6a" -> "sha256:6ccaf586b593c1594bc463d52d60f3b058fd21351d42d8a0cf7a0043856a6b62" [label=""];
  "sha256:6ccaf586b593c1594bc463d52d60f3b058fd21351d42d8a0cf7a0043856a6b62" -> "sha256:4b6e63992b9a1648bbd07f8346a81f9766de4527f6763efe9408cf218b3e65b0" [label=""];
  "sha256:4b6e63992b9a1648bbd07f8346a81f9766de4527f6763efe9408cf218b3e65b0" -> "sha256:b701631e1e15f5c95771f0ed9be4690e0e516ae5f01069e5449570fbe74c3349" [label=""];
}

