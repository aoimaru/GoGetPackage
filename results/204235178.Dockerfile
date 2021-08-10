[app/sources/204235178.Dockerfile]
digraph {
  "sha256:fbbce8b85535ecfe00fccff63bcaee82a92ceb441916a857fd25ff720b0149df" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:3e195135e1538e920edbc16f02d0a3c9593184fb9fb0e156ab36b072702836fa" [label="/bin/sh -c apt-get update && apt-get install -y \tfortunes" shape="box"];
  "sha256:8ec5d9c1f971e87a676da620429536dbea23e312df2a4c2357190535fc206a38" [label="copy{src=/lazyfortune.sh, dest=/opt/}" shape="note"];
  "sha256:e0ff5aad4a463ef86e667546e00428fabd89132b562cb03c88fbc307ab81b4c1" [label="copy{src=/lazyfortune-log.sh, dest=/opt/}" shape="note"];
  "sha256:bbecc36a5cf6208ffcae883d579dc9e17973f0ecb82c557d041667e2b9f5fb61" [label="/bin/sh -c chmod +x /opt/lazyfortune.sh /opt/lazyfortune-log.sh" shape="box"];
  "sha256:33affff73b57ee6b9c6eadfa93fb237b48cfc6ffc1a9d8ee25673877e12a34bc" [label="sha256:33affff73b57ee6b9c6eadfa93fb237b48cfc6ffc1a9d8ee25673877e12a34bc" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:3e195135e1538e920edbc16f02d0a3c9593184fb9fb0e156ab36b072702836fa" [label=""];
  "sha256:3e195135e1538e920edbc16f02d0a3c9593184fb9fb0e156ab36b072702836fa" -> "sha256:8ec5d9c1f971e87a676da620429536dbea23e312df2a4c2357190535fc206a38" [label=""];
  "sha256:fbbce8b85535ecfe00fccff63bcaee82a92ceb441916a857fd25ff720b0149df" -> "sha256:8ec5d9c1f971e87a676da620429536dbea23e312df2a4c2357190535fc206a38" [label=""];
  "sha256:8ec5d9c1f971e87a676da620429536dbea23e312df2a4c2357190535fc206a38" -> "sha256:e0ff5aad4a463ef86e667546e00428fabd89132b562cb03c88fbc307ab81b4c1" [label=""];
  "sha256:fbbce8b85535ecfe00fccff63bcaee82a92ceb441916a857fd25ff720b0149df" -> "sha256:e0ff5aad4a463ef86e667546e00428fabd89132b562cb03c88fbc307ab81b4c1" [label=""];
  "sha256:e0ff5aad4a463ef86e667546e00428fabd89132b562cb03c88fbc307ab81b4c1" -> "sha256:bbecc36a5cf6208ffcae883d579dc9e17973f0ecb82c557d041667e2b9f5fb61" [label=""];
  "sha256:bbecc36a5cf6208ffcae883d579dc9e17973f0ecb82c557d041667e2b9f5fb61" -> "sha256:33affff73b57ee6b9c6eadfa93fb237b48cfc6ffc1a9d8ee25673877e12a34bc" [label=""];
}

