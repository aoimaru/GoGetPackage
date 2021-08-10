[app/sources/193311214.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:ee64ced7cc79b3f1a3fc019805d85f8b25cffd3f4d9c540ac64333db01cc0f66" [label="/bin/sh -c groupadd glot" shape="box"];
  "sha256:23820ad27b5a05245f5757e23e05eef07c233196cd0c1504b93b77e5e0dc0933" [label="/bin/sh -c useradd -m -d /home/glot -g glot -s /bin/bash glot" shape="box"];
  "sha256:4ba125424aba18cd648dc747bda77a1971075b535670ebb12f01603ff80112e1" [label="https://github.com/prasmussen/glot-code-runner/releases/download/2017-04-12/runner" shape="ellipse"];
  "sha256:7b882b1af2130b8a50eb3497ce496d0da6c3e636eb6bd45377d2f0d12146dc39" [label="copy{src=/runner, dest=/home/glot/runner}" shape="note"];
  "sha256:221d6691deaddee6a39c452ee342d8543933deb5d859d0a1c459678c32f8b7fb" [label="/bin/sh -c chmod +x /home/glot/runner" shape="box"];
  "sha256:4770def40aaf080e9ef76f3d47617d8a55122d93c6c185ff5b00588da272068f" [label="mkdir{path=/home/glot}" shape="note"];
  "sha256:30c662d6ed5b8c40b6d5d0693aa9f7cd21792f4eea0dbdd15c1f74d1af8169c8" [label="sha256:30c662d6ed5b8c40b6d5d0693aa9f7cd21792f4eea0dbdd15c1f74d1af8169c8" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:ee64ced7cc79b3f1a3fc019805d85f8b25cffd3f4d9c540ac64333db01cc0f66" [label=""];
  "sha256:ee64ced7cc79b3f1a3fc019805d85f8b25cffd3f4d9c540ac64333db01cc0f66" -> "sha256:23820ad27b5a05245f5757e23e05eef07c233196cd0c1504b93b77e5e0dc0933" [label=""];
  "sha256:23820ad27b5a05245f5757e23e05eef07c233196cd0c1504b93b77e5e0dc0933" -> "sha256:7b882b1af2130b8a50eb3497ce496d0da6c3e636eb6bd45377d2f0d12146dc39" [label=""];
  "sha256:4ba125424aba18cd648dc747bda77a1971075b535670ebb12f01603ff80112e1" -> "sha256:7b882b1af2130b8a50eb3497ce496d0da6c3e636eb6bd45377d2f0d12146dc39" [label=""];
  "sha256:7b882b1af2130b8a50eb3497ce496d0da6c3e636eb6bd45377d2f0d12146dc39" -> "sha256:221d6691deaddee6a39c452ee342d8543933deb5d859d0a1c459678c32f8b7fb" [label=""];
  "sha256:221d6691deaddee6a39c452ee342d8543933deb5d859d0a1c459678c32f8b7fb" -> "sha256:4770def40aaf080e9ef76f3d47617d8a55122d93c6c185ff5b00588da272068f" [label=""];
  "sha256:4770def40aaf080e9ef76f3d47617d8a55122d93c6c185ff5b00588da272068f" -> "sha256:30c662d6ed5b8c40b6d5d0693aa9f7cd21792f4eea0dbdd15c1f74d1af8169c8" [label=""];
}

