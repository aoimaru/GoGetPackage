[app/sources/463830698.Dockerfile]
digraph {
  "sha256:ae342e4bfcd2117027bb2ed8260c246b8f5bdfcd8c88c6537d1721e22d07e8ce" [label="docker-image://docker.io/library/node:10.14.0-stretch" shape="ellipse"];
  "sha256:464c12df58b38a4c1e0ee29fceb461d8a6bfe5740136d3bda27f6019bb33e83b" [label="/bin/sh -c apt-get update --no-install-recommends   && apt-get install -y   python python-pip" shape="box"];
  "sha256:ab113541577ce344d8d1daf895e4282dfff44528c7aa7851bb78628ac458c2ca" [label="/bin/sh -c pip install   awscli==1.15.32   pycrypto==2.6.1   requests==2.18.4" shape="box"];
  "sha256:25c09b7ff910b705790098006af0fd933cb45146fd3895b813b62326417d7e2d" [label="/bin/sh -c npm install -g npm@latest" shape="box"];
  "sha256:04d5b84950db52326e6cc95db975fcf82fcb9683b9f954f033b16dea9f35ef9d" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:4c9ea79971eeab982d4517b283b3f7ca72af4415d5fdfa71456c0f19c92c0564" [label="/bin/sh -c chown node:node -R /app" shape="box"];
  "sha256:95a16e3c77efa42de7295e49c238d27260a0b4c30eec91579029818e91db35f2" [label="local://context" shape="ellipse"];
  "sha256:eff86d0fbcf9c700aa24220cb7083a5eaa6f77320e6240694727401eddab92bb" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:1ea7120e770ca92d3a29e2b1c4142ba6cc45b30e559cbdb3e945ce53f163b064" [label="copy{src=/package-lock.json, dest=/app/}" shape="note"];
  "sha256:12fe9c5405aaa30acfc6c200dfd8ee5ab761539238ef3e9d28c53f2036e79e7e" [label="copy{src=/copy-assets.sh, dest=/app/}" shape="note"];
  "sha256:6d2e4cbedf03bc54a17e383bec2e7ce8454675e7b5efb0fc84a4f85d9be9309e" [label="/bin/sh -c wget -O /app/submitter.py https://raw.githubusercontent.com/cliqz-oss/browser-core/master/fern/submitter.py" shape="box"];
  "sha256:6170139090b909b99774a852e66106a98dac281ced985d8d3790bc36bc30369c" [label="mkdir{path=/app}" shape="note"];
  "sha256:edc9d7caa6d917461c0e6ed22bd94ab474b25c8b736e119a2e27accccbe8750a" [label="/bin/sh -c npm ci" shape="box"];
  "sha256:b996557a6543a4f40ec49014c078fba926240a203da112b9e21d4b4d9e3a9e56" [label="sha256:b996557a6543a4f40ec49014c078fba926240a203da112b9e21d4b4d9e3a9e56" shape="plaintext"];
  "sha256:ae342e4bfcd2117027bb2ed8260c246b8f5bdfcd8c88c6537d1721e22d07e8ce" -> "sha256:464c12df58b38a4c1e0ee29fceb461d8a6bfe5740136d3bda27f6019bb33e83b" [label=""];
  "sha256:464c12df58b38a4c1e0ee29fceb461d8a6bfe5740136d3bda27f6019bb33e83b" -> "sha256:ab113541577ce344d8d1daf895e4282dfff44528c7aa7851bb78628ac458c2ca" [label=""];
  "sha256:ab113541577ce344d8d1daf895e4282dfff44528c7aa7851bb78628ac458c2ca" -> "sha256:25c09b7ff910b705790098006af0fd933cb45146fd3895b813b62326417d7e2d" [label=""];
  "sha256:25c09b7ff910b705790098006af0fd933cb45146fd3895b813b62326417d7e2d" -> "sha256:04d5b84950db52326e6cc95db975fcf82fcb9683b9f954f033b16dea9f35ef9d" [label=""];
  "sha256:04d5b84950db52326e6cc95db975fcf82fcb9683b9f954f033b16dea9f35ef9d" -> "sha256:4c9ea79971eeab982d4517b283b3f7ca72af4415d5fdfa71456c0f19c92c0564" [label=""];
  "sha256:4c9ea79971eeab982d4517b283b3f7ca72af4415d5fdfa71456c0f19c92c0564" -> "sha256:eff86d0fbcf9c700aa24220cb7083a5eaa6f77320e6240694727401eddab92bb" [label=""];
  "sha256:95a16e3c77efa42de7295e49c238d27260a0b4c30eec91579029818e91db35f2" -> "sha256:eff86d0fbcf9c700aa24220cb7083a5eaa6f77320e6240694727401eddab92bb" [label=""];
  "sha256:eff86d0fbcf9c700aa24220cb7083a5eaa6f77320e6240694727401eddab92bb" -> "sha256:1ea7120e770ca92d3a29e2b1c4142ba6cc45b30e559cbdb3e945ce53f163b064" [label=""];
  "sha256:95a16e3c77efa42de7295e49c238d27260a0b4c30eec91579029818e91db35f2" -> "sha256:1ea7120e770ca92d3a29e2b1c4142ba6cc45b30e559cbdb3e945ce53f163b064" [label=""];
  "sha256:1ea7120e770ca92d3a29e2b1c4142ba6cc45b30e559cbdb3e945ce53f163b064" -> "sha256:12fe9c5405aaa30acfc6c200dfd8ee5ab761539238ef3e9d28c53f2036e79e7e" [label=""];
  "sha256:95a16e3c77efa42de7295e49c238d27260a0b4c30eec91579029818e91db35f2" -> "sha256:12fe9c5405aaa30acfc6c200dfd8ee5ab761539238ef3e9d28c53f2036e79e7e" [label=""];
  "sha256:12fe9c5405aaa30acfc6c200dfd8ee5ab761539238ef3e9d28c53f2036e79e7e" -> "sha256:6d2e4cbedf03bc54a17e383bec2e7ce8454675e7b5efb0fc84a4f85d9be9309e" [label=""];
  "sha256:6d2e4cbedf03bc54a17e383bec2e7ce8454675e7b5efb0fc84a4f85d9be9309e" -> "sha256:6170139090b909b99774a852e66106a98dac281ced985d8d3790bc36bc30369c" [label=""];
  "sha256:6170139090b909b99774a852e66106a98dac281ced985d8d3790bc36bc30369c" -> "sha256:edc9d7caa6d917461c0e6ed22bd94ab474b25c8b736e119a2e27accccbe8750a" [label=""];
  "sha256:edc9d7caa6d917461c0e6ed22bd94ab474b25c8b736e119a2e27accccbe8750a" -> "sha256:b996557a6543a4f40ec49014c078fba926240a203da112b9e21d4b4d9e3a9e56" [label=""];
}

