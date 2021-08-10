[app/sources/316176160.Dockerfile]
digraph {
  "sha256:222c841f38abc6478a91ed40256c616d05cba0e9049b43c25246aa69aa0a112b" [label="local://context" shape="ellipse"];
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" [label="docker-image://docker.io/library/nginx:1.9" shape="ellipse"];
  "sha256:d5455cc00009fce57c5227122af8879fd5564b8c845beaa8ee32a6a264d0b7d2" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:d967aa9fc7778c1aabb7b69cc2dbbf0ae8c6bf73c0908b337a0894bd3c3cb04d" [label="copy{src=/registry.conf, dest=/etc/nginx/conf.d/registry.conf}" shape="note"];
  "sha256:690572dbb31fd5b090100afcbd185820b408f7c42e2aa766224aa94693ce6b19" [label="copy{src=/docker-registry-v2.conf, dest=/etc/nginx/docker-registry-v2.conf}" shape="note"];
  "sha256:fbc250c2dd91fb85ef14788e3d0ace1e84baa469576713e05a5319348259ce58" [label="copy{src=/registry-noauth.conf, dest=/etc/nginx/registry-noauth.conf}" shape="note"];
  "sha256:5837aa50bbbe40e3a9829daca425b6ebb4e275268ab8d6051f4a8316b504bc43" [label="copy{src=/registry-basic.conf, dest=/etc/nginx/registry-basic.conf}" shape="note"];
  "sha256:63d88833bcc0168d298e9a600986e9cc5b70fc18c6e8e1972a827460a9c87b21" [label="copy{src=/test.passwd, dest=/etc/nginx/test.passwd}" shape="note"];
  "sha256:1ea9331ffac47151be5c0733f6502449a54d468a63b6186728dbd3ae5c9a5f28" [label="copy{src=/ssl, dest=/etc/nginx/ssl}" shape="note"];
  "sha256:ecb4acdb2f7e3791f768c9d73ef95e080f8361cb48a88746e1550525db753842" [label="copy{src=/v1, dest=/var/www/html/v1}" shape="note"];
  "sha256:2175225f75b1572adebef6d58ef5b00330c250145e9b3a0ffa39c85622832bc0" [label="sha256:2175225f75b1572adebef6d58ef5b00330c250145e9b3a0ffa39c85622832bc0" shape="plaintext"];
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" -> "sha256:d5455cc00009fce57c5227122af8879fd5564b8c845beaa8ee32a6a264d0b7d2" [label=""];
  "sha256:222c841f38abc6478a91ed40256c616d05cba0e9049b43c25246aa69aa0a112b" -> "sha256:d5455cc00009fce57c5227122af8879fd5564b8c845beaa8ee32a6a264d0b7d2" [label=""];
  "sha256:d5455cc00009fce57c5227122af8879fd5564b8c845beaa8ee32a6a264d0b7d2" -> "sha256:d967aa9fc7778c1aabb7b69cc2dbbf0ae8c6bf73c0908b337a0894bd3c3cb04d" [label=""];
  "sha256:222c841f38abc6478a91ed40256c616d05cba0e9049b43c25246aa69aa0a112b" -> "sha256:d967aa9fc7778c1aabb7b69cc2dbbf0ae8c6bf73c0908b337a0894bd3c3cb04d" [label=""];
  "sha256:d967aa9fc7778c1aabb7b69cc2dbbf0ae8c6bf73c0908b337a0894bd3c3cb04d" -> "sha256:690572dbb31fd5b090100afcbd185820b408f7c42e2aa766224aa94693ce6b19" [label=""];
  "sha256:222c841f38abc6478a91ed40256c616d05cba0e9049b43c25246aa69aa0a112b" -> "sha256:690572dbb31fd5b090100afcbd185820b408f7c42e2aa766224aa94693ce6b19" [label=""];
  "sha256:690572dbb31fd5b090100afcbd185820b408f7c42e2aa766224aa94693ce6b19" -> "sha256:fbc250c2dd91fb85ef14788e3d0ace1e84baa469576713e05a5319348259ce58" [label=""];
  "sha256:222c841f38abc6478a91ed40256c616d05cba0e9049b43c25246aa69aa0a112b" -> "sha256:fbc250c2dd91fb85ef14788e3d0ace1e84baa469576713e05a5319348259ce58" [label=""];
  "sha256:fbc250c2dd91fb85ef14788e3d0ace1e84baa469576713e05a5319348259ce58" -> "sha256:5837aa50bbbe40e3a9829daca425b6ebb4e275268ab8d6051f4a8316b504bc43" [label=""];
  "sha256:222c841f38abc6478a91ed40256c616d05cba0e9049b43c25246aa69aa0a112b" -> "sha256:5837aa50bbbe40e3a9829daca425b6ebb4e275268ab8d6051f4a8316b504bc43" [label=""];
  "sha256:5837aa50bbbe40e3a9829daca425b6ebb4e275268ab8d6051f4a8316b504bc43" -> "sha256:63d88833bcc0168d298e9a600986e9cc5b70fc18c6e8e1972a827460a9c87b21" [label=""];
  "sha256:222c841f38abc6478a91ed40256c616d05cba0e9049b43c25246aa69aa0a112b" -> "sha256:63d88833bcc0168d298e9a600986e9cc5b70fc18c6e8e1972a827460a9c87b21" [label=""];
  "sha256:63d88833bcc0168d298e9a600986e9cc5b70fc18c6e8e1972a827460a9c87b21" -> "sha256:1ea9331ffac47151be5c0733f6502449a54d468a63b6186728dbd3ae5c9a5f28" [label=""];
  "sha256:222c841f38abc6478a91ed40256c616d05cba0e9049b43c25246aa69aa0a112b" -> "sha256:1ea9331ffac47151be5c0733f6502449a54d468a63b6186728dbd3ae5c9a5f28" [label=""];
  "sha256:1ea9331ffac47151be5c0733f6502449a54d468a63b6186728dbd3ae5c9a5f28" -> "sha256:ecb4acdb2f7e3791f768c9d73ef95e080f8361cb48a88746e1550525db753842" [label=""];
  "sha256:222c841f38abc6478a91ed40256c616d05cba0e9049b43c25246aa69aa0a112b" -> "sha256:ecb4acdb2f7e3791f768c9d73ef95e080f8361cb48a88746e1550525db753842" [label=""];
  "sha256:ecb4acdb2f7e3791f768c9d73ef95e080f8361cb48a88746e1550525db753842" -> "sha256:2175225f75b1572adebef6d58ef5b00330c250145e9b3a0ffa39c85622832bc0" [label=""];
}

