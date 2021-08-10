[app/sources/371969251.Dockerfile]
digraph {
  "sha256:0fa87faa0ef543ffd66fdd6e9411d39b9314ca807bfd02fa1282228d3de77a6e" [label="docker-image://docker.io/library/python:3-slim" shape="ellipse"];
  "sha256:8f2cd50c9e821f043a970d265387b11970183e8363eae43f559ff06ae6026c7c" [label="/bin/sh -c apt-get -qq update     && apt-get install -y --no-install-recommends         g++" shape="box"];
  "sha256:7ced36208596d2649a68d27aec79a0885786efe42acd8eaac8025ce9a79f1e48" [label="local://context" shape="ellipse"];
  "sha256:edb4e8ddb0da6438e28dba4f6516780091cf7bec9592c926080f0347ba6f4d16" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:8458205ae56ebaad31221faea1fc99b9f97f5425716314a75a054add190a71e7" [label="/bin/sh -c pip install --install-option=\"--prefix=/install\" -r requirements.txt" shape="box"];
  "sha256:61655680f7dd7a40b8d057d85a710d86eb38321700f77f39c8a045d69a39f0c9" [label="copy{src=/install, dest=/usr/local}" shape="note"];
  "sha256:2332b676d5dd5ce04d3dd8bef5ed9474a2ccdfc103c1723d966b2983b4344e9d" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:bde8cd825a5a01b0232cc24e5245cc07ed6a956423ecc4cfaef11e69d06ba207" [label="sha256:bde8cd825a5a01b0232cc24e5245cc07ed6a956423ecc4cfaef11e69d06ba207" shape="plaintext"];
  "sha256:0fa87faa0ef543ffd66fdd6e9411d39b9314ca807bfd02fa1282228d3de77a6e" -> "sha256:8f2cd50c9e821f043a970d265387b11970183e8363eae43f559ff06ae6026c7c" [label=""];
  "sha256:8f2cd50c9e821f043a970d265387b11970183e8363eae43f559ff06ae6026c7c" -> "sha256:edb4e8ddb0da6438e28dba4f6516780091cf7bec9592c926080f0347ba6f4d16" [label=""];
  "sha256:7ced36208596d2649a68d27aec79a0885786efe42acd8eaac8025ce9a79f1e48" -> "sha256:edb4e8ddb0da6438e28dba4f6516780091cf7bec9592c926080f0347ba6f4d16" [label=""];
  "sha256:edb4e8ddb0da6438e28dba4f6516780091cf7bec9592c926080f0347ba6f4d16" -> "sha256:8458205ae56ebaad31221faea1fc99b9f97f5425716314a75a054add190a71e7" [label=""];
  "sha256:0fa87faa0ef543ffd66fdd6e9411d39b9314ca807bfd02fa1282228d3de77a6e" -> "sha256:61655680f7dd7a40b8d057d85a710d86eb38321700f77f39c8a045d69a39f0c9" [label=""];
  "sha256:8458205ae56ebaad31221faea1fc99b9f97f5425716314a75a054add190a71e7" -> "sha256:61655680f7dd7a40b8d057d85a710d86eb38321700f77f39c8a045d69a39f0c9" [label=""];
  "sha256:61655680f7dd7a40b8d057d85a710d86eb38321700f77f39c8a045d69a39f0c9" -> "sha256:2332b676d5dd5ce04d3dd8bef5ed9474a2ccdfc103c1723d966b2983b4344e9d" [label=""];
  "sha256:7ced36208596d2649a68d27aec79a0885786efe42acd8eaac8025ce9a79f1e48" -> "sha256:2332b676d5dd5ce04d3dd8bef5ed9474a2ccdfc103c1723d966b2983b4344e9d" [label=""];
  "sha256:2332b676d5dd5ce04d3dd8bef5ed9474a2ccdfc103c1723d966b2983b4344e9d" -> "sha256:bde8cd825a5a01b0232cc24e5245cc07ed6a956423ecc4cfaef11e69d06ba207" [label=""];
}

