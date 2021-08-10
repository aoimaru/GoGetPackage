[app/sources/252798709.Dockerfile]
digraph {
  "sha256:538d634276c70ada80bdb6442321f5dedbf3de6395bb888e3d419b088c290b93" [label="docker-image://docker.io/descoped/base:latest" shape="ellipse"];
  "sha256:99679e75ac91e405c4fdebd051337c331657cccf402febd938fbfcfa96fed98d" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update" shape="box"];
  "sha256:3d4a25c0310199d60e7cda78351f2cbc8625913057a3642c0256b7c7ce704805" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -q -y xmlstarlet software-properties-common python-software-properties && apt-get clean autoclean && apt-get autoremove --yes && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a1d80c93fd9e3f611fea0776887bfb9673a55b4061dbdc716b35484e7ee610db" [label="local://context" shape="ellipse"];
  "sha256:2c1bbdc1e5bc4463f7da267f95414713a4996f5d4affe7d98df30f6a5cb7f9af" [label="copy{src=/common.bash, dest=/usr/local/share/atlassian/common.sh}" shape="note"];
  "sha256:03b1fc01bdf6031985b22c35ca0dd42c62aeff1c9a165d2e4cb07de7301cf607" [label="/bin/sh -c groupadd -r $GID && chgrp $GID /usr/local/share/atlassian/common.sh && chmod g+w /usr/local/share/atlassian/common.sh && mkdir -p $ATLASSIAN_HOME" shape="box"];
  "sha256:52c9aed81a90fe9336cb6f7beb43d36ac7e1ecf34c0333aea3884d70efc08ab2" [label="sha256:52c9aed81a90fe9336cb6f7beb43d36ac7e1ecf34c0333aea3884d70efc08ab2" shape="plaintext"];
  "sha256:538d634276c70ada80bdb6442321f5dedbf3de6395bb888e3d419b088c290b93" -> "sha256:99679e75ac91e405c4fdebd051337c331657cccf402febd938fbfcfa96fed98d" [label=""];
  "sha256:99679e75ac91e405c4fdebd051337c331657cccf402febd938fbfcfa96fed98d" -> "sha256:3d4a25c0310199d60e7cda78351f2cbc8625913057a3642c0256b7c7ce704805" [label=""];
  "sha256:3d4a25c0310199d60e7cda78351f2cbc8625913057a3642c0256b7c7ce704805" -> "sha256:2c1bbdc1e5bc4463f7da267f95414713a4996f5d4affe7d98df30f6a5cb7f9af" [label=""];
  "sha256:a1d80c93fd9e3f611fea0776887bfb9673a55b4061dbdc716b35484e7ee610db" -> "sha256:2c1bbdc1e5bc4463f7da267f95414713a4996f5d4affe7d98df30f6a5cb7f9af" [label=""];
  "sha256:2c1bbdc1e5bc4463f7da267f95414713a4996f5d4affe7d98df30f6a5cb7f9af" -> "sha256:03b1fc01bdf6031985b22c35ca0dd42c62aeff1c9a165d2e4cb07de7301cf607" [label=""];
  "sha256:03b1fc01bdf6031985b22c35ca0dd42c62aeff1c9a165d2e4cb07de7301cf607" -> "sha256:52c9aed81a90fe9336cb6f7beb43d36ac7e1ecf34c0333aea3884d70efc08ab2" [label=""];
}

