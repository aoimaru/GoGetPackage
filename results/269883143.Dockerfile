[app/sources/269883143.Dockerfile]
digraph {
  "sha256:55ecb2080aa9040f3cafeac94f1e3c59fca5e28c9d8b3b69b9e6ebf551bfe3b9" [label="docker-image://idock.daumkakao.io/kakaobrain/deepcloud-sshd:openpose-preprocess" shape="ellipse"];
  "sha256:75677d764510f418af5a02abb6c54c419545146451a4fc6f83c62310bb5776c6" [label="local://context" shape="ellipse"];
  "sha256:f364916ca3e2bdc0622bae87a6a2b859a00de218e6e2cdcf221f78a1121816b6" [label="copy{src=/*.py, dest=/root/tf-openpose/}" shape="note"];
  "sha256:3ad7e80d6181f0f055f2ea401d17bcdfc53e7c38f7a9f14f3493b919cda23087" [label="mkdir{path=/root/tf-openpose}" shape="note"];
  "sha256:275f1aaaa9842d0b1a300719a4472870c28dc4b5acb25915c090fc74bcce0e7b" [label="/bin/sh -c cd /root/tf-openpose/ && pip3 install -r requirements.txt" shape="box"];
  "sha256:1359560cf93921880bd92315dffb90d7127a8f540a0f1236e50549455847a276" [label="sha256:1359560cf93921880bd92315dffb90d7127a8f540a0f1236e50549455847a276" shape="plaintext"];
  "sha256:55ecb2080aa9040f3cafeac94f1e3c59fca5e28c9d8b3b69b9e6ebf551bfe3b9" -> "sha256:f364916ca3e2bdc0622bae87a6a2b859a00de218e6e2cdcf221f78a1121816b6" [label=""];
  "sha256:75677d764510f418af5a02abb6c54c419545146451a4fc6f83c62310bb5776c6" -> "sha256:f364916ca3e2bdc0622bae87a6a2b859a00de218e6e2cdcf221f78a1121816b6" [label=""];
  "sha256:f364916ca3e2bdc0622bae87a6a2b859a00de218e6e2cdcf221f78a1121816b6" -> "sha256:3ad7e80d6181f0f055f2ea401d17bcdfc53e7c38f7a9f14f3493b919cda23087" [label=""];
  "sha256:3ad7e80d6181f0f055f2ea401d17bcdfc53e7c38f7a9f14f3493b919cda23087" -> "sha256:275f1aaaa9842d0b1a300719a4472870c28dc4b5acb25915c090fc74bcce0e7b" [label=""];
  "sha256:275f1aaaa9842d0b1a300719a4472870c28dc4b5acb25915c090fc74bcce0e7b" -> "sha256:1359560cf93921880bd92315dffb90d7127a8f540a0f1236e50549455847a276" [label=""];
}

