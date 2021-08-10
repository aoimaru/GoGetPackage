[app/sources/474863088.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:9d5b625da4235902f43af3a80f35a837968b8bb17642f2a22562f086155bc145" [label="/bin/sh -c apt update" shape="box"];
  "sha256:c64b62db75ec17ffcb162c3cd77781e83efec3144fea4f71c6ab7aa5d7b0c77c" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a99f51513bf7ededcdd488c5fc8baebd50add764b90265c4eb55ee091e63cad3" [label="/bin/sh -c apt install python openssh-server -y" shape="box"];
  "sha256:63f20a696a9f20592e962214d2e093b44e9e6a1f9ce803bcf4d9d3d41835644e" [label="/bin/sh -c groupadd ctf-users" shape="box"];
  "sha256:cca400d6e2a2403a5524f8cf0163ffb1d648dae9eb44c923592876f56a73903b" [label="local://context" shape="ellipse"];
  "sha256:1887684ee134d45d0ce0f3e01e4a2872e0fb64eae408c63e3b7b3b8f97eea371" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:eb696e3131eb0fccaa8b37a8efd7a551a53e7e0dfb64d8c8681b7ba5e14067aa" [label="/bin/sh -c apt update" shape="box"];
  "sha256:60e60d8423c14b500a121699f90210561ceca4e52fe37eef0da626446f99fe33" [label="/bin/sh -c ./ctfd/prepare.sh" shape="box"];
  "sha256:ceadcbcd9b096ef9c048b6d7948db423e51f2f3db54d0b79554576f67fe9d47e" [label="/bin/sh -c pip install pika" shape="box"];
  "sha256:272b2a0647d5bcd63cb04e2d77613a9d73b08c25e7c03cc422520840c44b94b1" [label="/bin/sh -c sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/g' /etc/ssh/sshd_config" shape="box"];
  "sha256:0cf7f43ae55c207aa9030d421fe460df5474a337ac273cb90ef9082af123b892" [label="/bin/sh -c sed -i 's/StrictModes yes/#StrictModes yes/g' /etc/ssh/sshd_config" shape="box"];
  "sha256:6ed16c049205c4b99682cfb7e310b08cfd5eedbdee25fb0a8c4b18c24ee190f9" [label="/bin/sh -c service ssh restart" shape="box"];
  "sha256:52832751322b1417229b62f4f0d0f6f40f9cc8cd680244026b87bbc8fd4cdce9" [label="sha256:52832751322b1417229b62f4f0d0f6f40f9cc8cd680244026b87bbc8fd4cdce9" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:9d5b625da4235902f43af3a80f35a837968b8bb17642f2a22562f086155bc145" [label=""];
  "sha256:9d5b625da4235902f43af3a80f35a837968b8bb17642f2a22562f086155bc145" -> "sha256:c64b62db75ec17ffcb162c3cd77781e83efec3144fea4f71c6ab7aa5d7b0c77c" [label=""];
  "sha256:c64b62db75ec17ffcb162c3cd77781e83efec3144fea4f71c6ab7aa5d7b0c77c" -> "sha256:a99f51513bf7ededcdd488c5fc8baebd50add764b90265c4eb55ee091e63cad3" [label=""];
  "sha256:a99f51513bf7ededcdd488c5fc8baebd50add764b90265c4eb55ee091e63cad3" -> "sha256:63f20a696a9f20592e962214d2e093b44e9e6a1f9ce803bcf4d9d3d41835644e" [label=""];
  "sha256:63f20a696a9f20592e962214d2e093b44e9e6a1f9ce803bcf4d9d3d41835644e" -> "sha256:1887684ee134d45d0ce0f3e01e4a2872e0fb64eae408c63e3b7b3b8f97eea371" [label=""];
  "sha256:cca400d6e2a2403a5524f8cf0163ffb1d648dae9eb44c923592876f56a73903b" -> "sha256:1887684ee134d45d0ce0f3e01e4a2872e0fb64eae408c63e3b7b3b8f97eea371" [label=""];
  "sha256:1887684ee134d45d0ce0f3e01e4a2872e0fb64eae408c63e3b7b3b8f97eea371" -> "sha256:eb696e3131eb0fccaa8b37a8efd7a551a53e7e0dfb64d8c8681b7ba5e14067aa" [label=""];
  "sha256:eb696e3131eb0fccaa8b37a8efd7a551a53e7e0dfb64d8c8681b7ba5e14067aa" -> "sha256:60e60d8423c14b500a121699f90210561ceca4e52fe37eef0da626446f99fe33" [label=""];
  "sha256:60e60d8423c14b500a121699f90210561ceca4e52fe37eef0da626446f99fe33" -> "sha256:ceadcbcd9b096ef9c048b6d7948db423e51f2f3db54d0b79554576f67fe9d47e" [label=""];
  "sha256:ceadcbcd9b096ef9c048b6d7948db423e51f2f3db54d0b79554576f67fe9d47e" -> "sha256:272b2a0647d5bcd63cb04e2d77613a9d73b08c25e7c03cc422520840c44b94b1" [label=""];
  "sha256:272b2a0647d5bcd63cb04e2d77613a9d73b08c25e7c03cc422520840c44b94b1" -> "sha256:0cf7f43ae55c207aa9030d421fe460df5474a337ac273cb90ef9082af123b892" [label=""];
  "sha256:0cf7f43ae55c207aa9030d421fe460df5474a337ac273cb90ef9082af123b892" -> "sha256:6ed16c049205c4b99682cfb7e310b08cfd5eedbdee25fb0a8c4b18c24ee190f9" [label=""];
  "sha256:6ed16c049205c4b99682cfb7e310b08cfd5eedbdee25fb0a8c4b18c24ee190f9" -> "sha256:52832751322b1417229b62f4f0d0f6f40f9cc8cd680244026b87bbc8fd4cdce9" [label=""];
}

