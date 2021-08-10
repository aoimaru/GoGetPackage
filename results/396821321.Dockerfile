[app/sources/396821321.Dockerfile]
digraph {
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" [label="docker-image://docker.io/library/node:10" shape="ellipse"];
  "sha256:fea4aefdc5663e4c5599e240a2eeda848a16b653bacb798907991bf95883dbe7" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:77a2ce1e04055cac259c7b652094086dfea7f7389cb211ca436e257a2e9394a4" [label="local://context" shape="ellipse"];
  "sha256:350474c4ea02589894e1e7e3099a58a22be5c7ec47d2b95e05fd5293a5aa93bf" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:703d5382c1359487cdd07d711bb634aa0b638b0406d41d36b720edafa0116db2" [label="/bin/sh -c npm install" shape="box"];
  "sha256:4148655771defa5c749a4a6b9f5b4f294c8b549b1d33d9f84d87b5bc7092b5f7" [label="sha256:4148655771defa5c749a4a6b9f5b4f294c8b549b1d33d9f84d87b5bc7092b5f7" shape="plaintext"];
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" -> "sha256:fea4aefdc5663e4c5599e240a2eeda848a16b653bacb798907991bf95883dbe7" [label=""];
  "sha256:fea4aefdc5663e4c5599e240a2eeda848a16b653bacb798907991bf95883dbe7" -> "sha256:350474c4ea02589894e1e7e3099a58a22be5c7ec47d2b95e05fd5293a5aa93bf" [label=""];
  "sha256:77a2ce1e04055cac259c7b652094086dfea7f7389cb211ca436e257a2e9394a4" -> "sha256:350474c4ea02589894e1e7e3099a58a22be5c7ec47d2b95e05fd5293a5aa93bf" [label=""];
  "sha256:350474c4ea02589894e1e7e3099a58a22be5c7ec47d2b95e05fd5293a5aa93bf" -> "sha256:703d5382c1359487cdd07d711bb634aa0b638b0406d41d36b720edafa0116db2" [label=""];
  "sha256:703d5382c1359487cdd07d711bb634aa0b638b0406d41d36b720edafa0116db2" -> "sha256:4148655771defa5c749a4a6b9f5b4f294c8b549b1d33d9f84d87b5bc7092b5f7" [label=""];
}

