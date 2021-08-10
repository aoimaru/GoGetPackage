[app/sources/130266128.Dockerfile]
digraph {
  "sha256:5417dbc7fae46e30e77080c7f8aba2ab71b1568977842ab115a65a704aa7b517" [label="docker-image://docker.io/library/fedora:rawhide@sha256:524365ad5326cdaea6f9051f0f3c07dfed37bd1009da8bdefb859178c0bab776" shape="ellipse"];
  "sha256:e06d902d32c2d99176c4da7358166ed710d45f2ee13fec23e892a9c97837bdfb" [label="/bin/sh -c dnf upgrade -y" shape="box"];
  "sha256:f6fbfbfb5fd001daada3f58dc07a0772cd39f9639c32e96189ccb41dd0e33f2e" [label="/bin/sh -c dnf -y install openssh-server" shape="box"];
  "sha256:6a6f328ea46cef8a5e0e966c6ccfd75f9e4e4a582665222fffd572bd7a5e105f" [label="/bin/sh -c mkdir /var/run/sshd" shape="box"];
  "sha256:c3985d714d6280335ddbb780abf5806ee938989de47ef14ccb8a4a1157ef53d6" [label="/bin/sh -c dnf -y install java-1.8.0-openjdk-headless" shape="box"];
  "sha256:4cfb4b14d226abae8663392dbcc69a74ca6d55ba2ed66d69271d2a82ac894107" [label="/bin/sh -c useradd jenkins" shape="box"];
  "sha256:4534d2e7e1da37dd38095df00e56578d084036d5ed5c6682c7793080dcb6d74b" [label="/bin/sh -c echo \"jenkins:jenkins\" |chpasswd" shape="box"];
  "sha256:6693530c66818f5857fcb915d2c8a6fabd926d70684ff19060d8708230266905" [label="/bin/sh -c dnf -y install epel-release" shape="box"];
  "sha256:4400103e1c853d060ad6342f5193061aeb39cc7ed65c4fb971488932c2fca945" [label="/bin/sh -c dnf install -y mock redhat-lsb-core rpm-build git augeas sudo" shape="box"];
  "sha256:162ae90758daaacdf0d6783a1b90d9f506a5ae2023a5fe634ced59f4fa540afd" [label="/bin/sh -c usermod -G mock,wheel -a jenkins" shape="box"];
  "sha256:72d06b80b8835bd1e1fe359cfa406ca25594f0d39de1ebd1c217a28badb39c5f" [label="/bin/sh -c augtool -s set /files/etc/sudoers/Defaults[*]/requiretty/negate \"\"" shape="box"];
  "sha256:6e0c13a0ff09d62d6d2f5341e5bca34c702d5071d58519a486dd3a4ac2fbd883" [label="/bin/sh -c augtool -s set /files/etc/ssh/sshd_config/UsePrivilegeSeparation no" shape="box"];
  "sha256:a7cbf6348236817dd71a079930fd243529ad6225a7e9b0bba9416bbfd1d45dd9" [label="/bin/sh -c sshd-keygen" shape="box"];
  "sha256:56ee8aa18643de4484f41f463c55bdd797842e1f5638a4e41928a7f28267ab5f" [label="/bin/sh -c echo 'jenkins ALL=(ALL:ALL) NOPASSWD:ALL' > /etc/sudoers.d/builder" shape="box"];
  "sha256:e1cb610c33bcf537962998d273ac3fce677fc1869455a404cccb854651d2e065" [label="/bin/sh -c chown root.root /etc/sudoers.d/builder" shape="box"];
  "sha256:929239f4916d5b9c039446fb3b71bfc82c8c5aa2a5dabb7340eddcd14dfae5db" [label="/bin/sh -c chmod 440 /etc/sudoers.d/builder" shape="box"];
  "sha256:d85f27598f905dbb721cf489232d97ccfd4aba1bf1c7cf6bd18111e8c9560816" [label="sha256:d85f27598f905dbb721cf489232d97ccfd4aba1bf1c7cf6bd18111e8c9560816" shape="plaintext"];
  "sha256:5417dbc7fae46e30e77080c7f8aba2ab71b1568977842ab115a65a704aa7b517" -> "sha256:e06d902d32c2d99176c4da7358166ed710d45f2ee13fec23e892a9c97837bdfb" [label=""];
  "sha256:e06d902d32c2d99176c4da7358166ed710d45f2ee13fec23e892a9c97837bdfb" -> "sha256:f6fbfbfb5fd001daada3f58dc07a0772cd39f9639c32e96189ccb41dd0e33f2e" [label=""];
  "sha256:f6fbfbfb5fd001daada3f58dc07a0772cd39f9639c32e96189ccb41dd0e33f2e" -> "sha256:6a6f328ea46cef8a5e0e966c6ccfd75f9e4e4a582665222fffd572bd7a5e105f" [label=""];
  "sha256:6a6f328ea46cef8a5e0e966c6ccfd75f9e4e4a582665222fffd572bd7a5e105f" -> "sha256:c3985d714d6280335ddbb780abf5806ee938989de47ef14ccb8a4a1157ef53d6" [label=""];
  "sha256:c3985d714d6280335ddbb780abf5806ee938989de47ef14ccb8a4a1157ef53d6" -> "sha256:4cfb4b14d226abae8663392dbcc69a74ca6d55ba2ed66d69271d2a82ac894107" [label=""];
  "sha256:4cfb4b14d226abae8663392dbcc69a74ca6d55ba2ed66d69271d2a82ac894107" -> "sha256:4534d2e7e1da37dd38095df00e56578d084036d5ed5c6682c7793080dcb6d74b" [label=""];
  "sha256:4534d2e7e1da37dd38095df00e56578d084036d5ed5c6682c7793080dcb6d74b" -> "sha256:6693530c66818f5857fcb915d2c8a6fabd926d70684ff19060d8708230266905" [label=""];
  "sha256:6693530c66818f5857fcb915d2c8a6fabd926d70684ff19060d8708230266905" -> "sha256:4400103e1c853d060ad6342f5193061aeb39cc7ed65c4fb971488932c2fca945" [label=""];
  "sha256:4400103e1c853d060ad6342f5193061aeb39cc7ed65c4fb971488932c2fca945" -> "sha256:162ae90758daaacdf0d6783a1b90d9f506a5ae2023a5fe634ced59f4fa540afd" [label=""];
  "sha256:162ae90758daaacdf0d6783a1b90d9f506a5ae2023a5fe634ced59f4fa540afd" -> "sha256:72d06b80b8835bd1e1fe359cfa406ca25594f0d39de1ebd1c217a28badb39c5f" [label=""];
  "sha256:72d06b80b8835bd1e1fe359cfa406ca25594f0d39de1ebd1c217a28badb39c5f" -> "sha256:6e0c13a0ff09d62d6d2f5341e5bca34c702d5071d58519a486dd3a4ac2fbd883" [label=""];
  "sha256:6e0c13a0ff09d62d6d2f5341e5bca34c702d5071d58519a486dd3a4ac2fbd883" -> "sha256:a7cbf6348236817dd71a079930fd243529ad6225a7e9b0bba9416bbfd1d45dd9" [label=""];
  "sha256:a7cbf6348236817dd71a079930fd243529ad6225a7e9b0bba9416bbfd1d45dd9" -> "sha256:56ee8aa18643de4484f41f463c55bdd797842e1f5638a4e41928a7f28267ab5f" [label=""];
  "sha256:56ee8aa18643de4484f41f463c55bdd797842e1f5638a4e41928a7f28267ab5f" -> "sha256:e1cb610c33bcf537962998d273ac3fce677fc1869455a404cccb854651d2e065" [label=""];
  "sha256:e1cb610c33bcf537962998d273ac3fce677fc1869455a404cccb854651d2e065" -> "sha256:929239f4916d5b9c039446fb3b71bfc82c8c5aa2a5dabb7340eddcd14dfae5db" [label=""];
  "sha256:929239f4916d5b9c039446fb3b71bfc82c8c5aa2a5dabb7340eddcd14dfae5db" -> "sha256:d85f27598f905dbb721cf489232d97ccfd4aba1bf1c7cf6bd18111e8c9560816" [label=""];
}

