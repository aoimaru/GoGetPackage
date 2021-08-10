[app/sources/455948141.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:6aaf90b52dbd44f92ba2d6a25cec3841dde7b54ffcab894c9d3bbc1dd13df028" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y   python python-dev python-setuptools python-pip   python3 python3-dev python3-setuptools python3-pip   gcc git openssh-client less curl   libxtst-dev libxext-dev libxrender-dev libfreetype6-dev   libfontconfig1 libgtk2.0-0 libxslt1.1 libxxf86vm1   && rm -rf /var/lib/apt/lists/*   && useradd -ms /bin/bash developer" shape="box"];
  "sha256:c543a194576029371fa56feb97834465cef8fb0dcb750c2236b4d266be5da7bb" [label="mkdir{path=/opt/pycharm}" shape="note"];
  "sha256:1191b48187d2ad17a33e6c7858882212f1b334fd9250447e6f03a825b7332d5b" [label="/bin/sh -c curl -fsSL $pycharm_source -o /opt/pycharm/installer.tgz   && tar --strip-components=1 -xzf installer.tgz   && rm installer.tgz   && /usr/bin/python2 /opt/pycharm/helpers/pydev/setup_cython.py build_ext --inplace   && /usr/bin/python3 /opt/pycharm/helpers/pydev/setup_cython.py build_ext --inplace" shape="box"];
  "sha256:6853e27e4d7f709087076aa39748336febe696ce1e63967e7f447839ecd95ee3" [label="/bin/sh -c mkdir /home/developer/.PyCharm   && ln -sf /home/developer/.PyCharm /home/developer/$pycharm_local_dir" shape="box"];
  "sha256:1e72c21d2bfd148eb1aef033a3b351437f416ffc14f9610293e58fa71c7c9917" [label="sha256:1e72c21d2bfd148eb1aef033a3b351437f416ffc14f9610293e58fa71c7c9917" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:6aaf90b52dbd44f92ba2d6a25cec3841dde7b54ffcab894c9d3bbc1dd13df028" [label=""];
  "sha256:6aaf90b52dbd44f92ba2d6a25cec3841dde7b54ffcab894c9d3bbc1dd13df028" -> "sha256:c543a194576029371fa56feb97834465cef8fb0dcb750c2236b4d266be5da7bb" [label=""];
  "sha256:c543a194576029371fa56feb97834465cef8fb0dcb750c2236b4d266be5da7bb" -> "sha256:1191b48187d2ad17a33e6c7858882212f1b334fd9250447e6f03a825b7332d5b" [label=""];
  "sha256:1191b48187d2ad17a33e6c7858882212f1b334fd9250447e6f03a825b7332d5b" -> "sha256:6853e27e4d7f709087076aa39748336febe696ce1e63967e7f447839ecd95ee3" [label=""];
  "sha256:6853e27e4d7f709087076aa39748336febe696ce1e63967e7f447839ecd95ee3" -> "sha256:1e72c21d2bfd148eb1aef033a3b351437f416ffc14f9610293e58fa71c7c9917" [label=""];
}

