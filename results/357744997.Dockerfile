[app/sources/357744997.Dockerfile]
digraph {
  "sha256:7aacaaaa806ac6300f8c6bb0219c441fd8fabf2d61ca17ea6acff1aad825f6c4" [label="https://github.com/gentilkiwi/mimikatz/releases/download/2.1.1-20181209/mimikatz_trunk.zip" shape="ellipse"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:2b5bae2c8d5e25a11492bf8c8fa7296388e86510e033513c6623ce12f82e0e13" [label="/bin/sh -c echo 'deb http://ftp.debian.org/debian stretch-backports main' >>/etc/apt/sources.list && \tapt-get update && \tmkdir -p /usr/share/man/man1/ && \tapt-get install -t stretch-backports --no-install-recommends -y \tlibssl1.0-dev libffi-dev python-dev python-pip  \tunzip libtool locales ncurses-term tcpdump \tnetbase fuse && apt-get clean && \trm -rf /var/lib/apt/lists/* /usr/share/doc* /usr/share/man/* /usr/share/info/*" shape="box"];
  "sha256:9a7de54a686f936fa3b96383cd781786944ec25047f198401d9e80ba0361c8ae" [label="/bin/sh -c echo 'en_US.UTF-8 UTF-8' >/etc/locale.gen; locale-gen; echo 'LC_ALL=en_US.UTF-8' >/etc/default/locale" shape="box"];
  "sha256:eafd005f20b39f6c350c206908e75143302f88043abb0b281e196ed4ef97fc43" [label="/bin/sh -c chmod +s /usr/sbin/tcpdump" shape="box"];
  "sha256:425fb445c372a1c030fe7e8bcdacea945343dd983bf1932ee5db8bcadb596bc1" [label="/bin/sh -c python -m pip install --no-cache-dir --upgrade pip six setuptools wheel" shape="box"];
  "sha256:c9fe28ff5f3f59039901ff4f582997147901b56b32191a9d3063361eb14e11a6" [label="/bin/sh -c mkdir -p /opt/external /project" shape="box"];
  "sha256:3c800e7d1b06c3abe3d0a136a945a5a9d1d84fdb297b063ff866a109ea9115ca" [label="local://context" shape="ellipse"];
  "sha256:87b75e7388b5c46901e6368977aa485804aecd56ab0ebbf0732d5af168ba4419" [label="copy{src=/requirements.txt, dest=/opt/requirements.txt}" shape="note"];
  "sha256:36b1a264d62d75db28cb9c58258fdc1e92912b5d8126c625b5c60590724ea665" [label="copy{src=/external/pykcp, dest=/opt/external/pykcp}" shape="note"];
  "sha256:5981d25efbc91f2bf9bf050f87baa747d9e846e7e75da2fe8c4ede16dc7d78b8" [label="/bin/sh -c cd /opt && pip install --no-cache-dir --upgrade -r requirements.txt && rm -rf /opt && mkdir -p /opt/pupy" shape="box"];
  "sha256:2bc4a218524dd17ce80896994cab8a90b4b49915c982c6f21fef62e5ba7b2ecf" [label="copy{src=/mimikatz_trunk.zip, dest=/opt/mimikatz/mimikatz.zip}" shape="note"];
  "sha256:d5fe9065630c473daed32c90c8135fcc4bb3e8cdc0dd962b30c944247f59c504" [label="/bin/sh -c cd /opt/mimikatz && unzip mimikatz.zip && rm -f mimikatz.zip" shape="box"];
  "sha256:5e27a921b04f683cfb166be58be1a3b4b223c023d4fb24d6d7a88c6351281f02" [label="/bin/sh -c apt-get remove -y autoconf automake libssl1.0-dev libffi-dev python-dev \tlibtool build-essential && apt-get -y autoremove && \trm -rf /root/.cache/pip && rm -f /tmp/requirements.txt" shape="box"];
  "sha256:6690af4bbbf154fc60ac8f1139747a7035e8fda3707c93b671f3e0c49acfdcec" [label="sha256:6690af4bbbf154fc60ac8f1139747a7035e8fda3707c93b671f3e0c49acfdcec" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:2b5bae2c8d5e25a11492bf8c8fa7296388e86510e033513c6623ce12f82e0e13" [label=""];
  "sha256:2b5bae2c8d5e25a11492bf8c8fa7296388e86510e033513c6623ce12f82e0e13" -> "sha256:9a7de54a686f936fa3b96383cd781786944ec25047f198401d9e80ba0361c8ae" [label=""];
  "sha256:9a7de54a686f936fa3b96383cd781786944ec25047f198401d9e80ba0361c8ae" -> "sha256:eafd005f20b39f6c350c206908e75143302f88043abb0b281e196ed4ef97fc43" [label=""];
  "sha256:eafd005f20b39f6c350c206908e75143302f88043abb0b281e196ed4ef97fc43" -> "sha256:425fb445c372a1c030fe7e8bcdacea945343dd983bf1932ee5db8bcadb596bc1" [label=""];
  "sha256:425fb445c372a1c030fe7e8bcdacea945343dd983bf1932ee5db8bcadb596bc1" -> "sha256:c9fe28ff5f3f59039901ff4f582997147901b56b32191a9d3063361eb14e11a6" [label=""];
  "sha256:c9fe28ff5f3f59039901ff4f582997147901b56b32191a9d3063361eb14e11a6" -> "sha256:87b75e7388b5c46901e6368977aa485804aecd56ab0ebbf0732d5af168ba4419" [label=""];
  "sha256:3c800e7d1b06c3abe3d0a136a945a5a9d1d84fdb297b063ff866a109ea9115ca" -> "sha256:87b75e7388b5c46901e6368977aa485804aecd56ab0ebbf0732d5af168ba4419" [label=""];
  "sha256:87b75e7388b5c46901e6368977aa485804aecd56ab0ebbf0732d5af168ba4419" -> "sha256:36b1a264d62d75db28cb9c58258fdc1e92912b5d8126c625b5c60590724ea665" [label=""];
  "sha256:3c800e7d1b06c3abe3d0a136a945a5a9d1d84fdb297b063ff866a109ea9115ca" -> "sha256:36b1a264d62d75db28cb9c58258fdc1e92912b5d8126c625b5c60590724ea665" [label=""];
  "sha256:36b1a264d62d75db28cb9c58258fdc1e92912b5d8126c625b5c60590724ea665" -> "sha256:5981d25efbc91f2bf9bf050f87baa747d9e846e7e75da2fe8c4ede16dc7d78b8" [label=""];
  "sha256:5981d25efbc91f2bf9bf050f87baa747d9e846e7e75da2fe8c4ede16dc7d78b8" -> "sha256:2bc4a218524dd17ce80896994cab8a90b4b49915c982c6f21fef62e5ba7b2ecf" [label=""];
  "sha256:7aacaaaa806ac6300f8c6bb0219c441fd8fabf2d61ca17ea6acff1aad825f6c4" -> "sha256:2bc4a218524dd17ce80896994cab8a90b4b49915c982c6f21fef62e5ba7b2ecf" [label=""];
  "sha256:2bc4a218524dd17ce80896994cab8a90b4b49915c982c6f21fef62e5ba7b2ecf" -> "sha256:d5fe9065630c473daed32c90c8135fcc4bb3e8cdc0dd962b30c944247f59c504" [label=""];
  "sha256:d5fe9065630c473daed32c90c8135fcc4bb3e8cdc0dd962b30c944247f59c504" -> "sha256:5e27a921b04f683cfb166be58be1a3b4b223c023d4fb24d6d7a88c6351281f02" [label=""];
  "sha256:5e27a921b04f683cfb166be58be1a3b4b223c023d4fb24d6d7a88c6351281f02" -> "sha256:6690af4bbbf154fc60ac8f1139747a7035e8fda3707c93b671f3e0c49acfdcec" [label=""];
}

