[app/sources/320592980.Dockerfile]
digraph {
  "sha256:76e6e5341977bb990476ccd45a16a10c31dfbcdbad432b7338b6a5adbd0b3892" [label="https://raw.githubusercontent.com/IBM-Swift/swift-ubuntu-docker/master/utils/tools-utils.sh" shape="ellipse"];
  "sha256:b0872f69df7c0c6d9ce1fd7083d8056fb33ac01afb570d7c5aeebb9adc8b2838" [label="docker-image://docker.io/ibmcom/swift-ubuntu:4.1.1@sha256:282116aaf250a651da9499e4780956dc50e9856a99d6c2f5f8b71d6d9eb6ea43" shape="ellipse"];
  "sha256:e958a7100c361ba8abe85a31ba0493c22dffa7ad80ac283771c81f7bb1f65d03" [label="copy{src=/tools-utils.sh, dest=/swift-utils/tools-utils.sh}" shape="note"];
  "sha256:ba3ff76a3e53aa2be59065e68efa8b9b56d533c2a02aa644960a3f216aa4f33d" [label="https://raw.githubusercontent.com/IBM-Swift/swift-ubuntu-docker/master/utils/common-utils.sh" shape="ellipse"];
  "sha256:91a08a1d2515d513bc31541cf62bf9aa82707fc538be4f63c49fa48d41b95c6b" [label="copy{src=/common-utils.sh, dest=/swift-utils/common-utils.sh}" shape="note"];
  "sha256:3e076c9f06c134286afb7b30826664a92c9ae95c83f81f8aafd0395f09b61a8b" [label="/bin/sh -c chmod -R 555 /swift-utils" shape="box"];
  "sha256:e7965d95cf713f04e0069e7dc86ebcc2c789a4e82282dcef5486c73ef33d6761" [label="/bin/sh -c if [ \"$bx_dev_user\" != root ]; then useradd -ms /bin/bash -u $bx_dev_userid $bx_dev_user; fi" shape="box"];
  "sha256:098e5dea293644bf28c9ef69f17a43e7c8b15f8f69092412b34f7beed38456e6" [label="/bin/sh -c echo \"$bx_dev_user ALL=NOPASSWD: ALL\" > /etc/sudoers.d/user &&     chmod 0440 /etc/sudoers.d/user" shape="box"];
  "sha256:5fe3b3082b1c6f84f6ec9f7bca0466f0d025e1f6cf5c9922b1faea7539f6cff2" [label="local://context" shape="ellipse"];
  "sha256:cb459d04a52c39e70ee76c7cac2bfddfcf737d82042d7b69f3d3757f22f48542" [label="copy{src=/, dest=/swift-project}" shape="note"];
  "sha256:1e5b8c79227cfe4be4fe8c34d7fd93bef3895f1da983fa806c38fbfad8680f45" [label="sha256:1e5b8c79227cfe4be4fe8c34d7fd93bef3895f1da983fa806c38fbfad8680f45" shape="plaintext"];
  "sha256:b0872f69df7c0c6d9ce1fd7083d8056fb33ac01afb570d7c5aeebb9adc8b2838" -> "sha256:e958a7100c361ba8abe85a31ba0493c22dffa7ad80ac283771c81f7bb1f65d03" [label=""];
  "sha256:76e6e5341977bb990476ccd45a16a10c31dfbcdbad432b7338b6a5adbd0b3892" -> "sha256:e958a7100c361ba8abe85a31ba0493c22dffa7ad80ac283771c81f7bb1f65d03" [label=""];
  "sha256:e958a7100c361ba8abe85a31ba0493c22dffa7ad80ac283771c81f7bb1f65d03" -> "sha256:91a08a1d2515d513bc31541cf62bf9aa82707fc538be4f63c49fa48d41b95c6b" [label=""];
  "sha256:ba3ff76a3e53aa2be59065e68efa8b9b56d533c2a02aa644960a3f216aa4f33d" -> "sha256:91a08a1d2515d513bc31541cf62bf9aa82707fc538be4f63c49fa48d41b95c6b" [label=""];
  "sha256:91a08a1d2515d513bc31541cf62bf9aa82707fc538be4f63c49fa48d41b95c6b" -> "sha256:3e076c9f06c134286afb7b30826664a92c9ae95c83f81f8aafd0395f09b61a8b" [label=""];
  "sha256:3e076c9f06c134286afb7b30826664a92c9ae95c83f81f8aafd0395f09b61a8b" -> "sha256:e7965d95cf713f04e0069e7dc86ebcc2c789a4e82282dcef5486c73ef33d6761" [label=""];
  "sha256:e7965d95cf713f04e0069e7dc86ebcc2c789a4e82282dcef5486c73ef33d6761" -> "sha256:098e5dea293644bf28c9ef69f17a43e7c8b15f8f69092412b34f7beed38456e6" [label=""];
  "sha256:098e5dea293644bf28c9ef69f17a43e7c8b15f8f69092412b34f7beed38456e6" -> "sha256:cb459d04a52c39e70ee76c7cac2bfddfcf737d82042d7b69f3d3757f22f48542" [label=""];
  "sha256:5fe3b3082b1c6f84f6ec9f7bca0466f0d025e1f6cf5c9922b1faea7539f6cff2" -> "sha256:cb459d04a52c39e70ee76c7cac2bfddfcf737d82042d7b69f3d3757f22f48542" [label=""];
  "sha256:cb459d04a52c39e70ee76c7cac2bfddfcf737d82042d7b69f3d3757f22f48542" -> "sha256:1e5b8c79227cfe4be4fe8c34d7fd93bef3895f1da983fa806c38fbfad8680f45" [label=""];
}

