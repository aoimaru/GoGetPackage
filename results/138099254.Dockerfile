[app/sources/138099254.Dockerfile]
digraph {
  "sha256:513842b5b342aeeb109bb46cea7e345590faae5a77cf024f89d2c9ac64662120" [label="docker-image://docker.io/library/debian:stretch-20171210" shape="ellipse"];
  "sha256:a1bee654545f904cb94a87ffd25aea9992d64c0827c94e10e8d196ba1eef8c21" [label="local://context" shape="ellipse"];
  "sha256:7bcc3654d5fde51132c4cbe3ebd260511d4cff8a72686baca86ef9ea29380dec" [label="copy{src=/apt-sources.list, dest=/etc/apt/sources.list}" shape="note"];
  "sha256:c85190d4916ab347fed1abd1c47c41525ff42b4b992a9e47b29a6322a826f8f6" [label="/bin/sh -c dpkg --add-architecture i386 &&     apt-get update -y" shape="box"];
  "sha256:e754b3e24347b99333e6f1185729d8c4b49980a4a1b539abce93274d0e35bd31" [label="/bin/sh -c apt-get install -y --no-install-recommends         bc         build-essential         bzr         ca-certificates         cmake         cpio         cvs         file         g++-multilib         git         libc6:i386         libncurses5-dev         locales         mercurial         python-flake8         python-nose2         python-pexpect         qemu-system-arm         qemu-system-x86         rsync         subversion         unzip         wget         &&     apt-get -y autoremove &&     apt-get -y clean" shape="box"];
  "sha256:02f3db958e49ad1c95d85ef0ba3426f089675c590e7e294bea9c6bb59e44e9af" [label="/bin/sh -c sed -i 's/# \\(en_US.UTF-8\\)/\\1/' /etc/locale.gen &&     /usr/sbin/locale-gen" shape="box"];
  "sha256:668f2469c9688f735d4345e7e29eaca6c4c455aef1fe49d0c52b0daa25aafab4" [label="/bin/sh -c useradd -ms /bin/bash br-user &&     chown -R br-user:br-user /home/br-user" shape="box"];
  "sha256:686279bdc62a3a150cb612bdfe97bfc31bee44cd24ef115e398889788e621964" [label="mkdir{path=/home/br-user}" shape="note"];
  "sha256:5b921b63e731da0f49a033bc4091045f4ef8972c98f6304853783fcff30f2130" [label="sha256:5b921b63e731da0f49a033bc4091045f4ef8972c98f6304853783fcff30f2130" shape="plaintext"];
  "sha256:513842b5b342aeeb109bb46cea7e345590faae5a77cf024f89d2c9ac64662120" -> "sha256:7bcc3654d5fde51132c4cbe3ebd260511d4cff8a72686baca86ef9ea29380dec" [label=""];
  "sha256:a1bee654545f904cb94a87ffd25aea9992d64c0827c94e10e8d196ba1eef8c21" -> "sha256:7bcc3654d5fde51132c4cbe3ebd260511d4cff8a72686baca86ef9ea29380dec" [label=""];
  "sha256:7bcc3654d5fde51132c4cbe3ebd260511d4cff8a72686baca86ef9ea29380dec" -> "sha256:c85190d4916ab347fed1abd1c47c41525ff42b4b992a9e47b29a6322a826f8f6" [label=""];
  "sha256:c85190d4916ab347fed1abd1c47c41525ff42b4b992a9e47b29a6322a826f8f6" -> "sha256:e754b3e24347b99333e6f1185729d8c4b49980a4a1b539abce93274d0e35bd31" [label=""];
  "sha256:e754b3e24347b99333e6f1185729d8c4b49980a4a1b539abce93274d0e35bd31" -> "sha256:02f3db958e49ad1c95d85ef0ba3426f089675c590e7e294bea9c6bb59e44e9af" [label=""];
  "sha256:02f3db958e49ad1c95d85ef0ba3426f089675c590e7e294bea9c6bb59e44e9af" -> "sha256:668f2469c9688f735d4345e7e29eaca6c4c455aef1fe49d0c52b0daa25aafab4" [label=""];
  "sha256:668f2469c9688f735d4345e7e29eaca6c4c455aef1fe49d0c52b0daa25aafab4" -> "sha256:686279bdc62a3a150cb612bdfe97bfc31bee44cd24ef115e398889788e621964" [label=""];
  "sha256:686279bdc62a3a150cb612bdfe97bfc31bee44cd24ef115e398889788e621964" -> "sha256:5b921b63e731da0f49a033bc4091045f4ef8972c98f6304853783fcff30f2130" [label=""];
}

