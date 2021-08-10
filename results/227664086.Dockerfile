[app/sources/227664086.Dockerfile]
digraph {
  "sha256:b4999aafd4d79b787af7f908c1051f0ced6f123b686c3cf76150a0177693c507" [label="docker-image://quay.io/centerforopenscience/ember-base@sha256:805ac2ddabda5d5170dd1ef17c33ef9870e01e6c8895a100ec7fbc7967e196cd" shape="ellipse"];
  "sha256:361c67d124f5b3b563de06e8b0fdf342c9b4ab2ff863a658322dc71b50390772" [label="local://context" shape="ellipse"];
  "sha256:b1eb1257b730a50ea43c52e7b5de037c8085c8a88dc7f45ad3274c045a65bf2d" [label="copy{src=/package.json, dest=/code/},copy{src=/yarn.lock, dest=/code/},copy{src=/.yarnrc, dest=/code/}" shape="note"];
  "sha256:d0356e3e67b34cd3a86b8e0337aa7c79492201e4923c47f7d863fac75c6377c2" [label="/bin/sh -c yarn --frozen-lockfile" shape="box"];
  "sha256:c0886fc55225725a958daef994332da682e50ef2a3c9cc494e68e0f4b68c9244" [label="copy{src=/.bowerrc, dest=/code/},copy{src=/bower.json, dest=/code/}" shape="note"];
  "sha256:ca36e380c571e1769300c6e2bb8bee42be7ee7a263f3684307191c603ddc0507" [label="/bin/sh -c ./node_modules/.bin/bower install --allow-root --config.interactive=false" shape="box"];
  "sha256:d312d9d19d7ef1e7affaa14b7dc65d8d33670ff97ff546acf49857ee17201f0b" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:3ca87e8714fd9dee9ac3c59ff12b012d98918fae376cb2e4e10fbe63dcb44b70" [label="/bin/sh -c cd ./public/assets/     && git clone https://github.com/CenterForOpenScience/osf-assets.git" shape="box"];
  "sha256:9691052dbe59901f562b9ce9bdf52388b4d0471025adb3147722cf85f8da6ba5" [label="/bin/sh -c yarn build --environment=production" shape="box"];
  "sha256:33ef43f106325be1317308f6edbe3a757cbe079d434027a4d922f6583c6744fd" [label="sha256:33ef43f106325be1317308f6edbe3a757cbe079d434027a4d922f6583c6744fd" shape="plaintext"];
  "sha256:b4999aafd4d79b787af7f908c1051f0ced6f123b686c3cf76150a0177693c507" -> "sha256:b1eb1257b730a50ea43c52e7b5de037c8085c8a88dc7f45ad3274c045a65bf2d" [label=""];
  "sha256:361c67d124f5b3b563de06e8b0fdf342c9b4ab2ff863a658322dc71b50390772" -> "sha256:b1eb1257b730a50ea43c52e7b5de037c8085c8a88dc7f45ad3274c045a65bf2d" [label=""];
  "sha256:b1eb1257b730a50ea43c52e7b5de037c8085c8a88dc7f45ad3274c045a65bf2d" -> "sha256:d0356e3e67b34cd3a86b8e0337aa7c79492201e4923c47f7d863fac75c6377c2" [label=""];
  "sha256:d0356e3e67b34cd3a86b8e0337aa7c79492201e4923c47f7d863fac75c6377c2" -> "sha256:c0886fc55225725a958daef994332da682e50ef2a3c9cc494e68e0f4b68c9244" [label=""];
  "sha256:361c67d124f5b3b563de06e8b0fdf342c9b4ab2ff863a658322dc71b50390772" -> "sha256:c0886fc55225725a958daef994332da682e50ef2a3c9cc494e68e0f4b68c9244" [label=""];
  "sha256:c0886fc55225725a958daef994332da682e50ef2a3c9cc494e68e0f4b68c9244" -> "sha256:ca36e380c571e1769300c6e2bb8bee42be7ee7a263f3684307191c603ddc0507" [label=""];
  "sha256:ca36e380c571e1769300c6e2bb8bee42be7ee7a263f3684307191c603ddc0507" -> "sha256:d312d9d19d7ef1e7affaa14b7dc65d8d33670ff97ff546acf49857ee17201f0b" [label=""];
  "sha256:361c67d124f5b3b563de06e8b0fdf342c9b4ab2ff863a658322dc71b50390772" -> "sha256:d312d9d19d7ef1e7affaa14b7dc65d8d33670ff97ff546acf49857ee17201f0b" [label=""];
  "sha256:d312d9d19d7ef1e7affaa14b7dc65d8d33670ff97ff546acf49857ee17201f0b" -> "sha256:3ca87e8714fd9dee9ac3c59ff12b012d98918fae376cb2e4e10fbe63dcb44b70" [label=""];
  "sha256:3ca87e8714fd9dee9ac3c59ff12b012d98918fae376cb2e4e10fbe63dcb44b70" -> "sha256:9691052dbe59901f562b9ce9bdf52388b4d0471025adb3147722cf85f8da6ba5" [label=""];
  "sha256:9691052dbe59901f562b9ce9bdf52388b4d0471025adb3147722cf85f8da6ba5" -> "sha256:33ef43f106325be1317308f6edbe3a757cbe079d434027a4d922f6583c6744fd" [label=""];
}

