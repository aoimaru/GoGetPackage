[app/sources/199513306.Dockerfile]
digraph {
  "sha256:1d3c61b6f621ed65d293f03d01718a26655a1c1ee7142ef375a41366153af0c9" [label="docker-image://docker.io/library/node:10-stretch" shape="ellipse"];
  "sha256:598549bd2fae0aa990666045377ef1f33b3091f1bafe897867f9b73c4d9164a9" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:52fc6f654efb26df1735f56afb4e50f266a0c86623bd0337ee3567c8679f1624" [label="local://context" shape="ellipse"];
  "sha256:b9148fbab382c10ace83a3baf1c8a8efb24a85ccb90e7a595e8ce1979872d1fc" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:5ed490c28d62f909df34e6344534a22225ffd0c908bf132698107b735dff8142" [label="/bin/sh -c npm install" shape="box"];
  "sha256:a52a7a90a3e4adc00700d02a411708dda9812d9c36fc61a235b7dbf44232033e" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:2b703e5ffa763b5d05d9118438aadb66064b30b5fc76bb33a16c14c9b266b4a9" [label="sha256:2b703e5ffa763b5d05d9118438aadb66064b30b5fc76bb33a16c14c9b266b4a9" shape="plaintext"];
  "sha256:1d3c61b6f621ed65d293f03d01718a26655a1c1ee7142ef375a41366153af0c9" -> "sha256:598549bd2fae0aa990666045377ef1f33b3091f1bafe897867f9b73c4d9164a9" [label=""];
  "sha256:598549bd2fae0aa990666045377ef1f33b3091f1bafe897867f9b73c4d9164a9" -> "sha256:b9148fbab382c10ace83a3baf1c8a8efb24a85ccb90e7a595e8ce1979872d1fc" [label=""];
  "sha256:52fc6f654efb26df1735f56afb4e50f266a0c86623bd0337ee3567c8679f1624" -> "sha256:b9148fbab382c10ace83a3baf1c8a8efb24a85ccb90e7a595e8ce1979872d1fc" [label=""];
  "sha256:b9148fbab382c10ace83a3baf1c8a8efb24a85ccb90e7a595e8ce1979872d1fc" -> "sha256:5ed490c28d62f909df34e6344534a22225ffd0c908bf132698107b735dff8142" [label=""];
  "sha256:5ed490c28d62f909df34e6344534a22225ffd0c908bf132698107b735dff8142" -> "sha256:a52a7a90a3e4adc00700d02a411708dda9812d9c36fc61a235b7dbf44232033e" [label=""];
  "sha256:52fc6f654efb26df1735f56afb4e50f266a0c86623bd0337ee3567c8679f1624" -> "sha256:a52a7a90a3e4adc00700d02a411708dda9812d9c36fc61a235b7dbf44232033e" [label=""];
  "sha256:a52a7a90a3e4adc00700d02a411708dda9812d9c36fc61a235b7dbf44232033e" -> "sha256:2b703e5ffa763b5d05d9118438aadb66064b30b5fc76bb33a16c14c9b266b4a9" [label=""];
}

