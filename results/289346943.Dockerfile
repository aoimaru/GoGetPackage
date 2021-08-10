[app/sources/289346943.Dockerfile]
digraph {
  "sha256:7b0be0f8b4316ec04dfa5b5ec5727073feac7911e915908559b2a4a2099c034d" [label="docker-image://docker.io/library/base-desktop:latest" shape="ellipse"];
  "sha256:3f749ac2efcd18eaed760d567e3d1f71ec844d82c5555053b0e4c409c9fa5781" [label="/bin/sh -c dpkg --add-architecture i386 &&     wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - &&     echo \"deb https://download.sublimetext.com/ apt/stable/\" | sudo tee /etc/apt/sources.list.d/sublime-text.list &&     apt-get update -y" shape="box"];
  "sha256:8d4e78c309bcbcf001eeaac08e4fe19bc359b6e085bb25e037434c0323b440be" [label="/bin/sh -c curl -o /tmp/gitkraken.deb https://release.gitkraken.com/linux/gitkraken-amd64.deb && \tdpkg -i /tmp/gitkraken.deb && \trm /tmp/gitkraken.deb" shape="box"];
  "sha256:6f4015f75e852df3b6ab37ba7c2dc37ab83ab565d37f91d4d2289870441a2943" [label="/bin/sh -c apt install -y libncurses5:i386 libstdc++6:i386 zlib1g:i386 lib32gcc1 lib32ncurses5 lib32z1 autoconf automake libtool" shape="box"];
  "sha256:d571e7ef0d0bba977c34f8c4f894233df2849970395771fd49bb3821f8215ecd" [label="/bin/sh -c apt install -y monodevelop python-pip gradle thrift-compiler" shape="box"];
  "sha256:bac78f7de94fd2e9b9634188bb80815404bacff3c449a7c62c173e7794c005fc" [label="/bin/sh -c apt install -y netbeans meld visualvm git-cola sublime-text" shape="box"];
  "sha256:89190d0cacbb0b1f8ca8370dbd65f16f0e2e5cde29650f85b7b351990553f54d" [label="/bin/sh -c wget -qO - https://github.com/google/protobuf/archive/v3.5.0.1.tar.gz | tar xz &&     cd protobuf-3.5.0.1 &&     ./autogen.sh &&     ./configure --prefix=/usr &&     make &&     make install &&     cd .. &&     rm -rf protobuf-3.5.0.1" shape="box"];
  "sha256:16ede14c739b7e8f5d4952579a4d4aa524ae2a6f5ee92ada21c6309d421c3bcb" [label="/bin/sh -c add-apt-repository ppa:gophers/archive &&     apt-get update -y &&     apt install -y golang-1.9-go" shape="box"];
  "sha256:90f05fc7ff4753bb963b34b9f380d7db719af28935b6f10fa39f46fd57e3b14d" [label="/bin/sh -c curl -o /tmp/rustup.sh https://sh.rustup.rs -sSf &&     chmod a+x /tmp/rustup.sh &&     /tmp/rustup.sh -y &&     rm /tmp/rustup.sh" shape="box"];
  "sha256:3418a7b401d40cfbf47f435b12e1ec5e928e9291e2b1560b1248e3acca6d230c" [label="/bin/sh -c curl -o /tmp/kotlin.sh https://get.sdkman.io -sSf &&     chmod a+x /tmp/kotlin.sh &&     mkdir /opt/kotlin &&     SDKMAN_DIR=/opt/kotlin /tmp/kotlin.sh &&     rm /tmp/kotlin.sh" shape="box"];
  "sha256:775e300312781e3b91a3096be324030bf13c9615c5ad5e8cb0a5fa7719fc7549" [label="sha256:775e300312781e3b91a3096be324030bf13c9615c5ad5e8cb0a5fa7719fc7549" shape="plaintext"];
  "sha256:7b0be0f8b4316ec04dfa5b5ec5727073feac7911e915908559b2a4a2099c034d" -> "sha256:3f749ac2efcd18eaed760d567e3d1f71ec844d82c5555053b0e4c409c9fa5781" [label=""];
  "sha256:3f749ac2efcd18eaed760d567e3d1f71ec844d82c5555053b0e4c409c9fa5781" -> "sha256:8d4e78c309bcbcf001eeaac08e4fe19bc359b6e085bb25e037434c0323b440be" [label=""];
  "sha256:8d4e78c309bcbcf001eeaac08e4fe19bc359b6e085bb25e037434c0323b440be" -> "sha256:6f4015f75e852df3b6ab37ba7c2dc37ab83ab565d37f91d4d2289870441a2943" [label=""];
  "sha256:6f4015f75e852df3b6ab37ba7c2dc37ab83ab565d37f91d4d2289870441a2943" -> "sha256:d571e7ef0d0bba977c34f8c4f894233df2849970395771fd49bb3821f8215ecd" [label=""];
  "sha256:d571e7ef0d0bba977c34f8c4f894233df2849970395771fd49bb3821f8215ecd" -> "sha256:bac78f7de94fd2e9b9634188bb80815404bacff3c449a7c62c173e7794c005fc" [label=""];
  "sha256:bac78f7de94fd2e9b9634188bb80815404bacff3c449a7c62c173e7794c005fc" -> "sha256:89190d0cacbb0b1f8ca8370dbd65f16f0e2e5cde29650f85b7b351990553f54d" [label=""];
  "sha256:89190d0cacbb0b1f8ca8370dbd65f16f0e2e5cde29650f85b7b351990553f54d" -> "sha256:16ede14c739b7e8f5d4952579a4d4aa524ae2a6f5ee92ada21c6309d421c3bcb" [label=""];
  "sha256:16ede14c739b7e8f5d4952579a4d4aa524ae2a6f5ee92ada21c6309d421c3bcb" -> "sha256:90f05fc7ff4753bb963b34b9f380d7db719af28935b6f10fa39f46fd57e3b14d" [label=""];
  "sha256:90f05fc7ff4753bb963b34b9f380d7db719af28935b6f10fa39f46fd57e3b14d" -> "sha256:3418a7b401d40cfbf47f435b12e1ec5e928e9291e2b1560b1248e3acca6d230c" [label=""];
  "sha256:3418a7b401d40cfbf47f435b12e1ec5e928e9291e2b1560b1248e3acca6d230c" -> "sha256:775e300312781e3b91a3096be324030bf13c9615c5ad5e8cb0a5fa7719fc7549" [label=""];
}

