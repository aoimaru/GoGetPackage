[app/sources/359122963.Dockerfile]
digraph {
  "sha256:63ea56eba944d5fd6b57325b89d709cbb684e587fb21f1e1115edf6859bb4541" [label="docker-image://docker.io/library/node:10.15.1" shape="ellipse"];
  "sha256:f75102adc625d9e4d965a9e1f35d078f9bdaf60156d83f452a361174f749973a" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:5742feaabd0705cfa14def760661cb4fa694fa7a8a4e0124027d6a2003545d26" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:159c706a4b18f05edc75d0dac6e01cab2773e90532c70bb326e9828bb7531fc2" [label="local://context" shape="ellipse"];
  "sha256:74c6b4f4dd8374213746b39461d37c6fffc364633fa3a8ba608469fa9655a24d" [label="copy{src=/package.json, dest=/usr/src/app/package.json}" shape="note"];
  "sha256:4921fb15df64b75023a46aa4b3c3c43e12fd0c3921eef0b3c7536594e7f43e19" [label="copy{src=/yarn.lock, dest=/usr/src/app/yarn.lock}" shape="note"];
  "sha256:2d3b4825645af709aa5595848f569e5bc96855eccacc11bcc5de8e56132163b5" [label="/bin/sh -c yarn install --silent" shape="box"];
  "sha256:574a70dd2b10ff0ba1e8036bf0b8f8555bc568b16a9e1bfec9284fe95a00dd32" [label="sha256:574a70dd2b10ff0ba1e8036bf0b8f8555bc568b16a9e1bfec9284fe95a00dd32" shape="plaintext"];
  "sha256:63ea56eba944d5fd6b57325b89d709cbb684e587fb21f1e1115edf6859bb4541" -> "sha256:f75102adc625d9e4d965a9e1f35d078f9bdaf60156d83f452a361174f749973a" [label=""];
  "sha256:f75102adc625d9e4d965a9e1f35d078f9bdaf60156d83f452a361174f749973a" -> "sha256:5742feaabd0705cfa14def760661cb4fa694fa7a8a4e0124027d6a2003545d26" [label=""];
  "sha256:5742feaabd0705cfa14def760661cb4fa694fa7a8a4e0124027d6a2003545d26" -> "sha256:74c6b4f4dd8374213746b39461d37c6fffc364633fa3a8ba608469fa9655a24d" [label=""];
  "sha256:159c706a4b18f05edc75d0dac6e01cab2773e90532c70bb326e9828bb7531fc2" -> "sha256:74c6b4f4dd8374213746b39461d37c6fffc364633fa3a8ba608469fa9655a24d" [label=""];
  "sha256:74c6b4f4dd8374213746b39461d37c6fffc364633fa3a8ba608469fa9655a24d" -> "sha256:4921fb15df64b75023a46aa4b3c3c43e12fd0c3921eef0b3c7536594e7f43e19" [label=""];
  "sha256:159c706a4b18f05edc75d0dac6e01cab2773e90532c70bb326e9828bb7531fc2" -> "sha256:4921fb15df64b75023a46aa4b3c3c43e12fd0c3921eef0b3c7536594e7f43e19" [label=""];
  "sha256:4921fb15df64b75023a46aa4b3c3c43e12fd0c3921eef0b3c7536594e7f43e19" -> "sha256:2d3b4825645af709aa5595848f569e5bc96855eccacc11bcc5de8e56132163b5" [label=""];
  "sha256:2d3b4825645af709aa5595848f569e5bc96855eccacc11bcc5de8e56132163b5" -> "sha256:574a70dd2b10ff0ba1e8036bf0b8f8555bc568b16a9e1bfec9284fe95a00dd32" [label=""];
}

