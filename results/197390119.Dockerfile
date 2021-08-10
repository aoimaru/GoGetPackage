[app/sources/197390119.Dockerfile]
digraph {
  "sha256:fe1996cf8806c609e73a584217982fd8bf210aa979927cd1d8f07ed3a70cb6e8" [label="docker-image://docker.io/cypress/base:10" shape="ellipse"];
  "sha256:95f30206fc9f3715388b17b89592e81f37fc7cd0687a0f29daca6c159ee68b4d" [label="/bin/sh -c node --version" shape="box"];
  "sha256:f138c19eb98dfe2ab70d329cc5023e57ce0cb4f99b9c12a97a089feb54dac3a4" [label="/bin/sh -c npm --version" shape="box"];
  "sha256:99729a2cfee3adbc5c838784c363e621e994c58f3ec07ceaae32f0d5b62beb73" [label="mkdir{path=/home/node/app}" shape="note"];
  "sha256:12189fa763372083d4b7d0e5daed762233d491273afb7726b519ddd009a1d6ca" [label="local://context" shape="ellipse"];
  "sha256:5c4e696c6c514f6e8d5fca430a94a384b12167d7e259517ec0aecff632972f0e" [label="copy{src=/package.json, dest=/home/node/app/},copy{src=/package-lock.json, dest=/home/node/app/}" shape="note"];
  "sha256:42ecb46636e20ca2ee32102ae4e7412cc0f909824e8cc75bfb854c5807090f3e" [label="copy{src=/app, dest=/home/node/app/app}" shape="note"];
  "sha256:c6b8b1a6bb69fcc40486fe77d604a644811a4fe0a3469113921ef8c9d49d5b2f" [label="copy{src=/cypress.json, dest=/home/node/app/},copy{src=/cypress, dest=/home/node/app/}" shape="note"];
  "sha256:735ef50cbdd802c188e17dbee58a272234705d7e84675a76c37a6ad5a086a975" [label="copy{src=/cypress, dest=/home/node/app/cypress}" shape="note"];
  "sha256:182ac70149aebdea66891360bc4d8a0424429a249d02d9d60a922e7febb16061" [label="/bin/sh -c npm ci" shape="box"];
  "sha256:d41b0e56e008d220ee12d4da2c0595071dad5c316689d5b816015c75b505e679" [label="/bin/sh -c $(npm bin)/cypress verify" shape="box"];
  "sha256:fa2637b20b2046935efef7f00f43749fcb7cde9483b44b09adeeac610872ca01" [label="sha256:fa2637b20b2046935efef7f00f43749fcb7cde9483b44b09adeeac610872ca01" shape="plaintext"];
  "sha256:fe1996cf8806c609e73a584217982fd8bf210aa979927cd1d8f07ed3a70cb6e8" -> "sha256:95f30206fc9f3715388b17b89592e81f37fc7cd0687a0f29daca6c159ee68b4d" [label=""];
  "sha256:95f30206fc9f3715388b17b89592e81f37fc7cd0687a0f29daca6c159ee68b4d" -> "sha256:f138c19eb98dfe2ab70d329cc5023e57ce0cb4f99b9c12a97a089feb54dac3a4" [label=""];
  "sha256:f138c19eb98dfe2ab70d329cc5023e57ce0cb4f99b9c12a97a089feb54dac3a4" -> "sha256:99729a2cfee3adbc5c838784c363e621e994c58f3ec07ceaae32f0d5b62beb73" [label=""];
  "sha256:99729a2cfee3adbc5c838784c363e621e994c58f3ec07ceaae32f0d5b62beb73" -> "sha256:5c4e696c6c514f6e8d5fca430a94a384b12167d7e259517ec0aecff632972f0e" [label=""];
  "sha256:12189fa763372083d4b7d0e5daed762233d491273afb7726b519ddd009a1d6ca" -> "sha256:5c4e696c6c514f6e8d5fca430a94a384b12167d7e259517ec0aecff632972f0e" [label=""];
  "sha256:5c4e696c6c514f6e8d5fca430a94a384b12167d7e259517ec0aecff632972f0e" -> "sha256:42ecb46636e20ca2ee32102ae4e7412cc0f909824e8cc75bfb854c5807090f3e" [label=""];
  "sha256:12189fa763372083d4b7d0e5daed762233d491273afb7726b519ddd009a1d6ca" -> "sha256:42ecb46636e20ca2ee32102ae4e7412cc0f909824e8cc75bfb854c5807090f3e" [label=""];
  "sha256:42ecb46636e20ca2ee32102ae4e7412cc0f909824e8cc75bfb854c5807090f3e" -> "sha256:c6b8b1a6bb69fcc40486fe77d604a644811a4fe0a3469113921ef8c9d49d5b2f" [label=""];
  "sha256:12189fa763372083d4b7d0e5daed762233d491273afb7726b519ddd009a1d6ca" -> "sha256:c6b8b1a6bb69fcc40486fe77d604a644811a4fe0a3469113921ef8c9d49d5b2f" [label=""];
  "sha256:c6b8b1a6bb69fcc40486fe77d604a644811a4fe0a3469113921ef8c9d49d5b2f" -> "sha256:735ef50cbdd802c188e17dbee58a272234705d7e84675a76c37a6ad5a086a975" [label=""];
  "sha256:12189fa763372083d4b7d0e5daed762233d491273afb7726b519ddd009a1d6ca" -> "sha256:735ef50cbdd802c188e17dbee58a272234705d7e84675a76c37a6ad5a086a975" [label=""];
  "sha256:735ef50cbdd802c188e17dbee58a272234705d7e84675a76c37a6ad5a086a975" -> "sha256:182ac70149aebdea66891360bc4d8a0424429a249d02d9d60a922e7febb16061" [label=""];
  "sha256:182ac70149aebdea66891360bc4d8a0424429a249d02d9d60a922e7febb16061" -> "sha256:d41b0e56e008d220ee12d4da2c0595071dad5c316689d5b816015c75b505e679" [label=""];
  "sha256:d41b0e56e008d220ee12d4da2c0595071dad5c316689d5b816015c75b505e679" -> "sha256:fa2637b20b2046935efef7f00f43749fcb7cde9483b44b09adeeac610872ca01" [label=""];
}

