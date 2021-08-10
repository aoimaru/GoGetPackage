[app/sources/338181135.Dockerfile]
digraph {
  "sha256:0a35a26754bb07365cb3a743e245558ad15cd410b515e58ee64e750bd71f9ad8" [label="local://context" shape="ellipse"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:6b9b3b6123998e028d1107ab788363c89f1cdd6bd476506f2b804844603bc590" [label="copy{src=/install.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:0b9f0c41f9a51c089e55cf0c9d2c137cfc5caf74f29df2586b560d9dace81a4f" [label="/bin/sh -c /usr/local/bin/install.sh" shape="box"];
  "sha256:715e7d6cd219ebc6387d2b18a6a380f5ada090b96d34aa7d7e34536be62ce954" [label="copy{src=/init.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:ff07ded7d2a191add9762b3ec5b8804c4abdde6668996586a453fc687f33f809" [label="copy{src=/index.html, dest=/tmp/}" shape="note"];
  "sha256:27f011e7544164f9fbc97f049fb958d1222368700a0aca2c30b1db4c9fcf39f8" [label="/bin/sh -c chmod 644 /tmp/index.html" shape="box"];
  "sha256:a4c2c9ba0e6d514555a82caeba78bcbdd550e8fed4ac7860fdbfd1500527e804" [label="sha256:a4c2c9ba0e6d514555a82caeba78bcbdd550e8fed4ac7860fdbfd1500527e804" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:6b9b3b6123998e028d1107ab788363c89f1cdd6bd476506f2b804844603bc590" [label=""];
  "sha256:0a35a26754bb07365cb3a743e245558ad15cd410b515e58ee64e750bd71f9ad8" -> "sha256:6b9b3b6123998e028d1107ab788363c89f1cdd6bd476506f2b804844603bc590" [label=""];
  "sha256:6b9b3b6123998e028d1107ab788363c89f1cdd6bd476506f2b804844603bc590" -> "sha256:0b9f0c41f9a51c089e55cf0c9d2c137cfc5caf74f29df2586b560d9dace81a4f" [label=""];
  "sha256:0b9f0c41f9a51c089e55cf0c9d2c137cfc5caf74f29df2586b560d9dace81a4f" -> "sha256:715e7d6cd219ebc6387d2b18a6a380f5ada090b96d34aa7d7e34536be62ce954" [label=""];
  "sha256:0a35a26754bb07365cb3a743e245558ad15cd410b515e58ee64e750bd71f9ad8" -> "sha256:715e7d6cd219ebc6387d2b18a6a380f5ada090b96d34aa7d7e34536be62ce954" [label=""];
  "sha256:715e7d6cd219ebc6387d2b18a6a380f5ada090b96d34aa7d7e34536be62ce954" -> "sha256:ff07ded7d2a191add9762b3ec5b8804c4abdde6668996586a453fc687f33f809" [label=""];
  "sha256:0a35a26754bb07365cb3a743e245558ad15cd410b515e58ee64e750bd71f9ad8" -> "sha256:ff07ded7d2a191add9762b3ec5b8804c4abdde6668996586a453fc687f33f809" [label=""];
  "sha256:ff07ded7d2a191add9762b3ec5b8804c4abdde6668996586a453fc687f33f809" -> "sha256:27f011e7544164f9fbc97f049fb958d1222368700a0aca2c30b1db4c9fcf39f8" [label=""];
  "sha256:27f011e7544164f9fbc97f049fb958d1222368700a0aca2c30b1db4c9fcf39f8" -> "sha256:a4c2c9ba0e6d514555a82caeba78bcbdd550e8fed4ac7860fdbfd1500527e804" [label=""];
}

