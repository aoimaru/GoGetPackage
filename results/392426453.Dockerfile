[app/sources/392426453.Dockerfile]
digraph {
  "sha256:ab9523914b364e0be1572e0272e9e6e8ecaa8ba889f3d1128d783a044c116eaa" [label="docker-image://docker.io/library/node:11.10.0" shape="ellipse"];
  "sha256:8e5aa5a38c147cb468371e24b2b42add0b5eb4a3bc326b9a359bfe38a1101fcf" [label="/bin/sh -c npm -g install pm2" shape="box"];
  "sha256:c8fc11f17f573cae496a198269cbf39ed8855c0c907b909ada3d06a53914713c" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:19c44fbe61bbb72f1a3ad8c52524ff8a06efb087ab84641d1530a844a329d93b" [label="local://context" shape="ellipse"];
  "sha256:e2f97468070fa5f3115bbe165a5d8ae196654eae6a8a2262f7671bd196e63893" [label="copy{src=/app.js, dest=/usr/src/app/},copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:a60fec6631f6e2b6a21ba608ee97142f0b10a3d90401c4af47899ae2f49dd769" [label="/bin/sh -c npm install" shape="box"];
  "sha256:4b3de2a5c0a52ebc7aa43379e88935ecaf7da55dcbf126c69ba86795257e872c" [label="sha256:4b3de2a5c0a52ebc7aa43379e88935ecaf7da55dcbf126c69ba86795257e872c" shape="plaintext"];
  "sha256:ab9523914b364e0be1572e0272e9e6e8ecaa8ba889f3d1128d783a044c116eaa" -> "sha256:8e5aa5a38c147cb468371e24b2b42add0b5eb4a3bc326b9a359bfe38a1101fcf" [label=""];
  "sha256:8e5aa5a38c147cb468371e24b2b42add0b5eb4a3bc326b9a359bfe38a1101fcf" -> "sha256:c8fc11f17f573cae496a198269cbf39ed8855c0c907b909ada3d06a53914713c" [label=""];
  "sha256:c8fc11f17f573cae496a198269cbf39ed8855c0c907b909ada3d06a53914713c" -> "sha256:e2f97468070fa5f3115bbe165a5d8ae196654eae6a8a2262f7671bd196e63893" [label=""];
  "sha256:19c44fbe61bbb72f1a3ad8c52524ff8a06efb087ab84641d1530a844a329d93b" -> "sha256:e2f97468070fa5f3115bbe165a5d8ae196654eae6a8a2262f7671bd196e63893" [label=""];
  "sha256:e2f97468070fa5f3115bbe165a5d8ae196654eae6a8a2262f7671bd196e63893" -> "sha256:a60fec6631f6e2b6a21ba608ee97142f0b10a3d90401c4af47899ae2f49dd769" [label=""];
  "sha256:a60fec6631f6e2b6a21ba608ee97142f0b10a3d90401c4af47899ae2f49dd769" -> "sha256:4b3de2a5c0a52ebc7aa43379e88935ecaf7da55dcbf126c69ba86795257e872c" [label=""];
}

