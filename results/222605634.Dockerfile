[app/sources/222605634.Dockerfile]
digraph {
  "sha256:053a9fcb5f83ace64afc70f24750ec532502b3f06ed006a9cf3831182928c07d" [label="docker-image://docker.io/tozd/sgx:ubuntu-xenial" shape="ellipse"];
  "sha256:4cdb78bbc6fd5ef6fbc6fc854684d73d3b523c599d92ede41fceaa0a00772148" [label="local://context" shape="ellipse"];
  "sha256:40355493d6c3138918f8e731ee44a49af91c030006231883fe2c3e39eafec73a" [label="copy{src=/, dest=/lucky}" shape="note"];
  "sha256:0147ca7c48c1705659dd629fa7e610b03c0d02fad304a79a2422cd48a5835373" [label="/bin/sh -c wget -O - https://nodejs.org/dist/v6.10.0/node-v6.10.0-linux-x64.tar.xz | tar Jx --strip=1 -C /usr/local --anchored --exclude=node-v6.10.0-linux-x64/CHANGELOG.md --exclude=node-v6.10.0-linux-x64/LICENSE --exclude=node-v6.10.0-linux-x64/README.md &&  wget -O - https://dist.ipfs.io/go-ipfs/v0.4.6/go-ipfs_v0.4.6_linux-amd64.tar.gz | tar zx --strip=1 -C /usr/local/bin go-ipfs/ipfs &&  adduser --system --group lucky --home /lucky &&  adduser --system --group ipfs --home /ipfs &&  cd /lucky &&  npm install &&  make" shape="box"];
  "sha256:5914ed01d985a65846871e7c0f7be6e6089cfe40ec32392c1fefe631c752c880" [label="copy{src=/etc, dest=/etc}" shape="note"];
  "sha256:c484da8a08fd8d8ee68723dda6039e248a361b6cd90ef73fffbf98e6dffe2624" [label="sha256:c484da8a08fd8d8ee68723dda6039e248a361b6cd90ef73fffbf98e6dffe2624" shape="plaintext"];
  "sha256:053a9fcb5f83ace64afc70f24750ec532502b3f06ed006a9cf3831182928c07d" -> "sha256:40355493d6c3138918f8e731ee44a49af91c030006231883fe2c3e39eafec73a" [label=""];
  "sha256:4cdb78bbc6fd5ef6fbc6fc854684d73d3b523c599d92ede41fceaa0a00772148" -> "sha256:40355493d6c3138918f8e731ee44a49af91c030006231883fe2c3e39eafec73a" [label=""];
  "sha256:40355493d6c3138918f8e731ee44a49af91c030006231883fe2c3e39eafec73a" -> "sha256:0147ca7c48c1705659dd629fa7e610b03c0d02fad304a79a2422cd48a5835373" [label=""];
  "sha256:0147ca7c48c1705659dd629fa7e610b03c0d02fad304a79a2422cd48a5835373" -> "sha256:5914ed01d985a65846871e7c0f7be6e6089cfe40ec32392c1fefe631c752c880" [label=""];
  "sha256:4cdb78bbc6fd5ef6fbc6fc854684d73d3b523c599d92ede41fceaa0a00772148" -> "sha256:5914ed01d985a65846871e7c0f7be6e6089cfe40ec32392c1fefe631c752c880" [label=""];
  "sha256:5914ed01d985a65846871e7c0f7be6e6089cfe40ec32392c1fefe631c752c880" -> "sha256:c484da8a08fd8d8ee68723dda6039e248a361b6cd90ef73fffbf98e6dffe2624" [label=""];
}

