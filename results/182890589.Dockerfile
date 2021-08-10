[app/sources/182890589.Dockerfile]
digraph {
  "sha256:1433f49f388d7d7590590cd7318f6f3daca57a070fba12d25c237c8ab4a0ff6b" [label="docker-image://docker.io/library/node:10@sha256:59531d2835edd5161c8f9512f9e095b1836f7a1fcb0ab73e005ec46047384911" shape="ellipse"];
  "sha256:9fb93a9e1ee6bb6af770e4b4789f87b76a4fafbf67231748749ebe9c9b0e1cfc" [label="/bin/sh -c npm install -g private-bower@1.1.9 && npm cache clear --force" shape="box"];
  "sha256:a63f0c1483310a3bf5d6775190ae1350c3cf7c367909f981620aa52ed77e32e0" [label="mkdir{path=/home/private-bower}" shape="note"];
  "sha256:2fa3e06dea94793eb2f969f53688295006e1646784f60976d38be80f2c016030" [label="local://context" shape="ellipse"];
  "sha256:a7c0ca83187f38b1ae90970fdb0313d6a26904b62ffc257a2aeee804ad152faa" [label="copy{src=/bowerConfig.json, dest=/home/private-bower/bowerConfig.json}" shape="note"];
  "sha256:06a0d28e6c6a1a5e39f92b1d6fadcb539b6a3407ade75780a34e206ba8fb7b8b" [label="copy{src=/log4js.conf.json, dest=/home/private-bower/log4js.conf.json}" shape="note"];
  "sha256:41de3a3c2e82c599ab62fd3f585b61b32ef97770e23f98d4057bddd51bb8ceeb" [label="copy{src=/launch.sh, dest=/home/private-bower/launch.sh}" shape="note"];
  "sha256:f23bef151aa605c5eb77bf5448a583c8c2ba7d540b731f763097131a45880647" [label="/bin/sh -c chmod +x /home/private-bower/launch.sh" shape="box"];
  "sha256:38bb02ab23831ba3d1a31812474789b548b46a068cf288456caa72df171f519a" [label="/bin/sh -c git config --global url.\"https://github.com/\".insteadOf \"git://github.com/\"" shape="box"];
  "sha256:0045f9970ef111763db42e34ca03951adbd72d49eda01fb7ea8a41b50bf06a7f" [label="/bin/sh -c git config --global user.email \"private-bower@example.org\"" shape="box"];
  "sha256:33a89926b318be29648c81326f4ef748d6ddba598d45d5ccdc2d56c77e57fa6a" [label="/bin/sh -c git config --global user.name \"Private Bower\"" shape="box"];
  "sha256:df986160ecd7e07c5fca3fb4552b449c93ea887c3161c22e76b76e6a13636b81" [label="sha256:df986160ecd7e07c5fca3fb4552b449c93ea887c3161c22e76b76e6a13636b81" shape="plaintext"];
  "sha256:1433f49f388d7d7590590cd7318f6f3daca57a070fba12d25c237c8ab4a0ff6b" -> "sha256:9fb93a9e1ee6bb6af770e4b4789f87b76a4fafbf67231748749ebe9c9b0e1cfc" [label=""];
  "sha256:9fb93a9e1ee6bb6af770e4b4789f87b76a4fafbf67231748749ebe9c9b0e1cfc" -> "sha256:a63f0c1483310a3bf5d6775190ae1350c3cf7c367909f981620aa52ed77e32e0" [label=""];
  "sha256:a63f0c1483310a3bf5d6775190ae1350c3cf7c367909f981620aa52ed77e32e0" -> "sha256:a7c0ca83187f38b1ae90970fdb0313d6a26904b62ffc257a2aeee804ad152faa" [label=""];
  "sha256:2fa3e06dea94793eb2f969f53688295006e1646784f60976d38be80f2c016030" -> "sha256:a7c0ca83187f38b1ae90970fdb0313d6a26904b62ffc257a2aeee804ad152faa" [label=""];
  "sha256:a7c0ca83187f38b1ae90970fdb0313d6a26904b62ffc257a2aeee804ad152faa" -> "sha256:06a0d28e6c6a1a5e39f92b1d6fadcb539b6a3407ade75780a34e206ba8fb7b8b" [label=""];
  "sha256:2fa3e06dea94793eb2f969f53688295006e1646784f60976d38be80f2c016030" -> "sha256:06a0d28e6c6a1a5e39f92b1d6fadcb539b6a3407ade75780a34e206ba8fb7b8b" [label=""];
  "sha256:06a0d28e6c6a1a5e39f92b1d6fadcb539b6a3407ade75780a34e206ba8fb7b8b" -> "sha256:41de3a3c2e82c599ab62fd3f585b61b32ef97770e23f98d4057bddd51bb8ceeb" [label=""];
  "sha256:2fa3e06dea94793eb2f969f53688295006e1646784f60976d38be80f2c016030" -> "sha256:41de3a3c2e82c599ab62fd3f585b61b32ef97770e23f98d4057bddd51bb8ceeb" [label=""];
  "sha256:41de3a3c2e82c599ab62fd3f585b61b32ef97770e23f98d4057bddd51bb8ceeb" -> "sha256:f23bef151aa605c5eb77bf5448a583c8c2ba7d540b731f763097131a45880647" [label=""];
  "sha256:f23bef151aa605c5eb77bf5448a583c8c2ba7d540b731f763097131a45880647" -> "sha256:38bb02ab23831ba3d1a31812474789b548b46a068cf288456caa72df171f519a" [label=""];
  "sha256:38bb02ab23831ba3d1a31812474789b548b46a068cf288456caa72df171f519a" -> "sha256:0045f9970ef111763db42e34ca03951adbd72d49eda01fb7ea8a41b50bf06a7f" [label=""];
  "sha256:0045f9970ef111763db42e34ca03951adbd72d49eda01fb7ea8a41b50bf06a7f" -> "sha256:33a89926b318be29648c81326f4ef748d6ddba598d45d5ccdc2d56c77e57fa6a" [label=""];
  "sha256:33a89926b318be29648c81326f4ef748d6ddba598d45d5ccdc2d56c77e57fa6a" -> "sha256:df986160ecd7e07c5fca3fb4552b449c93ea887c3161c22e76b76e6a13636b81" [label=""];
}

