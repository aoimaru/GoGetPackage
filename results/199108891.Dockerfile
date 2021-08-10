[app/sources/199108891.Dockerfile]
digraph {
  "sha256:ce3c2aa7f032f48d143a07d41bd5e32a7bfea26466967a0d1c2eb33a9d9de987" [label="docker-image://gcr.io/google-appengine/debian9@sha256:8fdb64ef397b81b86fc8a6920045fd277e07d1838885a3b68d5b4dab42822a8b" shape="ellipse"];
  "sha256:d450d640952cf38804751c0bff7015c4011d4adaf5f7f8bf4193d3724b3a7cd3" [label="/bin/sh -c apt-get update -y && apt-get install --no-install-recommends -y -q curl python build-essential git ca-certificates libkrb5-dev imagemagick &&     apt-get clean && rm /var/lib/apt/lists/*_*" shape="box"];
  "sha256:699af7070d22b4b6c224a770a489b575dd25037168a60036e19c17751a23f271" [label="/bin/sh -c mkdir /nodejs && curl https://nodejs.org/dist/v6.9.1/node-v6.9.1-linux-x64.tar.gz | tar xvzf - -C /nodejs --strip-components=1" shape="box"];
  "sha256:0ca41f44dd1d53abebfea41be41a4a5a644e7a4e3f3906336cd927aa6d5eca3a" [label="/bin/sh -c mkdir /yarn && curl -L https://github.com/yarnpkg/yarn/releases/download/v0.24.6/yarn-v0.24.6.tar.gz | tar xvzf - -C /yarn --strip-components=1" shape="box"];
  "sha256:2ab64124cd3fa6d6d4903f81a35e1e6134ac7ce126951446804a33b9014f10f4" [label="local://context" shape="ellipse"];
  "sha256:452456f41e7660ef447d4aeecfde64e45d310d82d6e69571b554d5a325365f61" [label="copy{src=/, dest=/hello/}" shape="note"];
  "sha256:b42bec94306369b368477b9fe2b6f7d5d581ee3ae3fd3f619fda838d8e5b8fd2" [label="mkdir{path=/hello}" shape="note"];
  "sha256:756ec2be8e7b48203c4bc7aa698e93522f0b854023c5c8a1e5eb7cce83333f1d" [label="sha256:756ec2be8e7b48203c4bc7aa698e93522f0b854023c5c8a1e5eb7cce83333f1d" shape="plaintext"];
  "sha256:ce3c2aa7f032f48d143a07d41bd5e32a7bfea26466967a0d1c2eb33a9d9de987" -> "sha256:d450d640952cf38804751c0bff7015c4011d4adaf5f7f8bf4193d3724b3a7cd3" [label=""];
  "sha256:d450d640952cf38804751c0bff7015c4011d4adaf5f7f8bf4193d3724b3a7cd3" -> "sha256:699af7070d22b4b6c224a770a489b575dd25037168a60036e19c17751a23f271" [label=""];
  "sha256:699af7070d22b4b6c224a770a489b575dd25037168a60036e19c17751a23f271" -> "sha256:0ca41f44dd1d53abebfea41be41a4a5a644e7a4e3f3906336cd927aa6d5eca3a" [label=""];
  "sha256:0ca41f44dd1d53abebfea41be41a4a5a644e7a4e3f3906336cd927aa6d5eca3a" -> "sha256:452456f41e7660ef447d4aeecfde64e45d310d82d6e69571b554d5a325365f61" [label=""];
  "sha256:2ab64124cd3fa6d6d4903f81a35e1e6134ac7ce126951446804a33b9014f10f4" -> "sha256:452456f41e7660ef447d4aeecfde64e45d310d82d6e69571b554d5a325365f61" [label=""];
  "sha256:452456f41e7660ef447d4aeecfde64e45d310d82d6e69571b554d5a325365f61" -> "sha256:b42bec94306369b368477b9fe2b6f7d5d581ee3ae3fd3f619fda838d8e5b8fd2" [label=""];
  "sha256:b42bec94306369b368477b9fe2b6f7d5d581ee3ae3fd3f619fda838d8e5b8fd2" -> "sha256:756ec2be8e7b48203c4bc7aa698e93522f0b854023c5c8a1e5eb7cce83333f1d" [label=""];
}

