[app/sources/301352840.Dockerfile]
digraph {
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" [label="docker-image://docker.io/library/debian:buster" shape="ellipse"];
  "sha256:502930b14e55d3edd2ecb29c9ea1c99a19ca6c7ee16e2a4f661d583ba5c668ae" [label="local://context" shape="ellipse"];
  "sha256:052e25f23dabf351c7f8d625cb40cd8bffb086ebbeb902e65c46e9c16a8a8992" [label="copy{src=/sources.list, dest=/etc/apt/sources.list}" shape="note"];
  "sha256:e7c18cb0c3266b74a36fc95ab628e6366c54027b3a48ddbf9b812e159619a2a3" [label="copy{src=/docker-common.sh, dest=/docker-common.sh}" shape="note"];
  "sha256:de159bb4d43f639ce593f9a881961261dee6d149831907eaaaf0cbcd2fc52699" [label="/bin/sh -c bash docker-common.sh && rm -f docker-common.sh" shape="box"];
  "sha256:7024a5100fe7efa2648b875424ec7fb10030e1a447bf08cd607428894488609a" [label="/bin/sh -c apt-get -y install         rsync         g++         gcc         make         git         cmake         libssl-dev         libuv1-dev         python         python-pip         python3         python3-pip         python3-all-dev         python2.7-dev" shape="box"];
  "sha256:f55db24177c1dc30f45074866458c67872e3211d2ef1d3bc3fd1d909063c3bdf" [label="/bin/sh -c pip3 install --upgrade pip &&     pip2 install --upgrade pip" shape="box"];
  "sha256:976a72b51fbbb180834315fcaaa1976bc815c298b5cf272b89f5229d3e13cdc2" [label="/bin/sh -c pip3 install wheel &&     pip2 install wheel" shape="box"];
  "sha256:7291a504a8523d730b3225a80c7b3a498bebbcf86cc84dfb116f29ec61550bad" [label="sha256:7291a504a8523d730b3225a80c7b3a498bebbcf86cc84dfb116f29ec61550bad" shape="plaintext"];
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" -> "sha256:052e25f23dabf351c7f8d625cb40cd8bffb086ebbeb902e65c46e9c16a8a8992" [label=""];
  "sha256:502930b14e55d3edd2ecb29c9ea1c99a19ca6c7ee16e2a4f661d583ba5c668ae" -> "sha256:052e25f23dabf351c7f8d625cb40cd8bffb086ebbeb902e65c46e9c16a8a8992" [label=""];
  "sha256:052e25f23dabf351c7f8d625cb40cd8bffb086ebbeb902e65c46e9c16a8a8992" -> "sha256:e7c18cb0c3266b74a36fc95ab628e6366c54027b3a48ddbf9b812e159619a2a3" [label=""];
  "sha256:502930b14e55d3edd2ecb29c9ea1c99a19ca6c7ee16e2a4f661d583ba5c668ae" -> "sha256:e7c18cb0c3266b74a36fc95ab628e6366c54027b3a48ddbf9b812e159619a2a3" [label=""];
  "sha256:e7c18cb0c3266b74a36fc95ab628e6366c54027b3a48ddbf9b812e159619a2a3" -> "sha256:de159bb4d43f639ce593f9a881961261dee6d149831907eaaaf0cbcd2fc52699" [label=""];
  "sha256:de159bb4d43f639ce593f9a881961261dee6d149831907eaaaf0cbcd2fc52699" -> "sha256:7024a5100fe7efa2648b875424ec7fb10030e1a447bf08cd607428894488609a" [label=""];
  "sha256:7024a5100fe7efa2648b875424ec7fb10030e1a447bf08cd607428894488609a" -> "sha256:f55db24177c1dc30f45074866458c67872e3211d2ef1d3bc3fd1d909063c3bdf" [label=""];
  "sha256:f55db24177c1dc30f45074866458c67872e3211d2ef1d3bc3fd1d909063c3bdf" -> "sha256:976a72b51fbbb180834315fcaaa1976bc815c298b5cf272b89f5229d3e13cdc2" [label=""];
  "sha256:976a72b51fbbb180834315fcaaa1976bc815c298b5cf272b89f5229d3e13cdc2" -> "sha256:7291a504a8523d730b3225a80c7b3a498bebbcf86cc84dfb116f29ec61550bad" [label=""];
}

