[app/sources/270234391.Dockerfile]
digraph {
  "sha256:73149f8ad8bdf84327997244ef88398c9d8778373f323a003491469363922633" [label="docker-image://docker.io/library/node:7.10-wheezy" shape="ellipse"];
  "sha256:436c5007c74080ee6e3085da34d17637c610d005dfa3dc8b5b0e685ab077d7a4" [label="/bin/sh -c npm install web3" shape="box"];
  "sha256:f3125312ab956485961c03493b78a8e2011d11c072dc0f9a16d99dfdcae26421" [label="/bin/sh -c npm install bignumber.js" shape="box"];
  "sha256:44278de57e08588c7ee9d0c4b223c2729931380f52be7a10540cc15f38040a65" [label="local://context" shape="ellipse"];
  "sha256:dd70166bcb520e1c9468fa87bec8c67d0587ad8fceef66627857f604b3cf0c05" [label="copy{src=/tokenTransferLogs-vs-currentBalance.js, dest=/tokenTransferLogs-vs-currentBalance.js}" shape="note"];
  "sha256:cfd246ab49816341a4681d91c79f35108152f8ba4f46d49251224115bc6bf55b" [label="sha256:cfd246ab49816341a4681d91c79f35108152f8ba4f46d49251224115bc6bf55b" shape="plaintext"];
  "sha256:73149f8ad8bdf84327997244ef88398c9d8778373f323a003491469363922633" -> "sha256:436c5007c74080ee6e3085da34d17637c610d005dfa3dc8b5b0e685ab077d7a4" [label=""];
  "sha256:436c5007c74080ee6e3085da34d17637c610d005dfa3dc8b5b0e685ab077d7a4" -> "sha256:f3125312ab956485961c03493b78a8e2011d11c072dc0f9a16d99dfdcae26421" [label=""];
  "sha256:f3125312ab956485961c03493b78a8e2011d11c072dc0f9a16d99dfdcae26421" -> "sha256:dd70166bcb520e1c9468fa87bec8c67d0587ad8fceef66627857f604b3cf0c05" [label=""];
  "sha256:44278de57e08588c7ee9d0c4b223c2729931380f52be7a10540cc15f38040a65" -> "sha256:dd70166bcb520e1c9468fa87bec8c67d0587ad8fceef66627857f604b3cf0c05" [label=""];
  "sha256:dd70166bcb520e1c9468fa87bec8c67d0587ad8fceef66627857f604b3cf0c05" -> "sha256:cfd246ab49816341a4681d91c79f35108152f8ba4f46d49251224115bc6bf55b" [label=""];
}

