[app/sources/399173113.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:d7d45969d47c3c02598f3aba8e5894fc4cee9529081854324cc99e8a13c2d686" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends       add-apt-key       apt       apt-transport-https       apt-utils       ca-certificates       curl       git       net-tools       openssh-client       sudo       vim       wget" shape="box"];
  "sha256:2c7fe2f04d512bf4fc94caf9632aff9d80e4e1cb413f64706d58622fec3102aa" [label="/bin/sh -c add-apt-key -v 6A755776 -k keyserver.ubuntu.com &&     add-apt-key -v E1DF1F24 -k keyserver.ubuntu.com &&     echo \"deb http://ppa.launchpad.net/git-core/ppa/ubuntu xenial main\" >> /etc/apt/sources.list &&     echo \"deb http://ppa.launchpad.net/deadsnakes/ppa/ubuntu xenial main\" >> /etc/apt/sources.list &&     apt-get update &&     apt-get install -y --install-recommends git python2.7 python3.4 python3.5 python3.6 python3.7 &&     update-alternatives --install /usr/bin/python3 python3 /usr/bin/python2.7 27 &&     update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.4 34 &&     update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 35 &&     update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 36 &&     update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 37" shape="box"];
  "sha256:b7fbbc1d4aad605ff196d1d860829728520fc5b2ad8b827a54692f7574b9fe08" [label="/bin/sh -c curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py &&     python3 get-pip.py &&     pip3 install tox" shape="box"];
  "sha256:ae925ec88ac031d0ded694d52d19d433f3393112c18e26912df8fe3cc4b283a1" [label="/bin/sh -c rm -rf /var/cache/apt/* &&     rm -rf /var/lib/apt/lists/* &&     rm -rf /tmp/* &&     rm -rf /var/tmp/*" shape="box"];
  "sha256:1f607e282987bc1d2b878365f3da53d221a46607184608925f41a7d328036060" [label="/bin/sh -c useradd -m ${CONTAINER_USER} &&     echo ${CONTAINER_USER}:${CONTAINER_USER} | chpasswd &&     echo \"${CONTAINER_USER}  ALL=(root) ALL\" >> /etc/sudoers" shape="box"];
  "sha256:e5e33f0453fd27544d5cc21fcb804dfe5e84f60d184459032cdfa11f24581a09" [label="/bin/sh -c chsh --shell /bin/bash ${CONTAINER_USER}" shape="box"];
  "sha256:26a45792c1dca5df32cff8e9d2623ce2f5da995f9c297ca5d7d56faa274f369f" [label="/bin/sh -c git clone --recursive https://github.com/gitpython-developers/GitPython.git /home/${CONTAINER_USER}/testrepo &&     cd /home/${CONTAINER_USER}/testrepo &&     ./init-tests-after-clone.sh" shape="box"];
  "sha256:a7ec610e25338086b525adb3c8deaa768058148a478ade83b72856f5f4eceb6d" [label="/bin/sh -c git config --global user.email ci@gitpython.org &&     git config --global user.name \"GitPython CI User\"" shape="box"];
  "sha256:1947f69787dd8f42a9b3ffed68baf4c15a749b9c5238dbe9a755539bbb677612" [label="sha256:1947f69787dd8f42a9b3ffed68baf4c15a749b9c5238dbe9a755539bbb677612" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:d7d45969d47c3c02598f3aba8e5894fc4cee9529081854324cc99e8a13c2d686" [label=""];
  "sha256:d7d45969d47c3c02598f3aba8e5894fc4cee9529081854324cc99e8a13c2d686" -> "sha256:2c7fe2f04d512bf4fc94caf9632aff9d80e4e1cb413f64706d58622fec3102aa" [label=""];
  "sha256:2c7fe2f04d512bf4fc94caf9632aff9d80e4e1cb413f64706d58622fec3102aa" -> "sha256:b7fbbc1d4aad605ff196d1d860829728520fc5b2ad8b827a54692f7574b9fe08" [label=""];
  "sha256:b7fbbc1d4aad605ff196d1d860829728520fc5b2ad8b827a54692f7574b9fe08" -> "sha256:ae925ec88ac031d0ded694d52d19d433f3393112c18e26912df8fe3cc4b283a1" [label=""];
  "sha256:ae925ec88ac031d0ded694d52d19d433f3393112c18e26912df8fe3cc4b283a1" -> "sha256:1f607e282987bc1d2b878365f3da53d221a46607184608925f41a7d328036060" [label=""];
  "sha256:1f607e282987bc1d2b878365f3da53d221a46607184608925f41a7d328036060" -> "sha256:e5e33f0453fd27544d5cc21fcb804dfe5e84f60d184459032cdfa11f24581a09" [label=""];
  "sha256:e5e33f0453fd27544d5cc21fcb804dfe5e84f60d184459032cdfa11f24581a09" -> "sha256:26a45792c1dca5df32cff8e9d2623ce2f5da995f9c297ca5d7d56faa274f369f" [label=""];
  "sha256:26a45792c1dca5df32cff8e9d2623ce2f5da995f9c297ca5d7d56faa274f369f" -> "sha256:a7ec610e25338086b525adb3c8deaa768058148a478ade83b72856f5f4eceb6d" [label=""];
  "sha256:a7ec610e25338086b525adb3c8deaa768058148a478ade83b72856f5f4eceb6d" -> "sha256:1947f69787dd8f42a9b3ffed68baf4c15a749b9c5238dbe9a755539bbb677612" [label=""];
}

