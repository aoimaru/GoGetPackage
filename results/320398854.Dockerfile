[app/sources/320398854.Dockerfile]
digraph {
  "sha256:bee2785a9d8f0bcb9ca23ce69395a268d6402c4a287009ebd81644cb949d0a10" [label="docker-image://docker.io/library/nginx:1.15" shape="ellipse"];
  "sha256:328872dc7b776e0b69b2a4f177fb2f66028d962e19761d57d0f3e4ca0eb7b13d" [label="docker-image://docker.io/library/node:10.5" shape="ellipse"];
  "sha256:2a91007ac94da412d790c734bfac4abbfd46f41642355b64fc8b9f7b05dc9e90" [label="/bin/sh -c apt-get update && apt-get install -yq libgconf-2-4" shape="box"];
  "sha256:44081c173ec981bf018b5165de5ecb3ff5e0c060090168e2748c6a5ad0cfe439" [label="/bin/sh -c apt-get update && apt-get install -y wget --no-install-recommends     && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -     && sh -c 'echo \"deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main\" >> /etc/apt/sources.list.d/google.list'     && apt-get update     && apt-get install -y google-chrome-unstable fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst ttf-freefont       --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && apt-get purge --auto-remove -y curl     && rm -rf /src/*.deb" shape="box"];
  "sha256:795178265447244f58526e5af32c8b6cf58dba79b60c0f313808170a87419070" [label="mkdir{path=/app}" shape="note"];
  "sha256:801a2ac003b6d7c7c540154ced7304c11f43aecc66f8ea69bfd394e93e95b0fd" [label="local://context" shape="ellipse"];
  "sha256:8165f8e08e20d86d5b5253a0631c42e39306069e7636311c91f4a530a159c62b" [label="copy{src=/package*.json, dest=/app/}" shape="note"];
  "sha256:74f06769c5983a3b163f2b803d7fb44168db8c2a1c7b1b5f9b1898b327a01698" [label="/bin/sh -c npm install" shape="box"];
  "sha256:f9fc8925a6a5c784bf7e04ba31c82ff6403114786c2ca781ea6879fbecf88eec" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:0ec6711d71614a0e3e2a87c1c1c90d0db0e1aabd7df6d9ce09c302b1a5e411a2" [label="/bin/sh -c npm run test -- --browsers ChromeHeadlessNoSandbox --watch=false" shape="box"];
  "sha256:0494b0915079fa460e0e9685d39060fc4cdd6a0052d96ba71e08df84e568073d" [label="/bin/sh -c npm run build -- --output-path=./dist/out --configuration $configuration" shape="box"];
  "sha256:8d66b4afe2c1b060ad66d2fbbafbfaee0d31d961c0d5ceef71f7ff9493ea3409" [label="copy{src=/app/dist/out, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:b56a5b7d15450c2a06f47c638c563cd6b82d757809754485fed24cc3b4faab42" [label="copy{src=/nginx-custom.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:0e3f6575f6db5a78f3c448be4a5cdae6353493efd281604d542bd3a3bc1781b7" [label="sha256:0e3f6575f6db5a78f3c448be4a5cdae6353493efd281604d542bd3a3bc1781b7" shape="plaintext"];
  "sha256:328872dc7b776e0b69b2a4f177fb2f66028d962e19761d57d0f3e4ca0eb7b13d" -> "sha256:2a91007ac94da412d790c734bfac4abbfd46f41642355b64fc8b9f7b05dc9e90" [label=""];
  "sha256:2a91007ac94da412d790c734bfac4abbfd46f41642355b64fc8b9f7b05dc9e90" -> "sha256:44081c173ec981bf018b5165de5ecb3ff5e0c060090168e2748c6a5ad0cfe439" [label=""];
  "sha256:44081c173ec981bf018b5165de5ecb3ff5e0c060090168e2748c6a5ad0cfe439" -> "sha256:795178265447244f58526e5af32c8b6cf58dba79b60c0f313808170a87419070" [label=""];
  "sha256:795178265447244f58526e5af32c8b6cf58dba79b60c0f313808170a87419070" -> "sha256:8165f8e08e20d86d5b5253a0631c42e39306069e7636311c91f4a530a159c62b" [label=""];
  "sha256:801a2ac003b6d7c7c540154ced7304c11f43aecc66f8ea69bfd394e93e95b0fd" -> "sha256:8165f8e08e20d86d5b5253a0631c42e39306069e7636311c91f4a530a159c62b" [label=""];
  "sha256:8165f8e08e20d86d5b5253a0631c42e39306069e7636311c91f4a530a159c62b" -> "sha256:74f06769c5983a3b163f2b803d7fb44168db8c2a1c7b1b5f9b1898b327a01698" [label=""];
  "sha256:74f06769c5983a3b163f2b803d7fb44168db8c2a1c7b1b5f9b1898b327a01698" -> "sha256:f9fc8925a6a5c784bf7e04ba31c82ff6403114786c2ca781ea6879fbecf88eec" [label=""];
  "sha256:801a2ac003b6d7c7c540154ced7304c11f43aecc66f8ea69bfd394e93e95b0fd" -> "sha256:f9fc8925a6a5c784bf7e04ba31c82ff6403114786c2ca781ea6879fbecf88eec" [label=""];
  "sha256:f9fc8925a6a5c784bf7e04ba31c82ff6403114786c2ca781ea6879fbecf88eec" -> "sha256:0ec6711d71614a0e3e2a87c1c1c90d0db0e1aabd7df6d9ce09c302b1a5e411a2" [label=""];
  "sha256:0ec6711d71614a0e3e2a87c1c1c90d0db0e1aabd7df6d9ce09c302b1a5e411a2" -> "sha256:0494b0915079fa460e0e9685d39060fc4cdd6a0052d96ba71e08df84e568073d" [label=""];
  "sha256:bee2785a9d8f0bcb9ca23ce69395a268d6402c4a287009ebd81644cb949d0a10" -> "sha256:8d66b4afe2c1b060ad66d2fbbafbfaee0d31d961c0d5ceef71f7ff9493ea3409" [label=""];
  "sha256:0494b0915079fa460e0e9685d39060fc4cdd6a0052d96ba71e08df84e568073d" -> "sha256:8d66b4afe2c1b060ad66d2fbbafbfaee0d31d961c0d5ceef71f7ff9493ea3409" [label=""];
  "sha256:8d66b4afe2c1b060ad66d2fbbafbfaee0d31d961c0d5ceef71f7ff9493ea3409" -> "sha256:b56a5b7d15450c2a06f47c638c563cd6b82d757809754485fed24cc3b4faab42" [label=""];
  "sha256:801a2ac003b6d7c7c540154ced7304c11f43aecc66f8ea69bfd394e93e95b0fd" -> "sha256:b56a5b7d15450c2a06f47c638c563cd6b82d757809754485fed24cc3b4faab42" [label=""];
  "sha256:b56a5b7d15450c2a06f47c638c563cd6b82d757809754485fed24cc3b4faab42" -> "sha256:0e3f6575f6db5a78f3c448be4a5cdae6353493efd281604d542bd3a3bc1781b7" [label=""];
}

