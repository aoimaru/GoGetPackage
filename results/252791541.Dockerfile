[app/sources/252791541.Dockerfile]
digraph {
  "sha256:884114b4ca834e47422808530113bbb9d4be1d7dd66a059a4a2a12445fefae1e" [label="docker-image://docker.io/library/node:carbon-slim" shape="ellipse"];
  "sha256:fa962785065151aa1d6a1197ac1db091ea1986b215400a2facd7c6319bd62e5e" [label="mkdir{path=/git/academy-api}" shape="note"];
  "sha256:7bd665c36482bc82388a43e7e9be6d6089a45e0fb7b541727af367ff8d50b97f" [label="local://context" shape="ellipse"];
  "sha256:faefa6eb3496c3390edf7ebc1d584340a09cf0a7e4761fa9b195cea4123fb28b" [label="copy{src=/package.json, dest=/git/academy-api/}" shape="note"];
  "sha256:e901ae64739e671d5ef8eae16423f449cf8d92551232974f23607393847123e7" [label="/bin/sh -c npm install" shape="box"];
  "sha256:6502d1aa056432c16e2cbe9378d9c3b70cc7fa25f3824e0bc5317de780c370f2" [label="copy{src=/, dest=/git/academy-api/}" shape="note"];
  "sha256:f6be2b06c659127d88a1adca110de6cf52705a608e17c49563800f13564a50b9" [label="/bin/sh -c npm run prepublish" shape="box"];
  "sha256:f53819ae6e06feddc2bb92a4bf4afed7b074a08cf8c2da091ee12be477cb589f" [label="sha256:f53819ae6e06feddc2bb92a4bf4afed7b074a08cf8c2da091ee12be477cb589f" shape="plaintext"];
  "sha256:884114b4ca834e47422808530113bbb9d4be1d7dd66a059a4a2a12445fefae1e" -> "sha256:fa962785065151aa1d6a1197ac1db091ea1986b215400a2facd7c6319bd62e5e" [label=""];
  "sha256:fa962785065151aa1d6a1197ac1db091ea1986b215400a2facd7c6319bd62e5e" -> "sha256:faefa6eb3496c3390edf7ebc1d584340a09cf0a7e4761fa9b195cea4123fb28b" [label=""];
  "sha256:7bd665c36482bc82388a43e7e9be6d6089a45e0fb7b541727af367ff8d50b97f" -> "sha256:faefa6eb3496c3390edf7ebc1d584340a09cf0a7e4761fa9b195cea4123fb28b" [label=""];
  "sha256:faefa6eb3496c3390edf7ebc1d584340a09cf0a7e4761fa9b195cea4123fb28b" -> "sha256:e901ae64739e671d5ef8eae16423f449cf8d92551232974f23607393847123e7" [label=""];
  "sha256:e901ae64739e671d5ef8eae16423f449cf8d92551232974f23607393847123e7" -> "sha256:6502d1aa056432c16e2cbe9378d9c3b70cc7fa25f3824e0bc5317de780c370f2" [label=""];
  "sha256:7bd665c36482bc82388a43e7e9be6d6089a45e0fb7b541727af367ff8d50b97f" -> "sha256:6502d1aa056432c16e2cbe9378d9c3b70cc7fa25f3824e0bc5317de780c370f2" [label=""];
  "sha256:6502d1aa056432c16e2cbe9378d9c3b70cc7fa25f3824e0bc5317de780c370f2" -> "sha256:f6be2b06c659127d88a1adca110de6cf52705a608e17c49563800f13564a50b9" [label=""];
  "sha256:f6be2b06c659127d88a1adca110de6cf52705a608e17c49563800f13564a50b9" -> "sha256:f53819ae6e06feddc2bb92a4bf4afed7b074a08cf8c2da091ee12be477cb589f" [label=""];
}

