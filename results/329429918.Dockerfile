[app/sources/329429918.Dockerfile]
digraph {
  "sha256:513842b5b342aeeb109bb46cea7e345590faae5a77cf024f89d2c9ac64662120" [label="docker-image://docker.io/library/debian:stretch-20171210" shape="ellipse"];
  "sha256:ebe455e8fe56d66a13cd2e80bf175d37f4e20838d7171d118f3da4742e0e093f" [label="local://context" shape="ellipse"];
  "sha256:482442c03d702f927cd14ee1b078d2276ddf06c19a0d2f7a9ae511ebfc980dc0" [label="copy{src=/apt-sources.list, dest=/etc/apt/sources.list}" shape="note"];
  "sha256:9d859a650008936520045ec0fc48467049080430d3cd571c622907039a125363" [label="/bin/sh -c dpkg --add-architecture i386 &&     apt-get update -y" shape="box"];
  "sha256:667ff2b0a141a679c3c8516e11fcf8baa42968954cc78edde3f824039a8df748" [label="/bin/sh -c apt-get install -y --no-install-recommends         bc         build-essential         bzr         ca-certificates         cmake         cpio         cvs         file         g++-multilib         git         libc6:i386         libncurses5-dev         locales         mercurial         python-flake8         python-nose2         python-pexpect         qemu-system-arm         qemu-system-x86         rsync         subversion         unzip         wget         &&     apt-get -y autoremove &&     apt-get -y clean" shape="box"];
  "sha256:9b96ac35f80b1e109f8f1f096366bb32b1dd59e6049021e886413cee89941487" [label="/bin/sh -c sed -i 's/# \\(en_US.UTF-8\\)/\\1/' /etc/locale.gen &&     /usr/sbin/locale-gen" shape="box"];
  "sha256:a329c228b289698500fc9812f60dedff41aef55cb6a02776b6b492cd0a9d1be4" [label="/bin/sh -c useradd -ms /bin/bash br-user &&     chown -R br-user:br-user /home/br-user" shape="box"];
  "sha256:22c90e27c5ed990d15da233f40f783a5333cf24e6a0bcfc7cf89275b7638ed28" [label="mkdir{path=/home/br-user}" shape="note"];
  "sha256:f8e40c6db2cba874265b4196f38063b415b0fcee786c311cc43c96f2db68fbb9" [label="sha256:f8e40c6db2cba874265b4196f38063b415b0fcee786c311cc43c96f2db68fbb9" shape="plaintext"];
  "sha256:513842b5b342aeeb109bb46cea7e345590faae5a77cf024f89d2c9ac64662120" -> "sha256:482442c03d702f927cd14ee1b078d2276ddf06c19a0d2f7a9ae511ebfc980dc0" [label=""];
  "sha256:ebe455e8fe56d66a13cd2e80bf175d37f4e20838d7171d118f3da4742e0e093f" -> "sha256:482442c03d702f927cd14ee1b078d2276ddf06c19a0d2f7a9ae511ebfc980dc0" [label=""];
  "sha256:482442c03d702f927cd14ee1b078d2276ddf06c19a0d2f7a9ae511ebfc980dc0" -> "sha256:9d859a650008936520045ec0fc48467049080430d3cd571c622907039a125363" [label=""];
  "sha256:9d859a650008936520045ec0fc48467049080430d3cd571c622907039a125363" -> "sha256:667ff2b0a141a679c3c8516e11fcf8baa42968954cc78edde3f824039a8df748" [label=""];
  "sha256:667ff2b0a141a679c3c8516e11fcf8baa42968954cc78edde3f824039a8df748" -> "sha256:9b96ac35f80b1e109f8f1f096366bb32b1dd59e6049021e886413cee89941487" [label=""];
  "sha256:9b96ac35f80b1e109f8f1f096366bb32b1dd59e6049021e886413cee89941487" -> "sha256:a329c228b289698500fc9812f60dedff41aef55cb6a02776b6b492cd0a9d1be4" [label=""];
  "sha256:a329c228b289698500fc9812f60dedff41aef55cb6a02776b6b492cd0a9d1be4" -> "sha256:22c90e27c5ed990d15da233f40f783a5333cf24e6a0bcfc7cf89275b7638ed28" [label=""];
  "sha256:22c90e27c5ed990d15da233f40f783a5333cf24e6a0bcfc7cf89275b7638ed28" -> "sha256:f8e40c6db2cba874265b4196f38063b415b0fcee786c311cc43c96f2db68fbb9" [label=""];
}

