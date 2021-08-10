[app/sources/323421693.Dockerfile]
digraph {
  "sha256:6d057cc2302805b5818acee456fa932a931eabf1a4f08c364c2d85d42b6a1bc4" [label="docker-image://docker.io/library/python:3.6-slim-stretch" shape="ellipse"];
  "sha256:dbee55fbb7d2356b2704277ad978d8fcfaf5d870ec868d9a85ebb0b6c2155524" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:11c251d1a6aa38b83d931bb6e9fe65141f6905ae797683629ec11b7015c917d4" [label="/bin/sh -c apt-get install -y --fix-missing     build-essential     cmake     gfortran     git     wget     curl     libjpeg-dev     liblapack-dev     libswscale-dev     pkg-config     python3-numpy     zip     libboost-dev     libboost-all-dev     libsm6     libxext6     libfontconfig1     libxrender1     && apt-get clean && rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:27adc5c247641f375617fccc9c0174129a485cf634ffe3389ccc1909dd4afcb4" [label="local://context" shape="ellipse"];
  "sha256:fc25bef86809e272d8b9f2fe46377c3319c26264e9c847e8185e1e69f5ad0f66" [label="copy{src=/requirements.txt, dest=/root/requirements.txt}" shape="note"];
  "sha256:a299f44cf47d4d14c01d93d4f65b59c917d91011aa0ca4edd107804831ac637d" [label="/bin/sh -c pip3.6 install torch" shape="box"];
  "sha256:ec73fac1c5560eb0ea0d300e19a1e242c92e11f24452244cc46ac12ed3ef1027" [label="/bin/sh -c export CPLUS_INCLUDE_PATH=/usr/local/include/python3.6m &&     pip3.6 install --upgrade pip==9.0.3 &&     pip3.6 install -r /root/requirements.txt" shape="box"];
  "sha256:3b5374b9e00b453ee732b8068798c5762002345ea4adb7da2a2a77e1cc945f8c" [label="mkdir{path=/root}" shape="note"];
  "sha256:4b4036417ee790e2c9fa2066ac05e06a971910c42ce6e009b59fee91b6d3f563" [label="sha256:4b4036417ee790e2c9fa2066ac05e06a971910c42ce6e009b59fee91b6d3f563" shape="plaintext"];
  "sha256:6d057cc2302805b5818acee456fa932a931eabf1a4f08c364c2d85d42b6a1bc4" -> "sha256:dbee55fbb7d2356b2704277ad978d8fcfaf5d870ec868d9a85ebb0b6c2155524" [label=""];
  "sha256:dbee55fbb7d2356b2704277ad978d8fcfaf5d870ec868d9a85ebb0b6c2155524" -> "sha256:11c251d1a6aa38b83d931bb6e9fe65141f6905ae797683629ec11b7015c917d4" [label=""];
  "sha256:11c251d1a6aa38b83d931bb6e9fe65141f6905ae797683629ec11b7015c917d4" -> "sha256:fc25bef86809e272d8b9f2fe46377c3319c26264e9c847e8185e1e69f5ad0f66" [label=""];
  "sha256:27adc5c247641f375617fccc9c0174129a485cf634ffe3389ccc1909dd4afcb4" -> "sha256:fc25bef86809e272d8b9f2fe46377c3319c26264e9c847e8185e1e69f5ad0f66" [label=""];
  "sha256:fc25bef86809e272d8b9f2fe46377c3319c26264e9c847e8185e1e69f5ad0f66" -> "sha256:a299f44cf47d4d14c01d93d4f65b59c917d91011aa0ca4edd107804831ac637d" [label=""];
  "sha256:a299f44cf47d4d14c01d93d4f65b59c917d91011aa0ca4edd107804831ac637d" -> "sha256:ec73fac1c5560eb0ea0d300e19a1e242c92e11f24452244cc46ac12ed3ef1027" [label=""];
  "sha256:ec73fac1c5560eb0ea0d300e19a1e242c92e11f24452244cc46ac12ed3ef1027" -> "sha256:3b5374b9e00b453ee732b8068798c5762002345ea4adb7da2a2a77e1cc945f8c" [label=""];
  "sha256:3b5374b9e00b453ee732b8068798c5762002345ea4adb7da2a2a77e1cc945f8c" -> "sha256:4b4036417ee790e2c9fa2066ac05e06a971910c42ce6e009b59fee91b6d3f563" [label=""];
}

