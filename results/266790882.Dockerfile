[app/sources/266790882.Dockerfile]
digraph {
  "sha256:2bc58de441674ad6f2e73875246b42d14d30e15605132348426671bebe3ec49e" [label="local://context" shape="ellipse"];
  "sha256:f150dc05e70bbab860b1add8fa7d7aead5ea7826e26e73d54c10308f35e8da0f" [label="docker-image://docker.io/hyperledger/fabric-tools:x86_64-1.0.0" shape="ellipse"];
  "sha256:0b7b1f1715290a453f929b465e8c01fe0074d884c20295f3ec3f3da882d5893e" [label="/bin/sh -c go get -u github.com/astaxie/beego &&         go get -u github.com/beego/bee" shape="box"];
  "sha256:58d6691f4832b39b1374c476ba1be6b0ba186262d6e0be3cc6ee7c2786ad2398" [label="copy{src=/api_charity, dest=/src/api_charity}" shape="note"];
  "sha256:18f4c11fab2c026845a3fd945d904b9e76378ffd7dd0e65f17c650ac99507941" [label="copy{src=/chaincode-docker-devmode/msp, dest=/etc/hyperledger/msp}" shape="note"];
  "sha256:7a1ed18f14eaf582133ccd213fb203f292c326639633c187583250fe1073db7c" [label="copy{src=/api_charity, dest=/opt/gopath/src/api_charity}" shape="note"];
  "sha256:d55af3008a847b756015350b530acee5194f2f40e503f5c3a50b875afc0236ea" [label="copy{src=/chaincode-docker-devmode, dest=/opt/gopath/src/chaincodedev/}" shape="note"];
  "sha256:e1c57c763e9c16f4c645d1f7f3e15cd7ff254aedc2bede2c103b4c3cc2e8ccf7" [label="copy{src=/chaincode, dest=/opt/gopath/src/chaincodedev/chaincode/}" shape="note"];
  "sha256:d644b21b4fa926479aebd0e24a3ef46b03b903651d56bca735b63a204844777f" [label="mkdir{path=/src/chaincodedev}" shape="note"];
  "sha256:3cd4370b135f2caf345456fa46edb6ca2c26811b5739b47cde7b296bb2cdfc2a" [label="sha256:3cd4370b135f2caf345456fa46edb6ca2c26811b5739b47cde7b296bb2cdfc2a" shape="plaintext"];
  "sha256:f150dc05e70bbab860b1add8fa7d7aead5ea7826e26e73d54c10308f35e8da0f" -> "sha256:0b7b1f1715290a453f929b465e8c01fe0074d884c20295f3ec3f3da882d5893e" [label=""];
  "sha256:0b7b1f1715290a453f929b465e8c01fe0074d884c20295f3ec3f3da882d5893e" -> "sha256:58d6691f4832b39b1374c476ba1be6b0ba186262d6e0be3cc6ee7c2786ad2398" [label=""];
  "sha256:2bc58de441674ad6f2e73875246b42d14d30e15605132348426671bebe3ec49e" -> "sha256:58d6691f4832b39b1374c476ba1be6b0ba186262d6e0be3cc6ee7c2786ad2398" [label=""];
  "sha256:58d6691f4832b39b1374c476ba1be6b0ba186262d6e0be3cc6ee7c2786ad2398" -> "sha256:18f4c11fab2c026845a3fd945d904b9e76378ffd7dd0e65f17c650ac99507941" [label=""];
  "sha256:2bc58de441674ad6f2e73875246b42d14d30e15605132348426671bebe3ec49e" -> "sha256:18f4c11fab2c026845a3fd945d904b9e76378ffd7dd0e65f17c650ac99507941" [label=""];
  "sha256:18f4c11fab2c026845a3fd945d904b9e76378ffd7dd0e65f17c650ac99507941" -> "sha256:7a1ed18f14eaf582133ccd213fb203f292c326639633c187583250fe1073db7c" [label=""];
  "sha256:2bc58de441674ad6f2e73875246b42d14d30e15605132348426671bebe3ec49e" -> "sha256:7a1ed18f14eaf582133ccd213fb203f292c326639633c187583250fe1073db7c" [label=""];
  "sha256:7a1ed18f14eaf582133ccd213fb203f292c326639633c187583250fe1073db7c" -> "sha256:d55af3008a847b756015350b530acee5194f2f40e503f5c3a50b875afc0236ea" [label=""];
  "sha256:2bc58de441674ad6f2e73875246b42d14d30e15605132348426671bebe3ec49e" -> "sha256:d55af3008a847b756015350b530acee5194f2f40e503f5c3a50b875afc0236ea" [label=""];
  "sha256:d55af3008a847b756015350b530acee5194f2f40e503f5c3a50b875afc0236ea" -> "sha256:e1c57c763e9c16f4c645d1f7f3e15cd7ff254aedc2bede2c103b4c3cc2e8ccf7" [label=""];
  "sha256:2bc58de441674ad6f2e73875246b42d14d30e15605132348426671bebe3ec49e" -> "sha256:e1c57c763e9c16f4c645d1f7f3e15cd7ff254aedc2bede2c103b4c3cc2e8ccf7" [label=""];
  "sha256:e1c57c763e9c16f4c645d1f7f3e15cd7ff254aedc2bede2c103b4c3cc2e8ccf7" -> "sha256:d644b21b4fa926479aebd0e24a3ef46b03b903651d56bca735b63a204844777f" [label=""];
  "sha256:d644b21b4fa926479aebd0e24a3ef46b03b903651d56bca735b63a204844777f" -> "sha256:3cd4370b135f2caf345456fa46edb6ca2c26811b5739b47cde7b296bb2cdfc2a" [label=""];
}

