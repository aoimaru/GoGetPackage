[app/sources/358673196.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:131619cc80b2bbe2a6a71b903a6f2a8188387b0c4cb7e26594a5447a19df3e8e" [label="mkdir{path=/root}" shape="note"];
  "sha256:93b0ada53a50ff8250faf19d60062c6d8395321b2b499b5cd365b15b165a3b20" [label="/bin/sh -c apt-get update &&     apt-get install -y     python-setuptools     r-base     python-pip     python-dev     python-rpy2     liblzma-dev     wget" shape="box"];
  "sha256:6a087ecd1f5a3312c7724fa160721d0dbb2d5a10f9f399e2096499ca8d504997" [label="/bin/sh -c wget https://sourceforge.net/projects/samtools/files/samtools/0.1.7/samtools-0.1.7_x86_64-linux.tar.bz2/download &&   tar -xvf download &&   cd samtools-0.1.7_x86_64-linux &&   chmod +x samtools &&   cp samtools /usr/local/bin/ &&   cd /root &&   rm -rf download" shape="box"];
  "sha256:f15e1737e3179c7cf1e97065651a0f00c4e210085dac2cedd2d5fd72b6ca9248" [label="/bin/sh -c wget http://lilab.research.bcm.edu/dldcc-web/lilab/kaifuc/danpos/release/danpos-2.2.2.tgz &&   tar -zxvf danpos-2.2.2.tgz &&   chmod +x danpos-2.2.2/*.py &&   cp danpos-2.2.2/*.py /usr/local/bin/ &&   cd /root &&   rm -rf danpos-2.2.2.tgz danpos-2.2.2" shape="box"];
  "sha256:fdd99c2d385615ab28e373bbea244f99be4b2f0db7577a7bed043ab08d2a64e5" [label="sha256:fdd99c2d385615ab28e373bbea244f99be4b2f0db7577a7bed043ab08d2a64e5" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:131619cc80b2bbe2a6a71b903a6f2a8188387b0c4cb7e26594a5447a19df3e8e" [label=""];
  "sha256:131619cc80b2bbe2a6a71b903a6f2a8188387b0c4cb7e26594a5447a19df3e8e" -> "sha256:93b0ada53a50ff8250faf19d60062c6d8395321b2b499b5cd365b15b165a3b20" [label=""];
  "sha256:93b0ada53a50ff8250faf19d60062c6d8395321b2b499b5cd365b15b165a3b20" -> "sha256:6a087ecd1f5a3312c7724fa160721d0dbb2d5a10f9f399e2096499ca8d504997" [label=""];
  "sha256:6a087ecd1f5a3312c7724fa160721d0dbb2d5a10f9f399e2096499ca8d504997" -> "sha256:f15e1737e3179c7cf1e97065651a0f00c4e210085dac2cedd2d5fd72b6ca9248" [label=""];
  "sha256:f15e1737e3179c7cf1e97065651a0f00c4e210085dac2cedd2d5fd72b6ca9248" -> "sha256:fdd99c2d385615ab28e373bbea244f99be4b2f0db7577a7bed043ab08d2a64e5" [label=""];
}

