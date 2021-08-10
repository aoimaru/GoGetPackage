[app/sources/166953746.Dockerfile]
digraph {
  "sha256:2a025f5bc4b07d57cb20df875d562d120acaf6b1a36da6f8a71de42c740bd16f" [label="docker-image://docker.io/million12/nginx-php:latest" shape="ellipse"];
  "sha256:5baea63ab8450ff543036d09e41a757f799013f466cab774f6df7ef9593bc842" [label="/bin/sh -c `# Install Beard - https://github.com/mneuhaus/Beard`   curl -s http://beard.famelo.com/ > /usr/bin/beard && chmod +x /usr/bin/beard &&   beard --version" shape="box"];
  "sha256:cd7c8d1e550fa386842364e8101804184564fadbce5e3f079fb16e7093d1488b" [label="local://context" shape="ellipse"];
  "sha256:4cb233fcb6c22590d4bf1f6b33c8e156e5378a4527b2ef6f657381dde34024f0" [label="copy{src=/container-files, dest=/}" shape="note"];
  "sha256:03c68cbf2b8474b0ce3bc98a9004495935ca2c303da43625d300c374a3afd6d2" [label="sha256:03c68cbf2b8474b0ce3bc98a9004495935ca2c303da43625d300c374a3afd6d2" shape="plaintext"];
  "sha256:2a025f5bc4b07d57cb20df875d562d120acaf6b1a36da6f8a71de42c740bd16f" -> "sha256:5baea63ab8450ff543036d09e41a757f799013f466cab774f6df7ef9593bc842" [label=""];
  "sha256:5baea63ab8450ff543036d09e41a757f799013f466cab774f6df7ef9593bc842" -> "sha256:4cb233fcb6c22590d4bf1f6b33c8e156e5378a4527b2ef6f657381dde34024f0" [label=""];
  "sha256:cd7c8d1e550fa386842364e8101804184564fadbce5e3f079fb16e7093d1488b" -> "sha256:4cb233fcb6c22590d4bf1f6b33c8e156e5378a4527b2ef6f657381dde34024f0" [label=""];
  "sha256:4cb233fcb6c22590d4bf1f6b33c8e156e5378a4527b2ef6f657381dde34024f0" -> "sha256:03c68cbf2b8474b0ce3bc98a9004495935ca2c303da43625d300c374a3afd6d2" [label=""];
}

