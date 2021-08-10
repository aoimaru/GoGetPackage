[app/sources/241299074.Dockerfile]
digraph {
  "sha256:b7eef9b3416d314bbef1cd3ac9faf1dff2da6033a39152eb675ac226768d4f73" [label="local://context" shape="ellipse"];
  "sha256:efddcc2c62907cd4db145fa5271cbda5aecf9a03ccb994f802f50567714669a5" [label="docker-image://docker.io/bosh/main-ruby-go:latest" shape="ellipse"];
  "sha256:b2ea98f519c43e5dffe5f77e89605e3ad7c04087bbfccd508fed0790f1c6e3ad" [label="/bin/sh -c groupadd -g ${GROUP_ID} ubuntu                    && useradd -u ${USER_ID} -g ${GROUP_ID} -m ubuntu   && echo 'ubuntu ALL=NOPASSWD:ALL' >> /etc/sudoers" shape="box"];
  "sha256:2fe567203c51b3c108f73f061ba416eb05cd40ebaaa0792476a486573fd1582e" [label="copy{src=/scripts/update.sh, dest=/tmp/update.sh}" shape="note"];
  "sha256:c58f040bb31e79ada12c842e27d8387422a3dacb122a8a2b6ba64a644e22cedc" [label="/bin/sh -c /tmp/update.sh && rm /tmp/update.sh" shape="box"];
  "sha256:abfbc95883f7e2ecd8e57eb45bcdc924f22ed41e98193f744f5be6a4c5586e09" [label="copy{src=/VMware-ovftool-4.1.0-2459827-lin.x86_64.bundle, dest=/tmp/ovftool_installer.bundle}" shape="note"];
  "sha256:49f934897ddd0375bc0c5b141399158c45a9203fd88bf2310604b2113d7b8b6c" [label="copy{src=/scripts/install-ovf.sh, dest=/tmp/install-ovf.sh}" shape="note"];
  "sha256:ce9d4d4c3fb6705dce1646ac616401a3eed2cefb763eb4993b47a14d597b1458" [label="/bin/sh -c /tmp/install-ovf.sh && rm /tmp/install-ovf.sh" shape="box"];
  "sha256:311d66185ab0b0643b886dedf6925bc24274d3c49b1337d2b9d3bc3682a89ba0" [label="/bin/sh -c wget -O /usr/bin/meta4 https://github.com/dpb587/metalink/releases/download/v0.2.0/meta4-0.2.0-linux-amd64   && echo \"81a592eaf647358563f296aced845ac60d9061a45b30b852d1c3f3674720fe19  /usr/bin/meta4\" | shasum -a 256 -c   && chmod +x /usr/bin/meta4" shape="box"];
  "sha256:df615997861b3085cd09f6d18507d5208580c04bbf9af5ac49c90085b0b7ac92" [label="copy{src=/scripts/unshare, dest=/usr/bin/unshare}" shape="note"];
  "sha256:86d175d4672080feb5f03a52c98e1916017d5bb808494b7160e4e18df8d4b778" [label="copy{src=/scripts/ubuntu_bashrc, dest=/home/ubuntu/.bashrc}" shape="note"];
  "sha256:1e2a652a15d27f40a4604fc5aa0f23efa636b4d61be6a5310c5c4e60476193c4" [label="/bin/sh -c for GO_EXECUTABLE in $GOROOT/bin/*; do ln -s $GO_EXECUTABLE /usr/bin/; done" shape="box"];
  "sha256:8e73af7add9bbdbe2429ed19939f4e37924b19ca4ede82bbd566a4b06397458c" [label="sha256:8e73af7add9bbdbe2429ed19939f4e37924b19ca4ede82bbd566a4b06397458c" shape="plaintext"];
  "sha256:efddcc2c62907cd4db145fa5271cbda5aecf9a03ccb994f802f50567714669a5" -> "sha256:b2ea98f519c43e5dffe5f77e89605e3ad7c04087bbfccd508fed0790f1c6e3ad" [label=""];
  "sha256:b2ea98f519c43e5dffe5f77e89605e3ad7c04087bbfccd508fed0790f1c6e3ad" -> "sha256:2fe567203c51b3c108f73f061ba416eb05cd40ebaaa0792476a486573fd1582e" [label=""];
  "sha256:b7eef9b3416d314bbef1cd3ac9faf1dff2da6033a39152eb675ac226768d4f73" -> "sha256:2fe567203c51b3c108f73f061ba416eb05cd40ebaaa0792476a486573fd1582e" [label=""];
  "sha256:2fe567203c51b3c108f73f061ba416eb05cd40ebaaa0792476a486573fd1582e" -> "sha256:c58f040bb31e79ada12c842e27d8387422a3dacb122a8a2b6ba64a644e22cedc" [label=""];
  "sha256:c58f040bb31e79ada12c842e27d8387422a3dacb122a8a2b6ba64a644e22cedc" -> "sha256:abfbc95883f7e2ecd8e57eb45bcdc924f22ed41e98193f744f5be6a4c5586e09" [label=""];
  "sha256:b7eef9b3416d314bbef1cd3ac9faf1dff2da6033a39152eb675ac226768d4f73" -> "sha256:abfbc95883f7e2ecd8e57eb45bcdc924f22ed41e98193f744f5be6a4c5586e09" [label=""];
  "sha256:abfbc95883f7e2ecd8e57eb45bcdc924f22ed41e98193f744f5be6a4c5586e09" -> "sha256:49f934897ddd0375bc0c5b141399158c45a9203fd88bf2310604b2113d7b8b6c" [label=""];
  "sha256:b7eef9b3416d314bbef1cd3ac9faf1dff2da6033a39152eb675ac226768d4f73" -> "sha256:49f934897ddd0375bc0c5b141399158c45a9203fd88bf2310604b2113d7b8b6c" [label=""];
  "sha256:49f934897ddd0375bc0c5b141399158c45a9203fd88bf2310604b2113d7b8b6c" -> "sha256:ce9d4d4c3fb6705dce1646ac616401a3eed2cefb763eb4993b47a14d597b1458" [label=""];
  "sha256:ce9d4d4c3fb6705dce1646ac616401a3eed2cefb763eb4993b47a14d597b1458" -> "sha256:311d66185ab0b0643b886dedf6925bc24274d3c49b1337d2b9d3bc3682a89ba0" [label=""];
  "sha256:311d66185ab0b0643b886dedf6925bc24274d3c49b1337d2b9d3bc3682a89ba0" -> "sha256:df615997861b3085cd09f6d18507d5208580c04bbf9af5ac49c90085b0b7ac92" [label=""];
  "sha256:b7eef9b3416d314bbef1cd3ac9faf1dff2da6033a39152eb675ac226768d4f73" -> "sha256:df615997861b3085cd09f6d18507d5208580c04bbf9af5ac49c90085b0b7ac92" [label=""];
  "sha256:df615997861b3085cd09f6d18507d5208580c04bbf9af5ac49c90085b0b7ac92" -> "sha256:86d175d4672080feb5f03a52c98e1916017d5bb808494b7160e4e18df8d4b778" [label=""];
  "sha256:b7eef9b3416d314bbef1cd3ac9faf1dff2da6033a39152eb675ac226768d4f73" -> "sha256:86d175d4672080feb5f03a52c98e1916017d5bb808494b7160e4e18df8d4b778" [label=""];
  "sha256:86d175d4672080feb5f03a52c98e1916017d5bb808494b7160e4e18df8d4b778" -> "sha256:1e2a652a15d27f40a4604fc5aa0f23efa636b4d61be6a5310c5c4e60476193c4" [label=""];
  "sha256:1e2a652a15d27f40a4604fc5aa0f23efa636b4d61be6a5310c5c4e60476193c4" -> "sha256:8e73af7add9bbdbe2429ed19939f4e37924b19ca4ede82bbd566a4b06397458c" [label=""];
}

