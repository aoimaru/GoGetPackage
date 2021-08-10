[app/sources/456028151.Dockerfile]
digraph {
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" [label="docker-image://docker.io/library/node:boron" shape="ellipse"];
  "sha256:319ff685be2cd511fc481c2a42c42c46d62976eeaa4f084fde350140f719d0a6" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:734ccdbbb06ce397f8dbe4752c7b608b347d56cb01504f37294f1b77d759392b" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:0687d7281312a4c0a784b7d2bb9651c406b9fcdf4b9e81ff415c4b88bf540afd" [label="local://context" shape="ellipse"];
  "sha256:7a889f002708694b0fbd5f14e474bd6d8c378ac235a056dec6e70fd29ae9f801" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:b6096bf6bca4e6c8ebc8efe49a129be23903c1ba47f49b12f44ed3997d95093a" [label="/bin/sh -c npm install" shape="box"];
  "sha256:18352a14ce0446693dee81afc436a80f53ba6c424608f47808d2aa9d8491a7d9" [label="sha256:18352a14ce0446693dee81afc436a80f53ba6c424608f47808d2aa9d8491a7d9" shape="plaintext"];
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" -> "sha256:319ff685be2cd511fc481c2a42c42c46d62976eeaa4f084fde350140f719d0a6" [label=""];
  "sha256:319ff685be2cd511fc481c2a42c42c46d62976eeaa4f084fde350140f719d0a6" -> "sha256:734ccdbbb06ce397f8dbe4752c7b608b347d56cb01504f37294f1b77d759392b" [label=""];
  "sha256:734ccdbbb06ce397f8dbe4752c7b608b347d56cb01504f37294f1b77d759392b" -> "sha256:7a889f002708694b0fbd5f14e474bd6d8c378ac235a056dec6e70fd29ae9f801" [label=""];
  "sha256:0687d7281312a4c0a784b7d2bb9651c406b9fcdf4b9e81ff415c4b88bf540afd" -> "sha256:7a889f002708694b0fbd5f14e474bd6d8c378ac235a056dec6e70fd29ae9f801" [label=""];
  "sha256:7a889f002708694b0fbd5f14e474bd6d8c378ac235a056dec6e70fd29ae9f801" -> "sha256:b6096bf6bca4e6c8ebc8efe49a129be23903c1ba47f49b12f44ed3997d95093a" [label=""];
  "sha256:b6096bf6bca4e6c8ebc8efe49a129be23903c1ba47f49b12f44ed3997d95093a" -> "sha256:18352a14ce0446693dee81afc436a80f53ba6c424608f47808d2aa9d8491a7d9" [label=""];
}

