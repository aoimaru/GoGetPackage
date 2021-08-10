[app/sources/436342531.Dockerfile]
digraph {
  "sha256:28f3acd468195aebee3d3488ff7e679799c3890636614b7a2b1817320a2de3f3" [label="local://context" shape="ellipse"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:40c780dae0fad2a04e6744c4f09cd955e36647e93e60b324ecfb9bbab112830d" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:16ea7d672f7be4ec286088548d3bf9404c0ff81999a04a76e721c63e9c446520" [label="/bin/sh -c apt-get install libc6-dev-i386 gcc make python gdb -y" shape="box"];
  "sha256:bfba08bb8697d4db29e81cc967e2a9e9e99777865469e899dcb7e888faebc3b1" [label="/bin/sh -c useradd sandbox" shape="box"];
  "sha256:533f8fc574b42b7157fc7ff24d0b8e1d6757ecc58990d42a914f7da1d8e6e2dc" [label="/bin/sh -c mkdir -p /sandbox" shape="box"];
  "sha256:0fc551e3d487ab3ae9c94004cde529e6535a3f991b2bbfbd8eede1c1d122791d" [label="mkdir{path=/sandbox}" shape="note"];
  "sha256:bc504e7289995af54b7b2352e51198c4ba2c1c19130f4bf5941ed9cf34172e03" [label="copy{src=/server-files/main.c, dest=/sandbox}" shape="note"];
  "sha256:7d0a77e916a7b66acb2037ffbfbc9d9c76d2eaf4d0ccd5b6eb2415bed6d66c3d" [label="copy{src=/server-files/Makefile, dest=/sandbox}" shape="note"];
  "sha256:789051fa3140f1dcddf7d92e7dbeb9e9cce3c2b21933eb22e29295ce43fdf019" [label="copy{src=/server-files/flag.txt, dest=/sandbox}" shape="note"];
  "sha256:389bb72a6892fbb609f13505ead1d993d6ad09574b4fe7ee65869e00121d0179" [label="/bin/sh -c chown root:sandbox /sandbox/flag.txt" shape="box"];
  "sha256:309db04e37a0f40db3b11d3ee415e2e18366eaebf8cdf5d6f005a6aac5020934" [label="/bin/sh -c chmod 440 /sandbox/flag.txt" shape="box"];
  "sha256:54bb296b9949dc406dd6db92d8b2b24deeda89274cc1844dd743fb67dc8e8cfc" [label="/bin/sh -c make weak && rm Makefile main.c" shape="box"];
  "sha256:7e9f24b2f69ea3a3b88a5a8b79acb5e0e3f7c8c071f89c82954dc822f70d1337" [label="/bin/sh -c chown root:sandbox weak" shape="box"];
  "sha256:91ae137a324bb2b6169f7fcd5dd164f0d0382598622f963dd632e9f29a03dd79" [label="/bin/sh -c cat flag.txt" shape="box"];
  "sha256:0bafb0a9826af1ec1549d620368d891bca667543637e9ccfaab92339490dbe25" [label="sha256:0bafb0a9826af1ec1549d620368d891bca667543637e9ccfaab92339490dbe25" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:40c780dae0fad2a04e6744c4f09cd955e36647e93e60b324ecfb9bbab112830d" [label=""];
  "sha256:40c780dae0fad2a04e6744c4f09cd955e36647e93e60b324ecfb9bbab112830d" -> "sha256:16ea7d672f7be4ec286088548d3bf9404c0ff81999a04a76e721c63e9c446520" [label=""];
  "sha256:16ea7d672f7be4ec286088548d3bf9404c0ff81999a04a76e721c63e9c446520" -> "sha256:bfba08bb8697d4db29e81cc967e2a9e9e99777865469e899dcb7e888faebc3b1" [label=""];
  "sha256:bfba08bb8697d4db29e81cc967e2a9e9e99777865469e899dcb7e888faebc3b1" -> "sha256:533f8fc574b42b7157fc7ff24d0b8e1d6757ecc58990d42a914f7da1d8e6e2dc" [label=""];
  "sha256:533f8fc574b42b7157fc7ff24d0b8e1d6757ecc58990d42a914f7da1d8e6e2dc" -> "sha256:0fc551e3d487ab3ae9c94004cde529e6535a3f991b2bbfbd8eede1c1d122791d" [label=""];
  "sha256:0fc551e3d487ab3ae9c94004cde529e6535a3f991b2bbfbd8eede1c1d122791d" -> "sha256:bc504e7289995af54b7b2352e51198c4ba2c1c19130f4bf5941ed9cf34172e03" [label=""];
  "sha256:28f3acd468195aebee3d3488ff7e679799c3890636614b7a2b1817320a2de3f3" -> "sha256:bc504e7289995af54b7b2352e51198c4ba2c1c19130f4bf5941ed9cf34172e03" [label=""];
  "sha256:bc504e7289995af54b7b2352e51198c4ba2c1c19130f4bf5941ed9cf34172e03" -> "sha256:7d0a77e916a7b66acb2037ffbfbc9d9c76d2eaf4d0ccd5b6eb2415bed6d66c3d" [label=""];
  "sha256:28f3acd468195aebee3d3488ff7e679799c3890636614b7a2b1817320a2de3f3" -> "sha256:7d0a77e916a7b66acb2037ffbfbc9d9c76d2eaf4d0ccd5b6eb2415bed6d66c3d" [label=""];
  "sha256:7d0a77e916a7b66acb2037ffbfbc9d9c76d2eaf4d0ccd5b6eb2415bed6d66c3d" -> "sha256:789051fa3140f1dcddf7d92e7dbeb9e9cce3c2b21933eb22e29295ce43fdf019" [label=""];
  "sha256:28f3acd468195aebee3d3488ff7e679799c3890636614b7a2b1817320a2de3f3" -> "sha256:789051fa3140f1dcddf7d92e7dbeb9e9cce3c2b21933eb22e29295ce43fdf019" [label=""];
  "sha256:789051fa3140f1dcddf7d92e7dbeb9e9cce3c2b21933eb22e29295ce43fdf019" -> "sha256:389bb72a6892fbb609f13505ead1d993d6ad09574b4fe7ee65869e00121d0179" [label=""];
  "sha256:389bb72a6892fbb609f13505ead1d993d6ad09574b4fe7ee65869e00121d0179" -> "sha256:309db04e37a0f40db3b11d3ee415e2e18366eaebf8cdf5d6f005a6aac5020934" [label=""];
  "sha256:309db04e37a0f40db3b11d3ee415e2e18366eaebf8cdf5d6f005a6aac5020934" -> "sha256:54bb296b9949dc406dd6db92d8b2b24deeda89274cc1844dd743fb67dc8e8cfc" [label=""];
  "sha256:54bb296b9949dc406dd6db92d8b2b24deeda89274cc1844dd743fb67dc8e8cfc" -> "sha256:7e9f24b2f69ea3a3b88a5a8b79acb5e0e3f7c8c071f89c82954dc822f70d1337" [label=""];
  "sha256:7e9f24b2f69ea3a3b88a5a8b79acb5e0e3f7c8c071f89c82954dc822f70d1337" -> "sha256:91ae137a324bb2b6169f7fcd5dd164f0d0382598622f963dd632e9f29a03dd79" [label=""];
  "sha256:91ae137a324bb2b6169f7fcd5dd164f0d0382598622f963dd632e9f29a03dd79" -> "sha256:0bafb0a9826af1ec1549d620368d891bca667543637e9ccfaab92339490dbe25" [label=""];
}

