[app/sources/474770659.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:0ad1554671f6df81f96ae78d1e325e6a3b7176788e3b130eff10bb690903c5ec" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:ce8123636a2a158a199484eb2751900c01293320dd12982915a4ef6dbe1611f0" [label="local://context" shape="ellipse"];
  "sha256:6d8beece95e0f0cd024d182ee762a61e5a3842187fedc11dfbd2d89d7ec948ba" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:bf7978e33d2d9b37423c66acc39243046097bd2e4c06ed57f6cbee3d6d952942" [label="/bin/sh -c npm install --silent" shape="box"];
  "sha256:7583fc5ba5ca061c4d6e5c99c6802b0f3788e1836581c074321dcf45d009ea1f" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:2119bb2093460483bed9be021930e7296ac5bda52386f4c190f404602bad13fb" [label="sha256:2119bb2093460483bed9be021930e7296ac5bda52386f4c190f404602bad13fb" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" [label=""];
  "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" -> "sha256:0ad1554671f6df81f96ae78d1e325e6a3b7176788e3b130eff10bb690903c5ec" [label=""];
  "sha256:0ad1554671f6df81f96ae78d1e325e6a3b7176788e3b130eff10bb690903c5ec" -> "sha256:6d8beece95e0f0cd024d182ee762a61e5a3842187fedc11dfbd2d89d7ec948ba" [label=""];
  "sha256:ce8123636a2a158a199484eb2751900c01293320dd12982915a4ef6dbe1611f0" -> "sha256:6d8beece95e0f0cd024d182ee762a61e5a3842187fedc11dfbd2d89d7ec948ba" [label=""];
  "sha256:6d8beece95e0f0cd024d182ee762a61e5a3842187fedc11dfbd2d89d7ec948ba" -> "sha256:bf7978e33d2d9b37423c66acc39243046097bd2e4c06ed57f6cbee3d6d952942" [label=""];
  "sha256:bf7978e33d2d9b37423c66acc39243046097bd2e4c06ed57f6cbee3d6d952942" -> "sha256:7583fc5ba5ca061c4d6e5c99c6802b0f3788e1836581c074321dcf45d009ea1f" [label=""];
  "sha256:ce8123636a2a158a199484eb2751900c01293320dd12982915a4ef6dbe1611f0" -> "sha256:7583fc5ba5ca061c4d6e5c99c6802b0f3788e1836581c074321dcf45d009ea1f" [label=""];
  "sha256:7583fc5ba5ca061c4d6e5c99c6802b0f3788e1836581c074321dcf45d009ea1f" -> "sha256:2119bb2093460483bed9be021930e7296ac5bda52386f4c190f404602bad13fb" [label=""];
}

