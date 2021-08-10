[app/sources/319641261.Dockerfile]
digraph {
  "sha256:cc66585817ae32f790786f72c4ce8766f78202ff9e213aea47adbfc43bc35f68" [label="local://context" shape="ellipse"];
  "sha256:0ce2891b56921cd258a9ab2e5d0b4a6ef29ff7a54b330da605080bd8bcecc4ca" [label="docker-image://docker.io/stocard/node:8.11" shape="ellipse"];
  "sha256:794dfac50e3e197b8672ab9ffcd4679c43344a2108ed0adfa2b01b4597dc4170" [label="copy{src=/package.json, dest=/package.json}" shape="note"];
  "sha256:4d4bc19dc3ce877431a3f2179de67b1d4e1bd9e75f1fe857adf21bf3f1b6dbf3" [label="copy{src=/yarn.lock, dest=/yarn.lock}" shape="note"];
  "sha256:f1a2f57d9ff4b807816718e7b5064fab847103819d2782877d97b9d74e824908" [label="/bin/sh -c yarn install --silent --frozen-lockfile" shape="box"];
  "sha256:9ae42b0eaed0a58df4fc888edf9949ad1169ccc016bc1e59839417bbfd656824" [label="copy{src=/tsconfig.json, dest=/}" shape="note"];
  "sha256:8e8a81c2f4699b93c355e5938704aae7430c1c14a47a40a650e32fd567a29106" [label="copy{src=/tslint.json, dest=/}" shape="note"];
  "sha256:12ed20dbd46b91eb39892eb6d2aa487cbbced0f3b39d039fd1fcddab19da4fd2" [label="copy{src=/src, dest=/src}" shape="note"];
  "sha256:1d5677e211c72312a93ed493308cb94e55e3afb54e7008e7d33a5372c7b52782" [label="/bin/sh -c yarn build" shape="box"];
  "sha256:8c0d1b35fc34b3c4c60f9d8004c0e4aa9fe6b5656117bba884b2ed658821adf0" [label="copy{src=/test/keys, dest=/root/.ssh/}" shape="note"];
  "sha256:851132dc588496af019b31da25da29cf654f6d8e2d5bf301095ee90d86f1e712" [label="copy{src=/test/keys/id_rsa_no_pass, dest=/root/.ssh/id_rsa}" shape="note"];
  "sha256:a3826ad772c2df3772cb5e4e483b332ad7513ece72a090e1a08b4f12b9fdd99d" [label="copy{src=/test/keys/id_rsa_no_pass.pub, dest=/root/.ssh/id_rsa.pub}" shape="note"];
  "sha256:ecc11914845128ed5f087a06002640fc122f25b11c4ab909b773c0f1deaf685a" [label="copy{src=/test, dest=/test}" shape="note"];
  "sha256:7be54339b6d7e462d291f540afacc20623ada6e9bbeca469e66c61c668581e38" [label="sha256:7be54339b6d7e462d291f540afacc20623ada6e9bbeca469e66c61c668581e38" shape="plaintext"];
  "sha256:0ce2891b56921cd258a9ab2e5d0b4a6ef29ff7a54b330da605080bd8bcecc4ca" -> "sha256:794dfac50e3e197b8672ab9ffcd4679c43344a2108ed0adfa2b01b4597dc4170" [label=""];
  "sha256:cc66585817ae32f790786f72c4ce8766f78202ff9e213aea47adbfc43bc35f68" -> "sha256:794dfac50e3e197b8672ab9ffcd4679c43344a2108ed0adfa2b01b4597dc4170" [label=""];
  "sha256:794dfac50e3e197b8672ab9ffcd4679c43344a2108ed0adfa2b01b4597dc4170" -> "sha256:4d4bc19dc3ce877431a3f2179de67b1d4e1bd9e75f1fe857adf21bf3f1b6dbf3" [label=""];
  "sha256:cc66585817ae32f790786f72c4ce8766f78202ff9e213aea47adbfc43bc35f68" -> "sha256:4d4bc19dc3ce877431a3f2179de67b1d4e1bd9e75f1fe857adf21bf3f1b6dbf3" [label=""];
  "sha256:4d4bc19dc3ce877431a3f2179de67b1d4e1bd9e75f1fe857adf21bf3f1b6dbf3" -> "sha256:f1a2f57d9ff4b807816718e7b5064fab847103819d2782877d97b9d74e824908" [label=""];
  "sha256:f1a2f57d9ff4b807816718e7b5064fab847103819d2782877d97b9d74e824908" -> "sha256:9ae42b0eaed0a58df4fc888edf9949ad1169ccc016bc1e59839417bbfd656824" [label=""];
  "sha256:cc66585817ae32f790786f72c4ce8766f78202ff9e213aea47adbfc43bc35f68" -> "sha256:9ae42b0eaed0a58df4fc888edf9949ad1169ccc016bc1e59839417bbfd656824" [label=""];
  "sha256:9ae42b0eaed0a58df4fc888edf9949ad1169ccc016bc1e59839417bbfd656824" -> "sha256:8e8a81c2f4699b93c355e5938704aae7430c1c14a47a40a650e32fd567a29106" [label=""];
  "sha256:cc66585817ae32f790786f72c4ce8766f78202ff9e213aea47adbfc43bc35f68" -> "sha256:8e8a81c2f4699b93c355e5938704aae7430c1c14a47a40a650e32fd567a29106" [label=""];
  "sha256:8e8a81c2f4699b93c355e5938704aae7430c1c14a47a40a650e32fd567a29106" -> "sha256:12ed20dbd46b91eb39892eb6d2aa487cbbced0f3b39d039fd1fcddab19da4fd2" [label=""];
  "sha256:cc66585817ae32f790786f72c4ce8766f78202ff9e213aea47adbfc43bc35f68" -> "sha256:12ed20dbd46b91eb39892eb6d2aa487cbbced0f3b39d039fd1fcddab19da4fd2" [label=""];
  "sha256:12ed20dbd46b91eb39892eb6d2aa487cbbced0f3b39d039fd1fcddab19da4fd2" -> "sha256:1d5677e211c72312a93ed493308cb94e55e3afb54e7008e7d33a5372c7b52782" [label=""];
  "sha256:1d5677e211c72312a93ed493308cb94e55e3afb54e7008e7d33a5372c7b52782" -> "sha256:8c0d1b35fc34b3c4c60f9d8004c0e4aa9fe6b5656117bba884b2ed658821adf0" [label=""];
  "sha256:cc66585817ae32f790786f72c4ce8766f78202ff9e213aea47adbfc43bc35f68" -> "sha256:8c0d1b35fc34b3c4c60f9d8004c0e4aa9fe6b5656117bba884b2ed658821adf0" [label=""];
  "sha256:8c0d1b35fc34b3c4c60f9d8004c0e4aa9fe6b5656117bba884b2ed658821adf0" -> "sha256:851132dc588496af019b31da25da29cf654f6d8e2d5bf301095ee90d86f1e712" [label=""];
  "sha256:cc66585817ae32f790786f72c4ce8766f78202ff9e213aea47adbfc43bc35f68" -> "sha256:851132dc588496af019b31da25da29cf654f6d8e2d5bf301095ee90d86f1e712" [label=""];
  "sha256:851132dc588496af019b31da25da29cf654f6d8e2d5bf301095ee90d86f1e712" -> "sha256:a3826ad772c2df3772cb5e4e483b332ad7513ece72a090e1a08b4f12b9fdd99d" [label=""];
  "sha256:cc66585817ae32f790786f72c4ce8766f78202ff9e213aea47adbfc43bc35f68" -> "sha256:a3826ad772c2df3772cb5e4e483b332ad7513ece72a090e1a08b4f12b9fdd99d" [label=""];
  "sha256:a3826ad772c2df3772cb5e4e483b332ad7513ece72a090e1a08b4f12b9fdd99d" -> "sha256:ecc11914845128ed5f087a06002640fc122f25b11c4ab909b773c0f1deaf685a" [label=""];
  "sha256:cc66585817ae32f790786f72c4ce8766f78202ff9e213aea47adbfc43bc35f68" -> "sha256:ecc11914845128ed5f087a06002640fc122f25b11c4ab909b773c0f1deaf685a" [label=""];
  "sha256:ecc11914845128ed5f087a06002640fc122f25b11c4ab909b773c0f1deaf685a" -> "sha256:7be54339b6d7e462d291f540afacc20623ada6e9bbeca469e66c61c668581e38" [label=""];
}

