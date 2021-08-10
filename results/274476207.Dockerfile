[app/sources/274476207.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:6b935e82e6fb875dc9a723c187f8874a84abc02e6106583a21debe7a39c285be" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:f405158690ef2d0c8acc2ebc71fc726f716a5adcc5afa6323c02154dfd940de0" [label="local://context" shape="ellipse"];
  "sha256:50867c2bafdfcf7614cd3803517dbd2818251c8c95d8ebf83f56af0dd1f17370" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:b402013876fb571b3a03c1f2b31814a0651428f4227c8e905467bed83532a9db" [label="/bin/sh -c npm install --silent --no-cache --registry=https://registry.npm.taobao.org" shape="box"];
  "sha256:91d97eb1731d65f2417ab5cfdc3ace6394886f59383a8d1956352ec90d68042b" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:4fa213e63294129ca7eb8a271d9a7103577dfefdd3dfc93ea6f8c535f40bcbd6" [label="sha256:4fa213e63294129ca7eb8a271d9a7103577dfefdd3dfc93ea6f8c535f40bcbd6" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:6b935e82e6fb875dc9a723c187f8874a84abc02e6106583a21debe7a39c285be" [label=""];
  "sha256:6b935e82e6fb875dc9a723c187f8874a84abc02e6106583a21debe7a39c285be" -> "sha256:50867c2bafdfcf7614cd3803517dbd2818251c8c95d8ebf83f56af0dd1f17370" [label=""];
  "sha256:f405158690ef2d0c8acc2ebc71fc726f716a5adcc5afa6323c02154dfd940de0" -> "sha256:50867c2bafdfcf7614cd3803517dbd2818251c8c95d8ebf83f56af0dd1f17370" [label=""];
  "sha256:50867c2bafdfcf7614cd3803517dbd2818251c8c95d8ebf83f56af0dd1f17370" -> "sha256:b402013876fb571b3a03c1f2b31814a0651428f4227c8e905467bed83532a9db" [label=""];
  "sha256:b402013876fb571b3a03c1f2b31814a0651428f4227c8e905467bed83532a9db" -> "sha256:91d97eb1731d65f2417ab5cfdc3ace6394886f59383a8d1956352ec90d68042b" [label=""];
  "sha256:f405158690ef2d0c8acc2ebc71fc726f716a5adcc5afa6323c02154dfd940de0" -> "sha256:91d97eb1731d65f2417ab5cfdc3ace6394886f59383a8d1956352ec90d68042b" [label=""];
  "sha256:91d97eb1731d65f2417ab5cfdc3ace6394886f59383a8d1956352ec90d68042b" -> "sha256:4fa213e63294129ca7eb8a271d9a7103577dfefdd3dfc93ea6f8c535f40bcbd6" [label=""];
}

