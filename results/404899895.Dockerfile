[app/sources/404899895.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:281c43469a57c21654fab7471d8c5af2e744c230ea7fd8461880a0808bf19e3d" [label="/bin/sh -c apt-get update && apt-get install -y \tautoconf \tbinutils-dev \tbison \tbuild-essential \tbzip2 \tccache \tcmake \tcurl \tdoxygen \tflex \tgcc-multilib \tgdb \tgfortran \tgit \tgit-flow \thtop \tlibboost-all-dev \tlibev-dev \tlibgoogle-perftools-dev \tlibhwloc-dev \tliblog4cxx10 \tliblog4cxx10-dev \tlibmetis-dev \tlibmysqlclient-dev \tlibpapi-dev \tlibtbb-dev \tlibtool \tlibunwind8-dev \tman \tmysql-server \tnano \tnodejs-legacy \tnpm \topenssh-server \tpython \tpython-pip \tscreen \tstrace \tsudo \ttcpdump \ttelnet \tvim \twget" shape="box"];
  "sha256:c5da5fa7b25c15b81dc5fd4546ffd9525b448973127cd05e5fce653d4bd5e8ac" [label="/bin/sh -c pip install sphinx virtualenv sphinxcontrib-seqdiag webcolors funcparserlib" shape="box"];
  "sha256:c789dc8c003b9fed8e47b78e6dd57c93b1a17765b5101450bfd130e4e8eb8689" [label="/bin/sh -c npm install http-server -g" shape="box"];
  "sha256:3af09c9264a0e398b94d637d0a89b2544555f2e0c647fc8319c518df0dbd272a" [label="/bin/sh -c mkdir $tmpDir" shape="box"];
  "sha256:2c3a41604e104bca8e58b8a05aefde73ad2b81676b2791e28d3ef38bf864e7f0" [label="mkdir{path=/tmp/hyrise}" shape="note"];
  "sha256:e2cd4e51c2f222608237a17b45a2d8d000dfcc7587cc03bfdabcda345c20c42a" [label="/bin/sh -c wget http://downloads.sourceforge.net/project/libcsv/libcsv/libcsv-3.0.1/libcsv-3.0.1.tar.gz; \ttar -xf libcsv-3.0.1.tar.gz; \tcd $tmpDir/libcsv-3.0.1; \tmake install -j 4;" shape="box"];
  "sha256:131ff001b6e864143ae22a5100b2568401959d571a4dbd11fbf9f11bd9f05970" [label="/bin/sh -c cd $tmpdir; \tgit clone https://github.com/nanomsg/nanomsg.git;     cd nanomsg;     ./autogen.sh;     ./configure;     make;     make check;     make install;     rm -rf /tmp/nanomsg;     ldconfig;" shape="box"];
  "sha256:c906c68afbd64a2ccfa671043dbe4ec51d2715d0dd36ef34572ec564bb858daf" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:f0a882bbdf801601de40799437afc885506a6b2257832b0fce16224e0f9e175d" [label="/bin/sh -c rm -rf $tmpDir" shape="box"];
  "sha256:b05dc4c2e51a44d4308b6cd878157d8c006400ed87ea18188fefbfd0af1c78f9" [label="/bin/sh -c mkdir /var/run/sshd" shape="box"];
  "sha256:3337b00ef8d845cc72ce062dc6a5b21a8721102b410ca3eead673a3d2c4bae6b" [label="/bin/sh -c /usr/bin/ssh-keygen -A" shape="box"];
  "sha256:85a625e6f0c856c26b8f146fa046f3e5a85b1ed4eb56c99e7a3490e6d12e74ac" [label="/bin/sh -c useradd dev -u 1000 -s /bin/bash -m" shape="box"];
  "sha256:52ccef9d97d6c42a3e76e03734da8cd9a2ffbd10afbc3ddec3c4e80c45028c60" [label="/bin/sh -c git clone git://github.com/ndbroadbent/scm_breeze.git ~/.scm_breeze" shape="box"];
  "sha256:92ef93fb7bbc0eb6fc71ba45c7c76bbd9aada07ceb214b212a2ae89c80488f41" [label="/bin/sh -c ~/.scm_breeze/install.sh" shape="box"];
  "sha256:1a1f8ab81f9ba4b4654822f606859c5b0387e8a40470a6c8f63af840784dafe3" [label="/bin/sh -c rm /etc/update-motd.d/*" shape="box"];
  "sha256:9e2f161721169f7b20b22f00a58c842bd737f405972d3d46bea7cf83f19ce0de" [label="/bin/sh -c rm /var/run/motd.dynamic" shape="box"];
  "sha256:d4db407be793a969214d25fa133a9335976d44e7475e30bc2a658fd64da9b80b" [label="local://context" shape="ellipse"];
  "sha256:af48eb887614a94eb6f96329ace24d46c12ddc1fefef974b972ec29c2f57d4ef" [label="copy{src=/motd, dest=/etc/motd}" shape="note"];
  "sha256:0901510914634164543db88ea17fb277499fa9aec5682dcd9d42a0bbc0b86583" [label="/bin/sh -c sed -i '/motd.dynamic/d' /etc/pam.d/sshd" shape="box"];
  "sha256:6b43375fd8c7c7c70e8bbdc1c5f19190927f02b20ae43e952a186a2794404af2" [label="/bin/sh -c sed -i '/motd.dynamic/d' /etc/pam.d/login" shape="box"];
  "sha256:05ea9bf6b3bb94cf78171efe75bfde167af1e89cdc1eaa29c3d66cf9905578af" [label="/bin/sh -c rm /etc/legal" shape="box"];
  "sha256:7ace9cb3db7c955b4c7558e61ba1c39f8ea64ca0b4afed962b5ccfec1a74f992" [label="/bin/sh -c gpasswd -a dev sudo" shape="box"];
  "sha256:6fb82e878688274317d8e6d5efaf3cbece47c01ed150f378f69c357eaf103b56" [label="/bin/sh -c echo 'dev:dev123' | chpasswd" shape="box"];
  "sha256:776f111dff2d8bbbd1af8164925c9f21c62c0bffdf57f08989d6743a67a5f403" [label="/bin/sh -c echo \"export HYRISE_PERSISTENCY_PATH=/home/dev/hyrise_persistency\" >> /etc/profile" shape="box"];
  "sha256:9242084c3b875c61e6b0b97625603774c86168a8f2073a4a58fcd29c41d7962e" [label="/bin/sh -c locale-gen en_US en_US.UTF-8" shape="box"];
  "sha256:3c69a88ee750a7c37f0cf5a18e4aa337ea3e8508e1345d10c64dec4a5538822b" [label="/bin/sh -c dpkg-reconfigure locales" shape="box"];
  "sha256:cbbd6b1c368f87067bae575590ca35194d2588c0fe86adcccb888fb0db445909" [label="sha256:cbbd6b1c368f87067bae575590ca35194d2588c0fe86adcccb888fb0db445909" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:281c43469a57c21654fab7471d8c5af2e744c230ea7fd8461880a0808bf19e3d" [label=""];
  "sha256:281c43469a57c21654fab7471d8c5af2e744c230ea7fd8461880a0808bf19e3d" -> "sha256:c5da5fa7b25c15b81dc5fd4546ffd9525b448973127cd05e5fce653d4bd5e8ac" [label=""];
  "sha256:c5da5fa7b25c15b81dc5fd4546ffd9525b448973127cd05e5fce653d4bd5e8ac" -> "sha256:c789dc8c003b9fed8e47b78e6dd57c93b1a17765b5101450bfd130e4e8eb8689" [label=""];
  "sha256:c789dc8c003b9fed8e47b78e6dd57c93b1a17765b5101450bfd130e4e8eb8689" -> "sha256:3af09c9264a0e398b94d637d0a89b2544555f2e0c647fc8319c518df0dbd272a" [label=""];
  "sha256:3af09c9264a0e398b94d637d0a89b2544555f2e0c647fc8319c518df0dbd272a" -> "sha256:2c3a41604e104bca8e58b8a05aefde73ad2b81676b2791e28d3ef38bf864e7f0" [label=""];
  "sha256:2c3a41604e104bca8e58b8a05aefde73ad2b81676b2791e28d3ef38bf864e7f0" -> "sha256:e2cd4e51c2f222608237a17b45a2d8d000dfcc7587cc03bfdabcda345c20c42a" [label=""];
  "sha256:e2cd4e51c2f222608237a17b45a2d8d000dfcc7587cc03bfdabcda345c20c42a" -> "sha256:131ff001b6e864143ae22a5100b2568401959d571a4dbd11fbf9f11bd9f05970" [label=""];
  "sha256:131ff001b6e864143ae22a5100b2568401959d571a4dbd11fbf9f11bd9f05970" -> "sha256:c906c68afbd64a2ccfa671043dbe4ec51d2715d0dd36ef34572ec564bb858daf" [label=""];
  "sha256:c906c68afbd64a2ccfa671043dbe4ec51d2715d0dd36ef34572ec564bb858daf" -> "sha256:f0a882bbdf801601de40799437afc885506a6b2257832b0fce16224e0f9e175d" [label=""];
  "sha256:f0a882bbdf801601de40799437afc885506a6b2257832b0fce16224e0f9e175d" -> "sha256:b05dc4c2e51a44d4308b6cd878157d8c006400ed87ea18188fefbfd0af1c78f9" [label=""];
  "sha256:b05dc4c2e51a44d4308b6cd878157d8c006400ed87ea18188fefbfd0af1c78f9" -> "sha256:3337b00ef8d845cc72ce062dc6a5b21a8721102b410ca3eead673a3d2c4bae6b" [label=""];
  "sha256:3337b00ef8d845cc72ce062dc6a5b21a8721102b410ca3eead673a3d2c4bae6b" -> "sha256:85a625e6f0c856c26b8f146fa046f3e5a85b1ed4eb56c99e7a3490e6d12e74ac" [label=""];
  "sha256:85a625e6f0c856c26b8f146fa046f3e5a85b1ed4eb56c99e7a3490e6d12e74ac" -> "sha256:52ccef9d97d6c42a3e76e03734da8cd9a2ffbd10afbc3ddec3c4e80c45028c60" [label=""];
  "sha256:52ccef9d97d6c42a3e76e03734da8cd9a2ffbd10afbc3ddec3c4e80c45028c60" -> "sha256:92ef93fb7bbc0eb6fc71ba45c7c76bbd9aada07ceb214b212a2ae89c80488f41" [label=""];
  "sha256:92ef93fb7bbc0eb6fc71ba45c7c76bbd9aada07ceb214b212a2ae89c80488f41" -> "sha256:1a1f8ab81f9ba4b4654822f606859c5b0387e8a40470a6c8f63af840784dafe3" [label=""];
  "sha256:1a1f8ab81f9ba4b4654822f606859c5b0387e8a40470a6c8f63af840784dafe3" -> "sha256:9e2f161721169f7b20b22f00a58c842bd737f405972d3d46bea7cf83f19ce0de" [label=""];
  "sha256:9e2f161721169f7b20b22f00a58c842bd737f405972d3d46bea7cf83f19ce0de" -> "sha256:af48eb887614a94eb6f96329ace24d46c12ddc1fefef974b972ec29c2f57d4ef" [label=""];
  "sha256:d4db407be793a969214d25fa133a9335976d44e7475e30bc2a658fd64da9b80b" -> "sha256:af48eb887614a94eb6f96329ace24d46c12ddc1fefef974b972ec29c2f57d4ef" [label=""];
  "sha256:af48eb887614a94eb6f96329ace24d46c12ddc1fefef974b972ec29c2f57d4ef" -> "sha256:0901510914634164543db88ea17fb277499fa9aec5682dcd9d42a0bbc0b86583" [label=""];
  "sha256:0901510914634164543db88ea17fb277499fa9aec5682dcd9d42a0bbc0b86583" -> "sha256:6b43375fd8c7c7c70e8bbdc1c5f19190927f02b20ae43e952a186a2794404af2" [label=""];
  "sha256:6b43375fd8c7c7c70e8bbdc1c5f19190927f02b20ae43e952a186a2794404af2" -> "sha256:05ea9bf6b3bb94cf78171efe75bfde167af1e89cdc1eaa29c3d66cf9905578af" [label=""];
  "sha256:05ea9bf6b3bb94cf78171efe75bfde167af1e89cdc1eaa29c3d66cf9905578af" -> "sha256:7ace9cb3db7c955b4c7558e61ba1c39f8ea64ca0b4afed962b5ccfec1a74f992" [label=""];
  "sha256:7ace9cb3db7c955b4c7558e61ba1c39f8ea64ca0b4afed962b5ccfec1a74f992" -> "sha256:6fb82e878688274317d8e6d5efaf3cbece47c01ed150f378f69c357eaf103b56" [label=""];
  "sha256:6fb82e878688274317d8e6d5efaf3cbece47c01ed150f378f69c357eaf103b56" -> "sha256:776f111dff2d8bbbd1af8164925c9f21c62c0bffdf57f08989d6743a67a5f403" [label=""];
  "sha256:776f111dff2d8bbbd1af8164925c9f21c62c0bffdf57f08989d6743a67a5f403" -> "sha256:9242084c3b875c61e6b0b97625603774c86168a8f2073a4a58fcd29c41d7962e" [label=""];
  "sha256:9242084c3b875c61e6b0b97625603774c86168a8f2073a4a58fcd29c41d7962e" -> "sha256:3c69a88ee750a7c37f0cf5a18e4aa337ea3e8508e1345d10c64dec4a5538822b" [label=""];
  "sha256:3c69a88ee750a7c37f0cf5a18e4aa337ea3e8508e1345d10c64dec4a5538822b" -> "sha256:cbbd6b1c368f87067bae575590ca35194d2588c0fe86adcccb888fb0db445909" [label=""];
}

