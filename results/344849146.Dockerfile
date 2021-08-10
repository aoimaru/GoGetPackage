[app/sources/344849146.Dockerfile]
digraph {
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" [label="docker-image://docker.io/library/python:3.5" shape="ellipse"];
  "sha256:4d3dc2196cbca73709a355084d8ae236ed629d6530637e65a1f255fef71438c6" [label="mkdir{path=/root}" shape="note"];
  "sha256:f975957fb4633658f65262ea356449ed0ff87dd2b4f5214db42bfde55b94eb29" [label="/bin/sh -c echo \"deb http://ftp.us.debian.org/debian unstable main contrib non-free\" >> /etc/apt/sources.list.d/unstable.list &&    apt-get update && apt-get install -y     gcc     g++     git     cmake     libgmp-dev     libmpfr-dev     libgmpxx4ldbl     libboost-dev     libboost-thread-dev &&     apt-get clean &&     git clone --single-branch -b $BRANCH https://github.com/PyMesh/PyMesh.git" shape="box"];
  "sha256:cd9d0a97ae3210d8ae798fcaf24e0c470e866f2730614da9c99896a37c4c86a4" [label="mkdir{path=/root/PyMesh}" shape="note"];
  "sha256:2bcd3e11600c4b89efc534591d90e461c678faac77ae0ff0139d4685ca04836c" [label="/bin/sh -c git submodule update --init &&     pip install -r $PYMESH_PATH/python/requirements.txt &&     ./setup.py bdist_wheel &&     rm -rf build third_party/build &&     pip install dist/pymesh2*.whl &&     python -c \"import pymesh; pymesh.test()\" &&     python $PYMESH_PATH/docker/patches/patch_wheel.py" shape="box"];
  "sha256:d01b18042effe2d9be28c9d3df743fb04c266709545572b4f10ab462bcae111e" [label="sha256:d01b18042effe2d9be28c9d3df743fb04c266709545572b4f10ab462bcae111e" shape="plaintext"];
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" -> "sha256:4d3dc2196cbca73709a355084d8ae236ed629d6530637e65a1f255fef71438c6" [label=""];
  "sha256:4d3dc2196cbca73709a355084d8ae236ed629d6530637e65a1f255fef71438c6" -> "sha256:f975957fb4633658f65262ea356449ed0ff87dd2b4f5214db42bfde55b94eb29" [label=""];
  "sha256:f975957fb4633658f65262ea356449ed0ff87dd2b4f5214db42bfde55b94eb29" -> "sha256:cd9d0a97ae3210d8ae798fcaf24e0c470e866f2730614da9c99896a37c4c86a4" [label=""];
  "sha256:cd9d0a97ae3210d8ae798fcaf24e0c470e866f2730614da9c99896a37c4c86a4" -> "sha256:2bcd3e11600c4b89efc534591d90e461c678faac77ae0ff0139d4685ca04836c" [label=""];
  "sha256:2bcd3e11600c4b89efc534591d90e461c678faac77ae0ff0139d4685ca04836c" -> "sha256:d01b18042effe2d9be28c9d3df743fb04c266709545572b4f10ab462bcae111e" [label=""];
}

