[app/sources/177004569.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:2adc40f875c514b132b3e278875b113602d5a44c15b858c9d25774d3888d2371" [label="/bin/sh -c apt update && apt full-upgrade -y && apt install -y --no-install-recommends     git     openssh-client     ca-certificates     locales     sudo     curl     build-essential     pkg-config     libgl1-mesa-dev     libsm6     libice6     libxext6     libxrender1     libfontconfig1     libdbus-1-3     && apt-get -qq clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a0dbc79b91814258610c374d5e8e715320de3632c186713f626c17e74c292333" [label="local://context" shape="ellipse"];
  "sha256:4944574074aa1bb40b32dc4bff3940bb38327b4592fb98ac6ed2d3916d72a633" [label="copy{src=/extract-qt-installer.sh, dest=/tmp/qt/}" shape="note"];
  "sha256:f7e9da6fc4c0b4dde818e5826411107e1991b6ad8051d1c05716106bd8d822d1" [label="/bin/sh -c curl -Lo /tmp/qt/installer.run \"https://download.qt.io/official_releases/qt/$(echo \"${QT_VERSION}\" | cut -d. -f 1-2)/${QT_VERSION}/qt-opensource-linux-x64-${QT_VERSION}.run\"     && QT_CI_PACKAGES=qt.qt5.$(echo \"${QT_VERSION}\" | tr -d .).gcc_64 /tmp/qt/extract-qt-installer.sh /tmp/qt/installer.run \"$QT_PATH\"     && find \"$QT_PATH\" -mindepth 1 -maxdepth 1 ! -name \"${QT_VERSION}\" -exec echo 'Cleaning Qt SDK: {}' \\; -exec rm -r '{}' \\;     && rm -rf /tmp/qt" shape="box"];
  "sha256:65a70f4fa6096d60ba8cb221bf232f5679493ae782d43f788b8c3692574e0ee9" [label="/bin/sh -c locale-gen en_US.UTF-8 && dpkg-reconfigure locales" shape="box"];
  "sha256:607ad3ab602ad298961b4ba7882f863758939d8dc7c416b0a1a37f7c914959fe" [label="/bin/sh -c groupadd -r user && useradd --create-home --gid user user && echo 'user ALL=NOPASSWD: ALL' > /etc/sudoers.d/user" shape="box"];
  "sha256:8439c36141a070f4ae6c817c3544b263c6c657103158064f19b9c8e2a82f7daf" [label="mkdir{path=/home/user}" shape="note"];
  "sha256:797a6c8b211e05ec2fbe95890d7d7579749ebbbbcd85ef24af87e053dc217353" [label="sha256:797a6c8b211e05ec2fbe95890d7d7579749ebbbbcd85ef24af87e053dc217353" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:2adc40f875c514b132b3e278875b113602d5a44c15b858c9d25774d3888d2371" [label=""];
  "sha256:2adc40f875c514b132b3e278875b113602d5a44c15b858c9d25774d3888d2371" -> "sha256:4944574074aa1bb40b32dc4bff3940bb38327b4592fb98ac6ed2d3916d72a633" [label=""];
  "sha256:a0dbc79b91814258610c374d5e8e715320de3632c186713f626c17e74c292333" -> "sha256:4944574074aa1bb40b32dc4bff3940bb38327b4592fb98ac6ed2d3916d72a633" [label=""];
  "sha256:4944574074aa1bb40b32dc4bff3940bb38327b4592fb98ac6ed2d3916d72a633" -> "sha256:f7e9da6fc4c0b4dde818e5826411107e1991b6ad8051d1c05716106bd8d822d1" [label=""];
  "sha256:f7e9da6fc4c0b4dde818e5826411107e1991b6ad8051d1c05716106bd8d822d1" -> "sha256:65a70f4fa6096d60ba8cb221bf232f5679493ae782d43f788b8c3692574e0ee9" [label=""];
  "sha256:65a70f4fa6096d60ba8cb221bf232f5679493ae782d43f788b8c3692574e0ee9" -> "sha256:607ad3ab602ad298961b4ba7882f863758939d8dc7c416b0a1a37f7c914959fe" [label=""];
  "sha256:607ad3ab602ad298961b4ba7882f863758939d8dc7c416b0a1a37f7c914959fe" -> "sha256:8439c36141a070f4ae6c817c3544b263c6c657103158064f19b9c8e2a82f7daf" [label=""];
  "sha256:8439c36141a070f4ae6c817c3544b263c6c657103158064f19b9c8e2a82f7daf" -> "sha256:797a6c8b211e05ec2fbe95890d7d7579749ebbbbcd85ef24af87e053dc217353" [label=""];
}

