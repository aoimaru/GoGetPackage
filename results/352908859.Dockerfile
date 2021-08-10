[app/sources/352908859.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:25818dd19fc72ce7cab89b9b5600c10faa83e7d660da45c07ef4b995f6582fac" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:2eb42ac39a467a47a877b61ceef1ef24b5d10c1fce7ef71b2f602295b60d7221" [label="/bin/sh -c apt-get install -y libbatik-java libxmlgraphics-commons-java python-pygments" shape="box"];
  "sha256:b3aaf299d4102689fa3500392bfc85b9c89fcbbc457e1eb233681e04cb6b538a" [label="/bin/sh -c apt-get install -y build-essential && cpan Tree::Trie" shape="box"];
  "sha256:78c6d153b7074581dfe3f57b695d1308dd8d844a581e37a7345ff19442bd7852" [label="local://context" shape="ellipse"];
  "sha256:8a1cd31770f149a0ae07a640a334438f402c6002081ec2e1ec9487c33a757faa" [label="copy{src=/, dest=/tmp/mkbook}" shape="note"];
  "sha256:08d95ed63bffd252441d39fc6093c10fc7f24c3a499b7238a509f7c08a305dc7" [label="/bin/sh -c cd /tmp/mkbook/bin && ./install && cd / && rm -rf /tmp/mkbook" shape="box"];
  "sha256:ac9a15c9a61cd29bfdeca00b648a66d899707e169304a2b27d5c02622dd65c57" [label="sha256:ac9a15c9a61cd29bfdeca00b648a66d899707e169304a2b27d5c02622dd65c57" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:25818dd19fc72ce7cab89b9b5600c10faa83e7d660da45c07ef4b995f6582fac" [label=""];
  "sha256:25818dd19fc72ce7cab89b9b5600c10faa83e7d660da45c07ef4b995f6582fac" -> "sha256:2eb42ac39a467a47a877b61ceef1ef24b5d10c1fce7ef71b2f602295b60d7221" [label=""];
  "sha256:2eb42ac39a467a47a877b61ceef1ef24b5d10c1fce7ef71b2f602295b60d7221" -> "sha256:b3aaf299d4102689fa3500392bfc85b9c89fcbbc457e1eb233681e04cb6b538a" [label=""];
  "sha256:b3aaf299d4102689fa3500392bfc85b9c89fcbbc457e1eb233681e04cb6b538a" -> "sha256:8a1cd31770f149a0ae07a640a334438f402c6002081ec2e1ec9487c33a757faa" [label=""];
  "sha256:78c6d153b7074581dfe3f57b695d1308dd8d844a581e37a7345ff19442bd7852" -> "sha256:8a1cd31770f149a0ae07a640a334438f402c6002081ec2e1ec9487c33a757faa" [label=""];
  "sha256:8a1cd31770f149a0ae07a640a334438f402c6002081ec2e1ec9487c33a757faa" -> "sha256:08d95ed63bffd252441d39fc6093c10fc7f24c3a499b7238a509f7c08a305dc7" [label=""];
  "sha256:08d95ed63bffd252441d39fc6093c10fc7f24c3a499b7238a509f7c08a305dc7" -> "sha256:ac9a15c9a61cd29bfdeca00b648a66d899707e169304a2b27d5c02622dd65c57" [label=""];
}

