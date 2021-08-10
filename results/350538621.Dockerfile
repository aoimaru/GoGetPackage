[app/sources/350538621.Dockerfile]
digraph {
  "sha256:73f306cc036dfe45f279d816aa8d436d3c285148988fc7e6b89db68636c663b1" [label="local://context" shape="ellipse"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:47424f8c865e6e06c1ba64b8339de988fe9aa9fb9047b3a168fd8b3450f2f3fd" [label="copy{src=/imagefiles/build-and-install-git.sh, dest=/imagefiles/},copy{src=/imagefiles/build-and-install-python.sh, dest=/imagefiles/},copy{src=/imagefiles/install-cmake-binary.sh, dest=/imagefiles/},copy{src=/imagefiles/install-gosu-binary.sh, dest=/imagefiles/},copy{src=/imagefiles/install-gosu-binary-wrapper.sh, dest=/imagefiles/},copy{src=/imagefiles/install-ninja-binary.sh, dest=/imagefiles/}" shape="note"];
  "sha256:d71bbdb66154b4476ed78ec1141108a75fbd2ac1893bbd5aa98b6ba6088f07ea" [label="/bin/sh -c yum update -y &&   yum install -y    automake    bison    bzip2-devel    curl    curl-devel    coreutils    file    gettext    make    openssh-clients    openssl-devel    patch    perl    perl-devel    unzip    wget    which    yasm    zlib-devel   &&   cd /etc/yum.repos.d &&   wget http://people.centos.org/tru/devtools-2/devtools-2.repo &&   yum install -y    devtoolset-2-gcc    devtoolset-2-binutils    devtoolset-2-gcc-gfortran    devtoolset-2-gcc-c++   &&   /imagefiles/install-cmake-binary.sh &&   /imagefiles/install-gosu-binary.sh &&   /imagefiles/install-gosu-binary-wrapper.sh &&   /imagefiles/install-ninja-binary.sh &&   /imagefiles/build-and-install-git.sh &&   /imagefiles/build-and-install-python.sh &&   rm -rf /imagefiles &&   yum -y clean all && rm -rf /var/cache/yum" shape="box"];
  "sha256:8a3f97668065b488cb20082eda2f43d856a387d11010773711466cf77f3053e4" [label="mkdir{path=/work}" shape="note"];
  "sha256:1ae4f8b48fd5ca56978be0146ef5d8b5109a1dd953183bd920f0ea87940f813c" [label="copy{src=/imagefiles/entrypoint.sh, dest=/dockcross/},copy{src=/imagefiles/dockcross, dest=/dockcross/}" shape="note"];
  "sha256:330b6162bcf76bca16ae06e87c4f6bdbd139770b6403fa395f1a987377fc5551" [label="sha256:330b6162bcf76bca16ae06e87c4f6bdbd139770b6403fa395f1a987377fc5551" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:47424f8c865e6e06c1ba64b8339de988fe9aa9fb9047b3a168fd8b3450f2f3fd" [label=""];
  "sha256:73f306cc036dfe45f279d816aa8d436d3c285148988fc7e6b89db68636c663b1" -> "sha256:47424f8c865e6e06c1ba64b8339de988fe9aa9fb9047b3a168fd8b3450f2f3fd" [label=""];
  "sha256:47424f8c865e6e06c1ba64b8339de988fe9aa9fb9047b3a168fd8b3450f2f3fd" -> "sha256:d71bbdb66154b4476ed78ec1141108a75fbd2ac1893bbd5aa98b6ba6088f07ea" [label=""];
  "sha256:d71bbdb66154b4476ed78ec1141108a75fbd2ac1893bbd5aa98b6ba6088f07ea" -> "sha256:8a3f97668065b488cb20082eda2f43d856a387d11010773711466cf77f3053e4" [label=""];
  "sha256:8a3f97668065b488cb20082eda2f43d856a387d11010773711466cf77f3053e4" -> "sha256:1ae4f8b48fd5ca56978be0146ef5d8b5109a1dd953183bd920f0ea87940f813c" [label=""];
  "sha256:73f306cc036dfe45f279d816aa8d436d3c285148988fc7e6b89db68636c663b1" -> "sha256:1ae4f8b48fd5ca56978be0146ef5d8b5109a1dd953183bd920f0ea87940f813c" [label=""];
  "sha256:1ae4f8b48fd5ca56978be0146ef5d8b5109a1dd953183bd920f0ea87940f813c" -> "sha256:330b6162bcf76bca16ae06e87c4f6bdbd139770b6403fa395f1a987377fc5551" [label=""];
}

