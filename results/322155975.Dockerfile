[app/sources/322155975.Dockerfile]
digraph {
  "sha256:b5cbf969b5e0a093811fd7f08740e8842400f25c4c5a625cd9e6a8e0fbde2203" [label="docker-image://docker.io/library/node:8.9" shape="ellipse"];
  "sha256:7e0b890da6bc1abd885506ab70eadb94d4b7a4bbdd5479d4104ba7c24324302b" [label="/bin/sh -c npm install -g pm2" shape="box"];
  "sha256:aeac5924bbb7ce96ceee63f205f078c12d11a6f08b68f772ab38b27d031d0c35" [label="local://context" shape="ellipse"];
  "sha256:eab9a432971c4b4f95e927386fa91add450614b1a10a64558c652fd6f5c1fe69" [label="copy{src=/package.json, dest=/}" shape="note"];
  "sha256:03c2a658368d04954369485570a33d746f266fd4383e7c48c11d7be6d5b059d7" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:83dc0855274d511fe1c6fac5742a0a82e4582a8f373fe84fb2f569d5c0383810" [label="copy{src=/src, dest=/src}" shape="note"];
  "sha256:dc563384210883a116c1b6f8e322cc80d43af4e3615bcd803c6bff01ef2d6137" [label="sha256:dc563384210883a116c1b6f8e322cc80d43af4e3615bcd803c6bff01ef2d6137" shape="plaintext"];
  "sha256:b5cbf969b5e0a093811fd7f08740e8842400f25c4c5a625cd9e6a8e0fbde2203" -> "sha256:7e0b890da6bc1abd885506ab70eadb94d4b7a4bbdd5479d4104ba7c24324302b" [label=""];
  "sha256:7e0b890da6bc1abd885506ab70eadb94d4b7a4bbdd5479d4104ba7c24324302b" -> "sha256:eab9a432971c4b4f95e927386fa91add450614b1a10a64558c652fd6f5c1fe69" [label=""];
  "sha256:aeac5924bbb7ce96ceee63f205f078c12d11a6f08b68f772ab38b27d031d0c35" -> "sha256:eab9a432971c4b4f95e927386fa91add450614b1a10a64558c652fd6f5c1fe69" [label=""];
  "sha256:eab9a432971c4b4f95e927386fa91add450614b1a10a64558c652fd6f5c1fe69" -> "sha256:03c2a658368d04954369485570a33d746f266fd4383e7c48c11d7be6d5b059d7" [label=""];
  "sha256:03c2a658368d04954369485570a33d746f266fd4383e7c48c11d7be6d5b059d7" -> "sha256:83dc0855274d511fe1c6fac5742a0a82e4582a8f373fe84fb2f569d5c0383810" [label=""];
  "sha256:aeac5924bbb7ce96ceee63f205f078c12d11a6f08b68f772ab38b27d031d0c35" -> "sha256:83dc0855274d511fe1c6fac5742a0a82e4582a8f373fe84fb2f569d5c0383810" [label=""];
  "sha256:83dc0855274d511fe1c6fac5742a0a82e4582a8f373fe84fb2f569d5c0383810" -> "sha256:dc563384210883a116c1b6f8e322cc80d43af4e3615bcd803c6bff01ef2d6137" [label=""];
}

