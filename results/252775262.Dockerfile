[app/sources/252775262.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:813fc6458e5a90f2ad0a4a58a12e43d5ba9c0ebd104796728044c41640b11da9" [label="/bin/sh -c mkdir /compilers-ms" shape="box"];
  "sha256:b493e51e04c127f4403a3bfd2eb4b0fb539b74ceb49ab6b692a499f31cf79077" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:e240702d8f57c8651b698f314625eebcceb994d79cc9e8fb301c200e7e1b5524" [label="/bin/sh -c apt-get install curl -y" shape="box"];
  "sha256:ad042780f2790ff9459ab0328762efbb507ee8ffd7d1d19707af46eab6d8cdb1" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash" shape="box"];
  "sha256:f1d8c1aba7bc09ba7d00a4eabdc284844d8b5eaf8f61b2142dcedddddabec9de" [label="/bin/sh -c apt-get install nodejs -y" shape="box"];
  "sha256:c6ec31fa9df40de480d230b1051836a8ff732e9b8f33957a3fb3211ccc7f0dc0" [label="/bin/sh -c npm install express-generator -g" shape="box"];
  "sha256:aace3f1311bc5df8551169fedab965c488a516ce26a3dd356c059035bb1cdf90" [label="/bin/sh -c mkdir /compilers-ms/temp" shape="box"];
  "sha256:3d4234b6a83b46ce308a337a61f25a62dab05b01bf4bbc9943f5e09604585b9d" [label="/bin/sh -c apt-get install gcc -y" shape="box"];
  "sha256:0fa6d2fbfc22f37cbffe201f5a3185587d17e3a2b74e39db7feaf5f7cf6aef4b" [label="/bin/sh -c apt-get install python3 -y" shape="box"];
  "sha256:45bb9aeb273bdbcc73c5a38d600431431fa7b4cbc6dbda83675111d6b6197a9b" [label="mkdir{path=/compilers-ms}" shape="note"];
  "sha256:d0a4ea2251a6c0d1f1bde79f1ed1ad4bb4aabb94cd86c31487d7d612c8c84cec" [label="local://context" shape="ellipse"];
  "sha256:b92a96d789ecc2c6b779e3ba676dc6a4dc973d196ed95b9c1158a1014e8d8e22" [label="copy{src=/key-storage.json, dest=/compiler-ms/key-storage.json}" shape="note"];
  "sha256:7f4a489a577094cc350130e2dcf5228d9a9252d5a970ae7c8e68f2809fa80217" [label="/bin/sh -c export GOOGLE_APPLICATION_CREDENTIALS=\"/compiler-ms/key-storage.json\"" shape="box"];
  "sha256:8cb01b66cfebe85c02a985436dff3b39d3ee4fd04006ae848aa725e683ee3d6e" [label="copy{src=/compiler/package.json, dest=/compilers-ms/package.json}" shape="note"];
  "sha256:8d25c4da5353a70545f75beb51ff2ce2cc0db4733fabdc2855c0448a5d57f7fd" [label="copy{src=/compiler/package-lock.json, dest=/compilers-ms/package-lock.json}" shape="note"];
  "sha256:270e1745b23494a817848e60456a69a2dff5ee6d155f23f296a1b73ff45f17a9" [label="/bin/sh -c npm install" shape="box"];
  "sha256:fe9a5ad7a477a2c744ce512cc6e02bc35c3c3f6a9239c5a2372bda08c470a826" [label="copy{src=/, dest=/compilers-ms}" shape="note"];
  "sha256:db2fe6bb80c750fa607dd4541538415da6076c6e9ace4e87e0b3c15549ff7392" [label="sha256:db2fe6bb80c750fa607dd4541538415da6076c6e9ace4e87e0b3c15549ff7392" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:813fc6458e5a90f2ad0a4a58a12e43d5ba9c0ebd104796728044c41640b11da9" [label=""];
  "sha256:813fc6458e5a90f2ad0a4a58a12e43d5ba9c0ebd104796728044c41640b11da9" -> "sha256:b493e51e04c127f4403a3bfd2eb4b0fb539b74ceb49ab6b692a499f31cf79077" [label=""];
  "sha256:b493e51e04c127f4403a3bfd2eb4b0fb539b74ceb49ab6b692a499f31cf79077" -> "sha256:e240702d8f57c8651b698f314625eebcceb994d79cc9e8fb301c200e7e1b5524" [label=""];
  "sha256:e240702d8f57c8651b698f314625eebcceb994d79cc9e8fb301c200e7e1b5524" -> "sha256:ad042780f2790ff9459ab0328762efbb507ee8ffd7d1d19707af46eab6d8cdb1" [label=""];
  "sha256:ad042780f2790ff9459ab0328762efbb507ee8ffd7d1d19707af46eab6d8cdb1" -> "sha256:f1d8c1aba7bc09ba7d00a4eabdc284844d8b5eaf8f61b2142dcedddddabec9de" [label=""];
  "sha256:f1d8c1aba7bc09ba7d00a4eabdc284844d8b5eaf8f61b2142dcedddddabec9de" -> "sha256:c6ec31fa9df40de480d230b1051836a8ff732e9b8f33957a3fb3211ccc7f0dc0" [label=""];
  "sha256:c6ec31fa9df40de480d230b1051836a8ff732e9b8f33957a3fb3211ccc7f0dc0" -> "sha256:aace3f1311bc5df8551169fedab965c488a516ce26a3dd356c059035bb1cdf90" [label=""];
  "sha256:aace3f1311bc5df8551169fedab965c488a516ce26a3dd356c059035bb1cdf90" -> "sha256:3d4234b6a83b46ce308a337a61f25a62dab05b01bf4bbc9943f5e09604585b9d" [label=""];
  "sha256:3d4234b6a83b46ce308a337a61f25a62dab05b01bf4bbc9943f5e09604585b9d" -> "sha256:0fa6d2fbfc22f37cbffe201f5a3185587d17e3a2b74e39db7feaf5f7cf6aef4b" [label=""];
  "sha256:0fa6d2fbfc22f37cbffe201f5a3185587d17e3a2b74e39db7feaf5f7cf6aef4b" -> "sha256:45bb9aeb273bdbcc73c5a38d600431431fa7b4cbc6dbda83675111d6b6197a9b" [label=""];
  "sha256:45bb9aeb273bdbcc73c5a38d600431431fa7b4cbc6dbda83675111d6b6197a9b" -> "sha256:b92a96d789ecc2c6b779e3ba676dc6a4dc973d196ed95b9c1158a1014e8d8e22" [label=""];
  "sha256:d0a4ea2251a6c0d1f1bde79f1ed1ad4bb4aabb94cd86c31487d7d612c8c84cec" -> "sha256:b92a96d789ecc2c6b779e3ba676dc6a4dc973d196ed95b9c1158a1014e8d8e22" [label=""];
  "sha256:b92a96d789ecc2c6b779e3ba676dc6a4dc973d196ed95b9c1158a1014e8d8e22" -> "sha256:7f4a489a577094cc350130e2dcf5228d9a9252d5a970ae7c8e68f2809fa80217" [label=""];
  "sha256:7f4a489a577094cc350130e2dcf5228d9a9252d5a970ae7c8e68f2809fa80217" -> "sha256:8cb01b66cfebe85c02a985436dff3b39d3ee4fd04006ae848aa725e683ee3d6e" [label=""];
  "sha256:d0a4ea2251a6c0d1f1bde79f1ed1ad4bb4aabb94cd86c31487d7d612c8c84cec" -> "sha256:8cb01b66cfebe85c02a985436dff3b39d3ee4fd04006ae848aa725e683ee3d6e" [label=""];
  "sha256:8cb01b66cfebe85c02a985436dff3b39d3ee4fd04006ae848aa725e683ee3d6e" -> "sha256:8d25c4da5353a70545f75beb51ff2ce2cc0db4733fabdc2855c0448a5d57f7fd" [label=""];
  "sha256:d0a4ea2251a6c0d1f1bde79f1ed1ad4bb4aabb94cd86c31487d7d612c8c84cec" -> "sha256:8d25c4da5353a70545f75beb51ff2ce2cc0db4733fabdc2855c0448a5d57f7fd" [label=""];
  "sha256:8d25c4da5353a70545f75beb51ff2ce2cc0db4733fabdc2855c0448a5d57f7fd" -> "sha256:270e1745b23494a817848e60456a69a2dff5ee6d155f23f296a1b73ff45f17a9" [label=""];
  "sha256:270e1745b23494a817848e60456a69a2dff5ee6d155f23f296a1b73ff45f17a9" -> "sha256:fe9a5ad7a477a2c744ce512cc6e02bc35c3c3f6a9239c5a2372bda08c470a826" [label=""];
  "sha256:d0a4ea2251a6c0d1f1bde79f1ed1ad4bb4aabb94cd86c31487d7d612c8c84cec" -> "sha256:fe9a5ad7a477a2c744ce512cc6e02bc35c3c3f6a9239c5a2372bda08c470a826" [label=""];
  "sha256:fe9a5ad7a477a2c744ce512cc6e02bc35c3c3f6a9239c5a2372bda08c470a826" -> "sha256:db2fe6bb80c750fa607dd4541538415da6076c6e9ace4e87e0b3c15549ff7392" [label=""];
}

