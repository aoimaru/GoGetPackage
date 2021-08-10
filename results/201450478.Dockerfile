[app/sources/201450478.Dockerfile]
digraph {
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" [label="docker-image://docker.io/library/node:0.10" shape="ellipse"];
  "sha256:b3195ade9c9afb3af66e2a221e710e27e346cd475f40107db2d6171831dfad1c" [label="local://context" shape="ellipse"];
  "sha256:2cfaf539a375f376f91a5d1b26cd26c4fb9919d9e40597c32afea14111e97512" [label="copy{src=/package.json, dest=/src/package.json}" shape="note"];
  "sha256:e12b0c710cf33340049a7b1b7a575f76b1864eb9b2bb711000825375e72d9f4e" [label="copy{src=/server.js, dest=/src/server.js}" shape="note"];
  "sha256:d89a539db31b0ab55140da447ce931ea9c94399bdd356ae1f351ba9d73ff8514" [label="mkdir{path=/src}" shape="note"];
  "sha256:2d39c59892fc55939c1801579b2b7efa00128b86c575e4e1ba3fbdfe8482bbf5" [label="/bin/sh -c npm install" shape="box"];
  "sha256:7d367bc9d13ec7544fc22e4982e5394ad4535233e3aedb241758ee8333cd143c" [label="sha256:7d367bc9d13ec7544fc22e4982e5394ad4535233e3aedb241758ee8333cd143c" shape="plaintext"];
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" -> "sha256:2cfaf539a375f376f91a5d1b26cd26c4fb9919d9e40597c32afea14111e97512" [label=""];
  "sha256:b3195ade9c9afb3af66e2a221e710e27e346cd475f40107db2d6171831dfad1c" -> "sha256:2cfaf539a375f376f91a5d1b26cd26c4fb9919d9e40597c32afea14111e97512" [label=""];
  "sha256:2cfaf539a375f376f91a5d1b26cd26c4fb9919d9e40597c32afea14111e97512" -> "sha256:e12b0c710cf33340049a7b1b7a575f76b1864eb9b2bb711000825375e72d9f4e" [label=""];
  "sha256:b3195ade9c9afb3af66e2a221e710e27e346cd475f40107db2d6171831dfad1c" -> "sha256:e12b0c710cf33340049a7b1b7a575f76b1864eb9b2bb711000825375e72d9f4e" [label=""];
  "sha256:e12b0c710cf33340049a7b1b7a575f76b1864eb9b2bb711000825375e72d9f4e" -> "sha256:d89a539db31b0ab55140da447ce931ea9c94399bdd356ae1f351ba9d73ff8514" [label=""];
  "sha256:d89a539db31b0ab55140da447ce931ea9c94399bdd356ae1f351ba9d73ff8514" -> "sha256:2d39c59892fc55939c1801579b2b7efa00128b86c575e4e1ba3fbdfe8482bbf5" [label=""];
  "sha256:2d39c59892fc55939c1801579b2b7efa00128b86c575e4e1ba3fbdfe8482bbf5" -> "sha256:7d367bc9d13ec7544fc22e4982e5394ad4535233e3aedb241758ee8333cd143c" [label=""];
}

