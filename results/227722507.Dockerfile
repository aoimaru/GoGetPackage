[app/sources/227722507.Dockerfile]
digraph {
  "sha256:a690620e05908ba5451fa8cba315e3929defd944fd2f0f24a18202aab3432605" [label="local://context" shape="ellipse"];
  "sha256:1489c036cd8df1cc1a92516988ce4a5f7a6af0bd17b466d524dfe5c79ab0d5eb" [label="docker-image://docker.io/library/node:9.11" shape="ellipse"];
  "sha256:b85d5c902dcd4e71bc29fc1a2144ff350369f765382c4e0274d5f942688f428c" [label="mkdir{path=/home/node/angular-seed}" shape="note"];
  "sha256:88e8747d391c087c313fef6d3219cc398a1082fa756d8733c49f8d9fb2d599bb" [label="copy{src=/package.json, dest=/home/node/angular-seed/}" shape="note"];
  "sha256:d0c2f794f42c74b0a8c33fb2ed74dc390be469dc19801c00041863058406a568" [label="copy{src=/package-lock.json, dest=/home/node/angular-seed/}" shape="note"];
  "sha256:31c87f6ccf7db2fafe0ed424f8e5c1a22ba58f827ab4a34c2f084c07731fbfdf" [label="copy{src=/gulpfile.ts, dest=/home/node/angular-seed/}" shape="note"];
  "sha256:c49e6f5116d848be434510256da4bf90b362ed6b7a7c805600c78a80ed26d797" [label="copy{src=/tsconfig.json, dest=/home/node/angular-seed/}" shape="note"];
  "sha256:9a0f9914d290537bb85b7bf2edbb6c9d32598d52fb0de427b26126b7efbeb7f7" [label="copy{src=/tslint.json, dest=/home/node/angular-seed/}" shape="note"];
  "sha256:46f466ca582837f2d27b2188e88e244c094985b6c225e6acf98aae8173c64540" [label="copy{src=/tools, dest=/home/node/angular-seed/tools/}" shape="note"];
  "sha256:236271b07f0c1b1a9aec484c0609e187fd8a18a124b752eaccc97ff90ae40c04" [label="copy{src=/.docker/rm.optional.deps.js, dest=/home/node/angular-seed/.docker/rm.optional.deps.js}" shape="note"];
  "sha256:107851a2ca303a41c15c4f02c748c966928254b0fe8349382e2cb3f774dfae20" [label="/bin/sh -c chown -R node:node ." shape="box"];
  "sha256:29df4bf4c66fd5f0d1733275f38a8f44aabe24af9e5934cea1876a68cb166611" [label="/bin/sh -c node .docker/rm.optional.deps.js" shape="box"];
  "sha256:4fe08154f132d8e0c2212f776f375b57978a693726f40ce5de2b48e24eee8aaf" [label="/bin/sh -c npm install --no-optional" shape="box"];
  "sha256:f965f9185b4cebcbacb56c1004eabc424e8a76369ce16640623e48c699e8c2d9" [label="sha256:f965f9185b4cebcbacb56c1004eabc424e8a76369ce16640623e48c699e8c2d9" shape="plaintext"];
  "sha256:1489c036cd8df1cc1a92516988ce4a5f7a6af0bd17b466d524dfe5c79ab0d5eb" -> "sha256:b85d5c902dcd4e71bc29fc1a2144ff350369f765382c4e0274d5f942688f428c" [label=""];
  "sha256:b85d5c902dcd4e71bc29fc1a2144ff350369f765382c4e0274d5f942688f428c" -> "sha256:88e8747d391c087c313fef6d3219cc398a1082fa756d8733c49f8d9fb2d599bb" [label=""];
  "sha256:a690620e05908ba5451fa8cba315e3929defd944fd2f0f24a18202aab3432605" -> "sha256:88e8747d391c087c313fef6d3219cc398a1082fa756d8733c49f8d9fb2d599bb" [label=""];
  "sha256:88e8747d391c087c313fef6d3219cc398a1082fa756d8733c49f8d9fb2d599bb" -> "sha256:d0c2f794f42c74b0a8c33fb2ed74dc390be469dc19801c00041863058406a568" [label=""];
  "sha256:a690620e05908ba5451fa8cba315e3929defd944fd2f0f24a18202aab3432605" -> "sha256:d0c2f794f42c74b0a8c33fb2ed74dc390be469dc19801c00041863058406a568" [label=""];
  "sha256:d0c2f794f42c74b0a8c33fb2ed74dc390be469dc19801c00041863058406a568" -> "sha256:31c87f6ccf7db2fafe0ed424f8e5c1a22ba58f827ab4a34c2f084c07731fbfdf" [label=""];
  "sha256:a690620e05908ba5451fa8cba315e3929defd944fd2f0f24a18202aab3432605" -> "sha256:31c87f6ccf7db2fafe0ed424f8e5c1a22ba58f827ab4a34c2f084c07731fbfdf" [label=""];
  "sha256:31c87f6ccf7db2fafe0ed424f8e5c1a22ba58f827ab4a34c2f084c07731fbfdf" -> "sha256:c49e6f5116d848be434510256da4bf90b362ed6b7a7c805600c78a80ed26d797" [label=""];
  "sha256:a690620e05908ba5451fa8cba315e3929defd944fd2f0f24a18202aab3432605" -> "sha256:c49e6f5116d848be434510256da4bf90b362ed6b7a7c805600c78a80ed26d797" [label=""];
  "sha256:c49e6f5116d848be434510256da4bf90b362ed6b7a7c805600c78a80ed26d797" -> "sha256:9a0f9914d290537bb85b7bf2edbb6c9d32598d52fb0de427b26126b7efbeb7f7" [label=""];
  "sha256:a690620e05908ba5451fa8cba315e3929defd944fd2f0f24a18202aab3432605" -> "sha256:9a0f9914d290537bb85b7bf2edbb6c9d32598d52fb0de427b26126b7efbeb7f7" [label=""];
  "sha256:9a0f9914d290537bb85b7bf2edbb6c9d32598d52fb0de427b26126b7efbeb7f7" -> "sha256:46f466ca582837f2d27b2188e88e244c094985b6c225e6acf98aae8173c64540" [label=""];
  "sha256:a690620e05908ba5451fa8cba315e3929defd944fd2f0f24a18202aab3432605" -> "sha256:46f466ca582837f2d27b2188e88e244c094985b6c225e6acf98aae8173c64540" [label=""];
  "sha256:46f466ca582837f2d27b2188e88e244c094985b6c225e6acf98aae8173c64540" -> "sha256:236271b07f0c1b1a9aec484c0609e187fd8a18a124b752eaccc97ff90ae40c04" [label=""];
  "sha256:a690620e05908ba5451fa8cba315e3929defd944fd2f0f24a18202aab3432605" -> "sha256:236271b07f0c1b1a9aec484c0609e187fd8a18a124b752eaccc97ff90ae40c04" [label=""];
  "sha256:236271b07f0c1b1a9aec484c0609e187fd8a18a124b752eaccc97ff90ae40c04" -> "sha256:107851a2ca303a41c15c4f02c748c966928254b0fe8349382e2cb3f774dfae20" [label=""];
  "sha256:107851a2ca303a41c15c4f02c748c966928254b0fe8349382e2cb3f774dfae20" -> "sha256:29df4bf4c66fd5f0d1733275f38a8f44aabe24af9e5934cea1876a68cb166611" [label=""];
  "sha256:29df4bf4c66fd5f0d1733275f38a8f44aabe24af9e5934cea1876a68cb166611" -> "sha256:4fe08154f132d8e0c2212f776f375b57978a693726f40ce5de2b48e24eee8aaf" [label=""];
  "sha256:4fe08154f132d8e0c2212f776f375b57978a693726f40ce5de2b48e24eee8aaf" -> "sha256:f965f9185b4cebcbacb56c1004eabc424e8a76369ce16640623e48c699e8c2d9" [label=""];
}

