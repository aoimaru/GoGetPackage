[app/sources/298076024.Dockerfile]
digraph {
  "sha256:1a5f0c73070d650a8eda7ab3eee52f5cbdcbde49ee5cb562ea94a3c171d9ad69" [label="docker-image://docker.io/library/node:7" shape="ellipse"];
  "sha256:de8efd79b2a3e78bdf97e6fd6036f7346fe63a142bd4ab2ffbc283bca6cdc639" [label="local://context" shape="ellipse"];
  "sha256:023267ea3eef7736b67eff8fe0b488b1be0ed51fd09803d1e628d0ef46bc3d62" [label="copy{src=/package.json, dest=/tmp/package.json}" shape="note"];
  "sha256:1a5b963e09ef42b983156a861a99a60410ad3c0490b85474cf93301fcb5e0be9" [label="/bin/sh -c cd /tmp && npm install" shape="box"];
  "sha256:ffed322ac3d38962da9225568e229e7b6d92a5b43081578c953b15597976050d" [label="/bin/sh -c mkdir -p /app && cp -a /tmp/node_modules /app/" shape="box"];
  "sha256:bb375a58406ddaba21cbea9821585084b2e6030e50bf37fdca536a4599fff373" [label="mkdir{path=/app}" shape="note"];
  "sha256:a9385bdbb1b494628c0ae503703e4f2e3214bbf07bda4da226e89c91f52930f1" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:12b329595dba59cb1068f1e4caecbf5bdf14ce6446666836f9c17fc79a4c8f70" [label="/bin/sh -c npm install" shape="box"];
  "sha256:9dc6f20dcc93592ff29e247ce1c2d4e4bc22b58b07f38fcae16e3d5e70ef9088" [label="sha256:9dc6f20dcc93592ff29e247ce1c2d4e4bc22b58b07f38fcae16e3d5e70ef9088" shape="plaintext"];
  "sha256:1a5f0c73070d650a8eda7ab3eee52f5cbdcbde49ee5cb562ea94a3c171d9ad69" -> "sha256:023267ea3eef7736b67eff8fe0b488b1be0ed51fd09803d1e628d0ef46bc3d62" [label=""];
  "sha256:de8efd79b2a3e78bdf97e6fd6036f7346fe63a142bd4ab2ffbc283bca6cdc639" -> "sha256:023267ea3eef7736b67eff8fe0b488b1be0ed51fd09803d1e628d0ef46bc3d62" [label=""];
  "sha256:023267ea3eef7736b67eff8fe0b488b1be0ed51fd09803d1e628d0ef46bc3d62" -> "sha256:1a5b963e09ef42b983156a861a99a60410ad3c0490b85474cf93301fcb5e0be9" [label=""];
  "sha256:1a5b963e09ef42b983156a861a99a60410ad3c0490b85474cf93301fcb5e0be9" -> "sha256:ffed322ac3d38962da9225568e229e7b6d92a5b43081578c953b15597976050d" [label=""];
  "sha256:ffed322ac3d38962da9225568e229e7b6d92a5b43081578c953b15597976050d" -> "sha256:bb375a58406ddaba21cbea9821585084b2e6030e50bf37fdca536a4599fff373" [label=""];
  "sha256:bb375a58406ddaba21cbea9821585084b2e6030e50bf37fdca536a4599fff373" -> "sha256:a9385bdbb1b494628c0ae503703e4f2e3214bbf07bda4da226e89c91f52930f1" [label=""];
  "sha256:de8efd79b2a3e78bdf97e6fd6036f7346fe63a142bd4ab2ffbc283bca6cdc639" -> "sha256:a9385bdbb1b494628c0ae503703e4f2e3214bbf07bda4da226e89c91f52930f1" [label=""];
  "sha256:a9385bdbb1b494628c0ae503703e4f2e3214bbf07bda4da226e89c91f52930f1" -> "sha256:12b329595dba59cb1068f1e4caecbf5bdf14ce6446666836f9c17fc79a4c8f70" [label=""];
  "sha256:12b329595dba59cb1068f1e4caecbf5bdf14ce6446666836f9c17fc79a4c8f70" -> "sha256:9dc6f20dcc93592ff29e247ce1c2d4e4bc22b58b07f38fcae16e3d5e70ef9088" [label=""];
}

