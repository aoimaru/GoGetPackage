[app/sources/479200656.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:d268305c6d69a1d8fd9a574cae0bf18f2f3a289a512152a617301062f93cf5a3" [label="mkdir{path=/app}" shape="note"];
  "sha256:0a8db9b7ab14fdccec6ad51d24eee9dfd6469b0e626c02c655761355fdfb59b6" [label="/bin/sh -c apk add git protobuf" shape="box"];
  "sha256:cdad24cfc786e3337515d9aa056388547c42aa9cf8c58ff0fe3aee066e343b42" [label="/bin/sh -c go get -u google.golang.org/grpc" shape="box"];
  "sha256:81540e14d18a960865237ecef201ca9ea1992a68e162602f223e8accff7ffe0b" [label="/bin/sh -c go get -u github.com/golang/protobuf/protoc-gen-go" shape="box"];
  "sha256:d194a0ac1b547e28c7a1637b6430a1a009fa69487a65d33a6a4209a95bb2c12e" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:c782f582517f94b3aee8e507868735fb9e3b06e7d61d4d284e91058bea701a5a" [label="local://context" shape="ellipse"];
  "sha256:96a5bba027b309407b9db30516f954d0b7fae2f3b49e14e45a8eb16b6d2f1213" [label="copy{src=/, dest=/go/src/app/}" shape="note"];
  "sha256:5098d647313473f75d78d2ebcfd9f0c9b7bb6937b726d08f17050130383bf8eb" [label="mkdir{path=/go/src/app/codenamecreator}" shape="note"];
  "sha256:3bdbebbc43f6f3500e193f2e9c41ce299400290b024c66a8c9fc85c0c9aa2b70" [label="/bin/sh -c protoc --go_out=plugins=grpc:. *.proto" shape="box"];
  "sha256:ae9e6306f231039da86b1bb8de18533a52f40d9c30b51610bc5bfcd0eca04f66" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:5eede8509939de8e0957b49de6527c9e0dc7e5f475654f72b7cfb200c445bf7b" [label="/bin/sh -c go build -o /output/client ./client/client.go" shape="box"];
  "sha256:dc0d527d712e7d76882d8cc0651d831c35b636ea1136438064dd08712539e443" [label="copy{src=/output/client, dest=/app/}" shape="note"];
  "sha256:6028ffeb90c48c77971d21a7909245f476cc6b59d19b2637656ad7afcc8d99b8" [label="copy{src=/creds/*.crt, dest=/app/}" shape="note"];
  "sha256:70cfc99a62a092292bf8c5f2213d4ce16bfee0eca2cd05dc8f746a9a9d36b95d" [label="copy{src=/go/src/app/codenamecreator, dest=/app/}" shape="note"];
  "sha256:99127a5b38fdb56ca4cb07b7879d0eeba8431d0e05f95ba5c58839b58bb15440" [label="sha256:99127a5b38fdb56ca4cb07b7879d0eeba8431d0e05f95ba5c58839b58bb15440" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:d268305c6d69a1d8fd9a574cae0bf18f2f3a289a512152a617301062f93cf5a3" [label=""];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:0a8db9b7ab14fdccec6ad51d24eee9dfd6469b0e626c02c655761355fdfb59b6" [label=""];
  "sha256:0a8db9b7ab14fdccec6ad51d24eee9dfd6469b0e626c02c655761355fdfb59b6" -> "sha256:cdad24cfc786e3337515d9aa056388547c42aa9cf8c58ff0fe3aee066e343b42" [label=""];
  "sha256:cdad24cfc786e3337515d9aa056388547c42aa9cf8c58ff0fe3aee066e343b42" -> "sha256:81540e14d18a960865237ecef201ca9ea1992a68e162602f223e8accff7ffe0b" [label=""];
  "sha256:81540e14d18a960865237ecef201ca9ea1992a68e162602f223e8accff7ffe0b" -> "sha256:d194a0ac1b547e28c7a1637b6430a1a009fa69487a65d33a6a4209a95bb2c12e" [label=""];
  "sha256:d194a0ac1b547e28c7a1637b6430a1a009fa69487a65d33a6a4209a95bb2c12e" -> "sha256:96a5bba027b309407b9db30516f954d0b7fae2f3b49e14e45a8eb16b6d2f1213" [label=""];
  "sha256:c782f582517f94b3aee8e507868735fb9e3b06e7d61d4d284e91058bea701a5a" -> "sha256:96a5bba027b309407b9db30516f954d0b7fae2f3b49e14e45a8eb16b6d2f1213" [label=""];
  "sha256:96a5bba027b309407b9db30516f954d0b7fae2f3b49e14e45a8eb16b6d2f1213" -> "sha256:5098d647313473f75d78d2ebcfd9f0c9b7bb6937b726d08f17050130383bf8eb" [label=""];
  "sha256:5098d647313473f75d78d2ebcfd9f0c9b7bb6937b726d08f17050130383bf8eb" -> "sha256:3bdbebbc43f6f3500e193f2e9c41ce299400290b024c66a8c9fc85c0c9aa2b70" [label=""];
  "sha256:3bdbebbc43f6f3500e193f2e9c41ce299400290b024c66a8c9fc85c0c9aa2b70" -> "sha256:ae9e6306f231039da86b1bb8de18533a52f40d9c30b51610bc5bfcd0eca04f66" [label=""];
  "sha256:ae9e6306f231039da86b1bb8de18533a52f40d9c30b51610bc5bfcd0eca04f66" -> "sha256:5eede8509939de8e0957b49de6527c9e0dc7e5f475654f72b7cfb200c445bf7b" [label=""];
  "sha256:d268305c6d69a1d8fd9a574cae0bf18f2f3a289a512152a617301062f93cf5a3" -> "sha256:dc0d527d712e7d76882d8cc0651d831c35b636ea1136438064dd08712539e443" [label=""];
  "sha256:5eede8509939de8e0957b49de6527c9e0dc7e5f475654f72b7cfb200c445bf7b" -> "sha256:dc0d527d712e7d76882d8cc0651d831c35b636ea1136438064dd08712539e443" [label=""];
  "sha256:dc0d527d712e7d76882d8cc0651d831c35b636ea1136438064dd08712539e443" -> "sha256:6028ffeb90c48c77971d21a7909245f476cc6b59d19b2637656ad7afcc8d99b8" [label=""];
  "sha256:c782f582517f94b3aee8e507868735fb9e3b06e7d61d4d284e91058bea701a5a" -> "sha256:6028ffeb90c48c77971d21a7909245f476cc6b59d19b2637656ad7afcc8d99b8" [label=""];
  "sha256:6028ffeb90c48c77971d21a7909245f476cc6b59d19b2637656ad7afcc8d99b8" -> "sha256:70cfc99a62a092292bf8c5f2213d4ce16bfee0eca2cd05dc8f746a9a9d36b95d" [label=""];
  "sha256:5eede8509939de8e0957b49de6527c9e0dc7e5f475654f72b7cfb200c445bf7b" -> "sha256:70cfc99a62a092292bf8c5f2213d4ce16bfee0eca2cd05dc8f746a9a9d36b95d" [label=""];
  "sha256:70cfc99a62a092292bf8c5f2213d4ce16bfee0eca2cd05dc8f746a9a9d36b95d" -> "sha256:99127a5b38fdb56ca4cb07b7879d0eeba8431d0e05f95ba5c58839b58bb15440" [label=""];
}

