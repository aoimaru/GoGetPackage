[app/sources/246968450.Dockerfile]
digraph {
  "sha256:e3bc3593cea532fd3ddb6b71f4f7366e6981f7e376a4e0e442c8b8bf73bc3dfc" [label="docker-image://docker.io/library/ibmjava@sha256:20f63dc30541955b808b0b03dbd8286c02d7c8e2585919ee48a6cfee58b440f8" shape="ellipse"];
  "sha256:ccba063cf1101eea7c4a0394d60e3830adeca59ddfba661e7b1fcb7c119b85dd" [label="local://context" shape="ellipse"];
  "sha256:670743c83e503fccf33684cca471798f5ebdb411042150f476dd4eec5904fc2f" [label="copy{src=/gen-keystore.sh, dest=/tmp/gen-keystore.sh}" shape="note"];
  "sha256:81bc2ea0b4a54dac1066a20eb8f309919f1e499f713193b15bf2d5c1d4c3ada0" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:3f78e7a08afc48890599fd08830e68e5b85092c4c7d16512d788273fe2542f90" [label="sha256:3f78e7a08afc48890599fd08830e68e5b85092c4c7d16512d788273fe2542f90" shape="plaintext"];
  "sha256:e3bc3593cea532fd3ddb6b71f4f7366e6981f7e376a4e0e442c8b8bf73bc3dfc" -> "sha256:670743c83e503fccf33684cca471798f5ebdb411042150f476dd4eec5904fc2f" [label=""];
  "sha256:ccba063cf1101eea7c4a0394d60e3830adeca59ddfba661e7b1fcb7c119b85dd" -> "sha256:670743c83e503fccf33684cca471798f5ebdb411042150f476dd4eec5904fc2f" [label=""];
  "sha256:670743c83e503fccf33684cca471798f5ebdb411042150f476dd4eec5904fc2f" -> "sha256:81bc2ea0b4a54dac1066a20eb8f309919f1e499f713193b15bf2d5c1d4c3ada0" [label=""];
  "sha256:81bc2ea0b4a54dac1066a20eb8f309919f1e499f713193b15bf2d5c1d4c3ada0" -> "sha256:3f78e7a08afc48890599fd08830e68e5b85092c4c7d16512d788273fe2542f90" [label=""];
}

