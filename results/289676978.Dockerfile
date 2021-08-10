[app/sources/289676978.Dockerfile]
digraph {
  "sha256:e79c97bb5d4131bd1349beddba0db15ffb66f62cdbf8fe3f9e73b96e0af96341" [label="local://context" shape="ellipse"];
  "sha256:2d88e61e4ea8706869a3eca2100c6d81026f774276d44f0f76e886be8bf5936f" [label="docker-image://docker.io/library/node:8.16.0-alpine" shape="ellipse"];
  "sha256:374a6ac967445e960a014308131e08cffdabb7c1896ea899347261c778a1d4bb" [label="/bin/sh -c apk add --no-cache git openssh" shape="box"];
  "sha256:2d4f706db4f5de94cc5357d8d768d768a0a849fd725f1a8f9e51d00c33d4d13f" [label="/bin/sh -c apk add --no-cache     python     python-dev     py-pip     build-base   && pip install virtualenv" shape="box"];
  "sha256:8bec92cb71087e43b035d3f5c17353983b83fb2d4eb09280654b448b2018e23c" [label="/bin/sh -c npm install -g npm@6.4.1" shape="box"];
  "sha256:c48a18c0d92517ef5c1845b4c1b1f405c10b3e13686dee1f7c10b10f4979dae3" [label="/bin/sh -c mkdir /locksmith" shape="box"];
  "sha256:9cac0647df7f37617d5566a076c6696d1cd8f8e7684f3edf99b9b4238acf922d" [label="copy{src=/package-lock.json, dest=/locksmith}" shape="note"];
  "sha256:6d2a9ee620cc19e2583140ae883a287044c9502f0c95dc37f2c32ad14d0fa4d4" [label="copy{src=/package.json, dest=/locksmith}" shape="note"];
  "sha256:78f6554169298189d10c91f431049e5b904fd301fa14fcd67a93ea6b66d4f375" [label="mkdir{path=/locksmith}" shape="note"];
  "sha256:f039cc3b80bbfe6f4183a8a070442cb124192707d2db805cbc75bef4d1fc0553" [label="/bin/sh -c npm ci --production" shape="box"];
  "sha256:6acc82c02dafcf2444e21ac555e599b2e5ca8ebcf46fed409fb14266a416fe0f" [label="mkdir{path=/locksmith}" shape="note"];
  "sha256:e70ef28647c3c1362a150df631f3b756e7ed738f10508ef55d61f7ee10013924" [label="copy{src=/, dest=/locksmith}" shape="note"];
  "sha256:418e32f6034e9c2fe72196d0cd4b044a3464f136a93083eeac2afdce5f221b30" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:2891fdd1c3bdbd30c2ed43dbe44e8b6ab6ae9bef2a49346e2e0dcc254b6de130" [label="sha256:2891fdd1c3bdbd30c2ed43dbe44e8b6ab6ae9bef2a49346e2e0dcc254b6de130" shape="plaintext"];
  "sha256:2d88e61e4ea8706869a3eca2100c6d81026f774276d44f0f76e886be8bf5936f" -> "sha256:374a6ac967445e960a014308131e08cffdabb7c1896ea899347261c778a1d4bb" [label=""];
  "sha256:374a6ac967445e960a014308131e08cffdabb7c1896ea899347261c778a1d4bb" -> "sha256:2d4f706db4f5de94cc5357d8d768d768a0a849fd725f1a8f9e51d00c33d4d13f" [label=""];
  "sha256:2d4f706db4f5de94cc5357d8d768d768a0a849fd725f1a8f9e51d00c33d4d13f" -> "sha256:8bec92cb71087e43b035d3f5c17353983b83fb2d4eb09280654b448b2018e23c" [label=""];
  "sha256:8bec92cb71087e43b035d3f5c17353983b83fb2d4eb09280654b448b2018e23c" -> "sha256:c48a18c0d92517ef5c1845b4c1b1f405c10b3e13686dee1f7c10b10f4979dae3" [label=""];
  "sha256:c48a18c0d92517ef5c1845b4c1b1f405c10b3e13686dee1f7c10b10f4979dae3" -> "sha256:9cac0647df7f37617d5566a076c6696d1cd8f8e7684f3edf99b9b4238acf922d" [label=""];
  "sha256:e79c97bb5d4131bd1349beddba0db15ffb66f62cdbf8fe3f9e73b96e0af96341" -> "sha256:9cac0647df7f37617d5566a076c6696d1cd8f8e7684f3edf99b9b4238acf922d" [label=""];
  "sha256:9cac0647df7f37617d5566a076c6696d1cd8f8e7684f3edf99b9b4238acf922d" -> "sha256:6d2a9ee620cc19e2583140ae883a287044c9502f0c95dc37f2c32ad14d0fa4d4" [label=""];
  "sha256:e79c97bb5d4131bd1349beddba0db15ffb66f62cdbf8fe3f9e73b96e0af96341" -> "sha256:6d2a9ee620cc19e2583140ae883a287044c9502f0c95dc37f2c32ad14d0fa4d4" [label=""];
  "sha256:6d2a9ee620cc19e2583140ae883a287044c9502f0c95dc37f2c32ad14d0fa4d4" -> "sha256:78f6554169298189d10c91f431049e5b904fd301fa14fcd67a93ea6b66d4f375" [label=""];
  "sha256:78f6554169298189d10c91f431049e5b904fd301fa14fcd67a93ea6b66d4f375" -> "sha256:f039cc3b80bbfe6f4183a8a070442cb124192707d2db805cbc75bef4d1fc0553" [label=""];
  "sha256:f039cc3b80bbfe6f4183a8a070442cb124192707d2db805cbc75bef4d1fc0553" -> "sha256:6acc82c02dafcf2444e21ac555e599b2e5ca8ebcf46fed409fb14266a416fe0f" [label=""];
  "sha256:6acc82c02dafcf2444e21ac555e599b2e5ca8ebcf46fed409fb14266a416fe0f" -> "sha256:e70ef28647c3c1362a150df631f3b756e7ed738f10508ef55d61f7ee10013924" [label=""];
  "sha256:e79c97bb5d4131bd1349beddba0db15ffb66f62cdbf8fe3f9e73b96e0af96341" -> "sha256:e70ef28647c3c1362a150df631f3b756e7ed738f10508ef55d61f7ee10013924" [label=""];
  "sha256:e70ef28647c3c1362a150df631f3b756e7ed738f10508ef55d61f7ee10013924" -> "sha256:418e32f6034e9c2fe72196d0cd4b044a3464f136a93083eeac2afdce5f221b30" [label=""];
  "sha256:418e32f6034e9c2fe72196d0cd4b044a3464f136a93083eeac2afdce5f221b30" -> "sha256:2891fdd1c3bdbd30c2ed43dbe44e8b6ab6ae9bef2a49346e2e0dcc254b6de130" [label=""];
}

