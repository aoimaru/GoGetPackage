[app/sources/146000342.Dockerfile]
digraph {
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" [label="docker-image://docker.io/library/golang:1.11-alpine" shape="ellipse"];
  "sha256:9eb6263c4c2eb66d2c56ea974b105b12968cc3f4ee16079d7816e020728e65eb" [label="/bin/sh -c apk add --no-cache \talpine-sdk \tautoconf \tautomake \tlibtool \tp11-kit-dev \topenssl-dev \tcppunit-dev \tgcc \tg++ \tmusl-dev \tgit \tmake \t&& adduser -G abuild -g \"Alpine Package Builder\" -D builder \t&& echo \"builder ALL=(ALL) NOPASSWD:ALL\" >> /etc/sudoers \t&& mkdir /packages \t&& chown builder:abuild /packages" shape="box"];
  "sha256:c11dfef67a2496e7bb5317cea88c5d10ca75941f5f118df5f311f021992c1729" [label="/bin/sh -c abuild-keygen -a -i -n" shape="box"];
  "sha256:341ad39396a170c937555b9f9cd745346e3ae8b028e53e6292f2fa0e7c212d74" [label="local://context" shape="ellipse"];
  "sha256:0c7d464e4bfcdb491d117558961690fea3a25e10372c461d2f3dccce1bd81a71" [label="copy{src=/images/testenv/softhsm, dest=/tmp/softhsm}" shape="note"];
  "sha256:c6f51dc7c0962f4b36eb3159bd1e110d04e14001da68c0751f4111c6cb9fc295" [label="/bin/sh -c sudo chown builder /tmp/softhsm \t&& cd /tmp/softhsm \t&& git init \t&& git config user.email \"builder@builder.com\" \t&& git commit --allow-empty --allow-empty-message --no-edit \t&& abuild -r" shape="box"];
  "sha256:0ff4d385426d020c242fea585d275b254f3282fef95e34b4994b70482d164d45" [label="copy{src=/, dest=/src/github.com/hyperledger/fabric}" shape="note"];
  "sha256:f3f39b54812aa2a9b9aba99fbea95626a8d2255406e0e8c593414ffa88a5a603" [label="mkdir{path=/src/github.com/hyperledger/fabric}" shape="note"];
  "sha256:bc2e08090ed9c8e808372f0cf0eb1e47dd544e44bd524fb7371972fd422f6140" [label="/bin/sh -c EXECUTABLES= make gotools" shape="box"];
  "sha256:25e169887c1942914b7b938b211dd80a434e78696b90bb299d242f71f2a3509c" [label="/bin/sh -c apk add --no-cache \tgcc \tbash \tmusl-dev \tlibtool \tgit;" shape="box"];
  "sha256:5c95e1ae665981edfcbccfb5d42bcc0a79488d5e7321a780e91ce7da4caf0486" [label="copy{src=/home/builder/packages/tmp/x86_64/softhsm-2.2.0-r1.apk, dest=/tmp}" shape="note"];
  "sha256:aab200b309a4115ddbb587b93583298ff59bb9b8f1914fcd0ae60b1104919433" [label="/bin/sh -c apk add --allow-untrusted /tmp/softhsm-2.2.0-r1.apk \t&& softhsm2-util --init-token --slot 0 --label \"ForFabric\" \t--so-pin 1234 --pin 98765432" shape="box"];
  "sha256:6d28b4e37acc691399237ec8e296c1a3a4065a4893c2103fe5ace7fbf6a0dac4" [label="copy{src=/bin, dest=/usr/local/bin}" shape="note"];
  "sha256:7950911dc2eb8a019140f2aa20b9320ae35300bf12c44185431e694502ffc757" [label="mkdir{path=/src/github.com/hyperledger/fabric}" shape="note"];
  "sha256:73555aae6d6b056e664352e49fc2208a68b9f1fb10bdcbe0b7420bcb0eb7fe1f" [label="sha256:73555aae6d6b056e664352e49fc2208a68b9f1fb10bdcbe0b7420bcb0eb7fe1f" shape="plaintext"];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" -> "sha256:9eb6263c4c2eb66d2c56ea974b105b12968cc3f4ee16079d7816e020728e65eb" [label=""];
  "sha256:9eb6263c4c2eb66d2c56ea974b105b12968cc3f4ee16079d7816e020728e65eb" -> "sha256:c11dfef67a2496e7bb5317cea88c5d10ca75941f5f118df5f311f021992c1729" [label=""];
  "sha256:c11dfef67a2496e7bb5317cea88c5d10ca75941f5f118df5f311f021992c1729" -> "sha256:0c7d464e4bfcdb491d117558961690fea3a25e10372c461d2f3dccce1bd81a71" [label=""];
  "sha256:341ad39396a170c937555b9f9cd745346e3ae8b028e53e6292f2fa0e7c212d74" -> "sha256:0c7d464e4bfcdb491d117558961690fea3a25e10372c461d2f3dccce1bd81a71" [label=""];
  "sha256:0c7d464e4bfcdb491d117558961690fea3a25e10372c461d2f3dccce1bd81a71" -> "sha256:c6f51dc7c0962f4b36eb3159bd1e110d04e14001da68c0751f4111c6cb9fc295" [label=""];
  "sha256:c6f51dc7c0962f4b36eb3159bd1e110d04e14001da68c0751f4111c6cb9fc295" -> "sha256:0ff4d385426d020c242fea585d275b254f3282fef95e34b4994b70482d164d45" [label=""];
  "sha256:341ad39396a170c937555b9f9cd745346e3ae8b028e53e6292f2fa0e7c212d74" -> "sha256:0ff4d385426d020c242fea585d275b254f3282fef95e34b4994b70482d164d45" [label=""];
  "sha256:0ff4d385426d020c242fea585d275b254f3282fef95e34b4994b70482d164d45" -> "sha256:f3f39b54812aa2a9b9aba99fbea95626a8d2255406e0e8c593414ffa88a5a603" [label=""];
  "sha256:f3f39b54812aa2a9b9aba99fbea95626a8d2255406e0e8c593414ffa88a5a603" -> "sha256:bc2e08090ed9c8e808372f0cf0eb1e47dd544e44bd524fb7371972fd422f6140" [label=""];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" -> "sha256:25e169887c1942914b7b938b211dd80a434e78696b90bb299d242f71f2a3509c" [label=""];
  "sha256:25e169887c1942914b7b938b211dd80a434e78696b90bb299d242f71f2a3509c" -> "sha256:5c95e1ae665981edfcbccfb5d42bcc0a79488d5e7321a780e91ce7da4caf0486" [label=""];
  "sha256:bc2e08090ed9c8e808372f0cf0eb1e47dd544e44bd524fb7371972fd422f6140" -> "sha256:5c95e1ae665981edfcbccfb5d42bcc0a79488d5e7321a780e91ce7da4caf0486" [label=""];
  "sha256:5c95e1ae665981edfcbccfb5d42bcc0a79488d5e7321a780e91ce7da4caf0486" -> "sha256:aab200b309a4115ddbb587b93583298ff59bb9b8f1914fcd0ae60b1104919433" [label=""];
  "sha256:aab200b309a4115ddbb587b93583298ff59bb9b8f1914fcd0ae60b1104919433" -> "sha256:6d28b4e37acc691399237ec8e296c1a3a4065a4893c2103fe5ace7fbf6a0dac4" [label=""];
  "sha256:bc2e08090ed9c8e808372f0cf0eb1e47dd544e44bd524fb7371972fd422f6140" -> "sha256:6d28b4e37acc691399237ec8e296c1a3a4065a4893c2103fe5ace7fbf6a0dac4" [label=""];
  "sha256:6d28b4e37acc691399237ec8e296c1a3a4065a4893c2103fe5ace7fbf6a0dac4" -> "sha256:7950911dc2eb8a019140f2aa20b9320ae35300bf12c44185431e694502ffc757" [label=""];
  "sha256:7950911dc2eb8a019140f2aa20b9320ae35300bf12c44185431e694502ffc757" -> "sha256:73555aae6d6b056e664352e49fc2208a68b9f1fb10bdcbe0b7420bcb0eb7fe1f" [label=""];
}

