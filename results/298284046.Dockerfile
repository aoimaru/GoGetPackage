[app/sources/298284046.Dockerfile]
digraph {
  "sha256:c6e229c6a3e80d8311bbd96088e7fdfe330a59c9b08dd48f072a9b104aa9c3e1" [label="docker-image://gcr.io/chainpoint-registry/github-chainpoint-chainpoint-services/node-base@sha256:fd2f366acd83bc48c9c215074e8da11b05d456034349fa4226f757ab494b0851" shape="ellipse"];
  "sha256:43eda29087137e78094782a1809b4cb70ece9e725698d879e64d4772a655bce5" [label="local://context" shape="ellipse"];
  "sha256:313ec9b461ab129e1ec9630ae1e6c70551d05846192ef66cdec6a38fdb1ac82f" [label="copy{src=/node-lib/lib, dest=/home/node/app/lib}" shape="note"];
  "sha256:830c263cfbc6a1540b5b6a313252747e36403a7f1af0e47aa2563724370d18b4" [label="copy{src=/node-eth-contracts/package.json, dest=/home/node/app/},copy{src=/node-eth-contracts/yarn.lock, dest=/home/node/app/}" shape="note"];
  "sha256:e3ce8e2794319575c184ecf87f8889e5371191e226c53feb086d16f5d0b092b7" [label="/bin/sh -c yarn" shape="box"];
  "sha256:2bc75b35e30ab4ffc2020779cc7e49ef1c4a9005d0afa6e3ac5fba81ccec8172" [label="copy{src=/node-eth-contracts/build, dest=/home/node/app/build/}" shape="note"];
  "sha256:67a1930d1f37637480e9b7cea5b5b05261ca089b1f9f358d6d6841869fa61aa0" [label="copy{src=/node-eth-contracts/contracts, dest=/home/node/app/contracts/}" shape="note"];
  "sha256:71c866e985cc26f75e8feb1797cd460251b1f7f6ce9f44285130609fa10a6a61" [label="copy{src=/node-eth-contracts/migrations, dest=/home/node/app/migrations/}" shape="note"];
  "sha256:596f49ec66a8f919a625beee74bd4a301685304afbf74ac4a4f2aeb35ba0db31" [label="copy{src=/node-eth-contracts/scripts, dest=/home/node/app/scripts/}" shape="note"];
  "sha256:33286919b7d9fe1e443edc6788eefdea05abffd9cb5d6e93b572114458b7e0da" [label="copy{src=/node-eth-contracts/test, dest=/home/node/app/test/}" shape="note"];
  "sha256:95d9296ad975c55521a61766a32044f3fe817ae1ae2502dee12de02f210757e0" [label="copy{src=/node-eth-contracts/truffle.js, dest=/home/node/app/}" shape="note"];
  "sha256:70bad7a08e3c7d9aa0d92542a88a2bcefaa8434ad9bb3de846fdfde5569dab45" [label="sha256:70bad7a08e3c7d9aa0d92542a88a2bcefaa8434ad9bb3de846fdfde5569dab45" shape="plaintext"];
  "sha256:c6e229c6a3e80d8311bbd96088e7fdfe330a59c9b08dd48f072a9b104aa9c3e1" -> "sha256:313ec9b461ab129e1ec9630ae1e6c70551d05846192ef66cdec6a38fdb1ac82f" [label=""];
  "sha256:43eda29087137e78094782a1809b4cb70ece9e725698d879e64d4772a655bce5" -> "sha256:313ec9b461ab129e1ec9630ae1e6c70551d05846192ef66cdec6a38fdb1ac82f" [label=""];
  "sha256:313ec9b461ab129e1ec9630ae1e6c70551d05846192ef66cdec6a38fdb1ac82f" -> "sha256:830c263cfbc6a1540b5b6a313252747e36403a7f1af0e47aa2563724370d18b4" [label=""];
  "sha256:43eda29087137e78094782a1809b4cb70ece9e725698d879e64d4772a655bce5" -> "sha256:830c263cfbc6a1540b5b6a313252747e36403a7f1af0e47aa2563724370d18b4" [label=""];
  "sha256:830c263cfbc6a1540b5b6a313252747e36403a7f1af0e47aa2563724370d18b4" -> "sha256:e3ce8e2794319575c184ecf87f8889e5371191e226c53feb086d16f5d0b092b7" [label=""];
  "sha256:e3ce8e2794319575c184ecf87f8889e5371191e226c53feb086d16f5d0b092b7" -> "sha256:2bc75b35e30ab4ffc2020779cc7e49ef1c4a9005d0afa6e3ac5fba81ccec8172" [label=""];
  "sha256:43eda29087137e78094782a1809b4cb70ece9e725698d879e64d4772a655bce5" -> "sha256:2bc75b35e30ab4ffc2020779cc7e49ef1c4a9005d0afa6e3ac5fba81ccec8172" [label=""];
  "sha256:2bc75b35e30ab4ffc2020779cc7e49ef1c4a9005d0afa6e3ac5fba81ccec8172" -> "sha256:67a1930d1f37637480e9b7cea5b5b05261ca089b1f9f358d6d6841869fa61aa0" [label=""];
  "sha256:43eda29087137e78094782a1809b4cb70ece9e725698d879e64d4772a655bce5" -> "sha256:67a1930d1f37637480e9b7cea5b5b05261ca089b1f9f358d6d6841869fa61aa0" [label=""];
  "sha256:67a1930d1f37637480e9b7cea5b5b05261ca089b1f9f358d6d6841869fa61aa0" -> "sha256:71c866e985cc26f75e8feb1797cd460251b1f7f6ce9f44285130609fa10a6a61" [label=""];
  "sha256:43eda29087137e78094782a1809b4cb70ece9e725698d879e64d4772a655bce5" -> "sha256:71c866e985cc26f75e8feb1797cd460251b1f7f6ce9f44285130609fa10a6a61" [label=""];
  "sha256:71c866e985cc26f75e8feb1797cd460251b1f7f6ce9f44285130609fa10a6a61" -> "sha256:596f49ec66a8f919a625beee74bd4a301685304afbf74ac4a4f2aeb35ba0db31" [label=""];
  "sha256:43eda29087137e78094782a1809b4cb70ece9e725698d879e64d4772a655bce5" -> "sha256:596f49ec66a8f919a625beee74bd4a301685304afbf74ac4a4f2aeb35ba0db31" [label=""];
  "sha256:596f49ec66a8f919a625beee74bd4a301685304afbf74ac4a4f2aeb35ba0db31" -> "sha256:33286919b7d9fe1e443edc6788eefdea05abffd9cb5d6e93b572114458b7e0da" [label=""];
  "sha256:43eda29087137e78094782a1809b4cb70ece9e725698d879e64d4772a655bce5" -> "sha256:33286919b7d9fe1e443edc6788eefdea05abffd9cb5d6e93b572114458b7e0da" [label=""];
  "sha256:33286919b7d9fe1e443edc6788eefdea05abffd9cb5d6e93b572114458b7e0da" -> "sha256:95d9296ad975c55521a61766a32044f3fe817ae1ae2502dee12de02f210757e0" [label=""];
  "sha256:43eda29087137e78094782a1809b4cb70ece9e725698d879e64d4772a655bce5" -> "sha256:95d9296ad975c55521a61766a32044f3fe817ae1ae2502dee12de02f210757e0" [label=""];
  "sha256:95d9296ad975c55521a61766a32044f3fe817ae1ae2502dee12de02f210757e0" -> "sha256:70bad7a08e3c7d9aa0d92542a88a2bcefaa8434ad9bb3de846fdfde5569dab45" [label=""];
}

