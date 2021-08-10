[app/sources/455357057.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:faec321e546652417d48167d09e2a7c3fd30fd0ecec42c9c7db693c18b37458f" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:d5e4c05dfc2e6dc81a4fdaae5887d1c33282c3880989f38c9de5ee6462ee88d1" [label="/bin/sh -c apt-get install -y socat" shape="box"];
  "sha256:81668d96c261b2001efa3b510c48bf94a8a61fa975d7b483ca2c91555caf8233" [label="/bin/sh -c adduser --disabled-password --gecos \"\" book" shape="box"];
  "sha256:b5d215871799e0addfde0e8075cbf8ad376fbd7d8b505430226ffc896a535bf5" [label="/bin/sh -c chown -R root:book /home/book/" shape="box"];
  "sha256:e42f93095ee86de00621559f2ce2e729e46336744a26c596d0f6d8424570aa29" [label="/bin/sh -c chmod 750 /home/book" shape="box"];
  "sha256:c4a690a03ecaa7d2a83a49c523cd691e9b03d846605e32b845f5c99d89bce10a" [label="/bin/sh -c touch /home/book/flag.txt" shape="box"];
  "sha256:4af9ff8157794088341405d6db506e998ec5e8e54dbb268a209bc6ae1c6bd16d" [label="/bin/sh -c chown root:book /home/book/flag.txt" shape="box"];
  "sha256:f0b674ba6399610a9baf076d79ad24453cb71bf4a3923b27a392f4c426fb32c7" [label="/bin/sh -c chmod 440 /home/book/flag.txt" shape="box"];
  "sha256:7c64bb8fd0b71962897bba901faf62a51a7cbc78a019a030fd3f567c35b056c4" [label="/bin/sh -c chmod 740 /usr/bin/top" shape="box"];
  "sha256:85d7f8b2c7d8a50fbe6f799bcfb08ec52abc644919409e7577d6c47ffbec7b0b" [label="/bin/sh -c chmod 740 /bin/ps" shape="box"];
  "sha256:925449b8bcc54a453901ce97f530e9ee8f3aa66d2e431e8416a0e43d8c003ab4" [label="/bin/sh -c chmod 740 /usr/bin/pgrep" shape="box"];
  "sha256:03e3bdcd2a4528e015acc1312be6b6ebfbe097d5e2ecddff1bb8e88d111953e2" [label="/bin/sh -c chmod 700 /tmp" shape="box"];
  "sha256:f89fabb4b97a694805340c97da59943fd77b97772856916ac4b9f9e327580c76" [label="/bin/sh -c export TERM=xterm" shape="box"];
  "sha256:ebe84497fcb910f109ae078570a3766eedfd4288bee5e7ae9cf8f7f5c128bf55" [label="local://context" shape="ellipse"];
  "sha256:80f3b92707b96e999c8c8d1d09f98196cd8432f5b0543f24bfb9de22564624ed" [label="copy{src=/shelf, dest=/home/book}" shape="note"];
  "sha256:348a0426bb7c34282e3b9146e604c4a52fa4727fcb5a9ed9f895c7f4d5a23a19" [label="copy{src=/src/flag.txt, dest=/home/book}" shape="note"];
  "sha256:7e5840b20112d24b54fc9791d416808544d0bbe6ebe1de542c84bbb9d83bdfab" [label="mkdir{path=/home/book}" shape="note"];
  "sha256:44f727cabb3bba265f523b59bcc340e3024b90df343931795f5b61978f5c30d0" [label="sha256:44f727cabb3bba265f523b59bcc340e3024b90df343931795f5b61978f5c30d0" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:faec321e546652417d48167d09e2a7c3fd30fd0ecec42c9c7db693c18b37458f" [label=""];
  "sha256:faec321e546652417d48167d09e2a7c3fd30fd0ecec42c9c7db693c18b37458f" -> "sha256:d5e4c05dfc2e6dc81a4fdaae5887d1c33282c3880989f38c9de5ee6462ee88d1" [label=""];
  "sha256:d5e4c05dfc2e6dc81a4fdaae5887d1c33282c3880989f38c9de5ee6462ee88d1" -> "sha256:81668d96c261b2001efa3b510c48bf94a8a61fa975d7b483ca2c91555caf8233" [label=""];
  "sha256:81668d96c261b2001efa3b510c48bf94a8a61fa975d7b483ca2c91555caf8233" -> "sha256:b5d215871799e0addfde0e8075cbf8ad376fbd7d8b505430226ffc896a535bf5" [label=""];
  "sha256:b5d215871799e0addfde0e8075cbf8ad376fbd7d8b505430226ffc896a535bf5" -> "sha256:e42f93095ee86de00621559f2ce2e729e46336744a26c596d0f6d8424570aa29" [label=""];
  "sha256:e42f93095ee86de00621559f2ce2e729e46336744a26c596d0f6d8424570aa29" -> "sha256:c4a690a03ecaa7d2a83a49c523cd691e9b03d846605e32b845f5c99d89bce10a" [label=""];
  "sha256:c4a690a03ecaa7d2a83a49c523cd691e9b03d846605e32b845f5c99d89bce10a" -> "sha256:4af9ff8157794088341405d6db506e998ec5e8e54dbb268a209bc6ae1c6bd16d" [label=""];
  "sha256:4af9ff8157794088341405d6db506e998ec5e8e54dbb268a209bc6ae1c6bd16d" -> "sha256:f0b674ba6399610a9baf076d79ad24453cb71bf4a3923b27a392f4c426fb32c7" [label=""];
  "sha256:f0b674ba6399610a9baf076d79ad24453cb71bf4a3923b27a392f4c426fb32c7" -> "sha256:7c64bb8fd0b71962897bba901faf62a51a7cbc78a019a030fd3f567c35b056c4" [label=""];
  "sha256:7c64bb8fd0b71962897bba901faf62a51a7cbc78a019a030fd3f567c35b056c4" -> "sha256:85d7f8b2c7d8a50fbe6f799bcfb08ec52abc644919409e7577d6c47ffbec7b0b" [label=""];
  "sha256:85d7f8b2c7d8a50fbe6f799bcfb08ec52abc644919409e7577d6c47ffbec7b0b" -> "sha256:925449b8bcc54a453901ce97f530e9ee8f3aa66d2e431e8416a0e43d8c003ab4" [label=""];
  "sha256:925449b8bcc54a453901ce97f530e9ee8f3aa66d2e431e8416a0e43d8c003ab4" -> "sha256:03e3bdcd2a4528e015acc1312be6b6ebfbe097d5e2ecddff1bb8e88d111953e2" [label=""];
  "sha256:03e3bdcd2a4528e015acc1312be6b6ebfbe097d5e2ecddff1bb8e88d111953e2" -> "sha256:f89fabb4b97a694805340c97da59943fd77b97772856916ac4b9f9e327580c76" [label=""];
  "sha256:f89fabb4b97a694805340c97da59943fd77b97772856916ac4b9f9e327580c76" -> "sha256:80f3b92707b96e999c8c8d1d09f98196cd8432f5b0543f24bfb9de22564624ed" [label=""];
  "sha256:ebe84497fcb910f109ae078570a3766eedfd4288bee5e7ae9cf8f7f5c128bf55" -> "sha256:80f3b92707b96e999c8c8d1d09f98196cd8432f5b0543f24bfb9de22564624ed" [label=""];
  "sha256:80f3b92707b96e999c8c8d1d09f98196cd8432f5b0543f24bfb9de22564624ed" -> "sha256:348a0426bb7c34282e3b9146e604c4a52fa4727fcb5a9ed9f895c7f4d5a23a19" [label=""];
  "sha256:ebe84497fcb910f109ae078570a3766eedfd4288bee5e7ae9cf8f7f5c128bf55" -> "sha256:348a0426bb7c34282e3b9146e604c4a52fa4727fcb5a9ed9f895c7f4d5a23a19" [label=""];
  "sha256:348a0426bb7c34282e3b9146e604c4a52fa4727fcb5a9ed9f895c7f4d5a23a19" -> "sha256:7e5840b20112d24b54fc9791d416808544d0bbe6ebe1de542c84bbb9d83bdfab" [label=""];
  "sha256:7e5840b20112d24b54fc9791d416808544d0bbe6ebe1de542c84bbb9d83bdfab" -> "sha256:44f727cabb3bba265f523b59bcc340e3024b90df343931795f5b61978f5c30d0" [label=""];
}

