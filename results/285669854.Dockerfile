[app/sources/285669854.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:aea12c3e7968ad278ab0193c6c07a29b3f3822959097125d7ac54aeaf085252d" [label="/bin/sh -c mkdir /debs" shape="box"];
  "sha256:ee803609fe6c99b8f2fd22d4cac19a0c68b28f47bd40af0bca20047b91ec18ba" [label="local://context" shape="ellipse"];
  "sha256:d2183abc3f2a3478cfe44f94a01291ba4325ffd9ea38a0d6b41df1fe94e227bc" [label="/bin/sh -c apt-get update  && apt-get install gnupg -y" shape="box"];
  "sha256:e7d222e078b4529a8c0c2a05c024a8cc94fb1b0896196c7d973b8bb1c0a3df79" [label="/bin/sh -c (apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 44FC67F19B2466EA  || apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 44FC67F19B2466EA)  && echo 'deb http://repo.sawtooth.me/ubuntu/nightly bionic universe' >> /etc/apt/sources.list  && apt-get update  && apt-get install -y -q     curl     gcc     git     libssl-dev     libzmq3-dev     openssl     pkg-config     python3     python3-grpcio-tools     unzip  && curl -s -S -o /tmp/setup-node.sh https://deb.nodesource.com/setup_6.x  && chmod 755 /tmp/setup-node.sh  && /tmp/setup-node.sh  && apt-get install nodejs -y -q  && rm /tmp/setup-node.sh  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2976af7e6249109a9bc933ec58e357dac65c8acecc1de0bb64242be43c57316d" [label="/bin/sh -c curl -OLsS https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip  && unzip protoc-3.5.1-linux-x86_64.zip -d protoc3  && rm protoc-3.5.1-linux-x86_64.zip" shape="box"];
  "sha256:0b791bb8e0c942e26ebb39b19d275768f47434ba4e6aa2bc830b9e8c6ef3cdc4" [label="/bin/sh -c curl https://sh.rustup.rs -sSf > /usr/bin/rustup-init  && chmod +x /usr/bin/rustup-init  && rustup-init -y" shape="box"];
  "sha256:473acec6e063d60416ba821cdd5de3bfb3f7593a2d06f52029eb4ad66405a50f" [label="mkdir{path=/project/sawtooth-seth/rpc}" shape="note"];
  "sha256:26f96ad3fc85afd38fcf1e8cbd8038911cb791fcb22766b890cc0a50d0aaeb99" [label="copy{src=/bin, dest=/project/sawtooth-seth/bin}" shape="note"];
  "sha256:aa6b080419358bc80a27f23c3b93c3979fcdb0debedbc1cfa24bb185b81418b5" [label="copy{src=/protos, dest=/project/sawtooth-seth/protos}" shape="note"];
  "sha256:a2f3492afa5a9168f37c9bb8a1e43c9ec74fa3e1fb24e960d0ffcb68ae4da8df" [label="copy{src=/rpc, dest=/project/sawtooth-seth/rpc}" shape="note"];
  "sha256:c8be4589184f9aafedd445f4a939a7316f9da3f891884a2318c323679478a6f8" [label="copy{src=/tests, dest=/project/sawtooth-seth/tests}" shape="note"];
  "sha256:32f2f5f4641818a3a6f0055c79b33796858ebfa261e8a6c992c47e7208c71152" [label="/bin/sh -c mkdir /project/sawtooth-seth/rpc/bin  && cargo build  && cp ./target/debug/rpc /project/sawtooth-seth/rpc/bin/seth-rpc" shape="box"];
  "sha256:c87370bde72107627f1a8cbe84ffce7120d9a0d5243be1f827fd56deb2fee911" [label="/bin/sh -c pkg_dir=/project/build/debs/  && CHANGELOG_DIR=\"debian/usr/share/doc/sawtooth-seth\"  && if [ -d \"debian\" ]; then rm -rf debian; fi  && mkdir -p $pkg_dir  && mkdir -p debian/DEBIAN  && mkdir -p $CHANGELOG_DIR  && cp packaging/ubuntu/* debian  && cp debian/changelog $CHANGELOG_DIR  && mv debian/changelog $CHANGELOG_DIR/changelog.Debian  && gzip --best $CHANGELOG_DIR/changelog  && gzip --best $CHANGELOG_DIR/changelog.Debian  && mv debian/control debian/DEBIAN  && PACKAGENAME=$(awk '/^Package:/ { print $2 }' debian/DEBIAN/control)  && PACKAGEVERSION=$(dpkg-parsechangelog -S version -l $CHANGELOG_DIR/changelog.gz)  && PACKAGEARCH=$(dpkg-architecture -qDEB_BUILD_ARCH)  && mkdir debian/usr/bin  && cp -R bin/seth-rpc debian/usr/bin  && fakeroot dpkg-deb --build debian  && mv debian.deb $pkg_dir/\"${PACKAGENAME}_${PACKAGEVERSION}_${PACKAGEARCH}.deb\"" shape="box"];
  "sha256:5b9b293d585ceee949a67c2635854e88e72208ac38f616cc1a7cddd0008b0cf5" [label="copy{src=/project/build/debs/sawtooth-seth-rpc_*amd64.deb, dest=/debs}" shape="note"];
  "sha256:0a1ba71eeacfd785b8d95f9a49a374716a24fdf4df54c661e7de5071792c0972" [label="/bin/sh -c apt-get update  && dpkg -i /debs/sawtooth-seth-rpc_*amd64.deb || true  && apt-get -f -y install  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:71b6e5fb563b65fb55b79bb6ca0a04006e70031590b46f66a29003ede50e4398" [label="sha256:71b6e5fb563b65fb55b79bb6ca0a04006e70031590b46f66a29003ede50e4398" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:aea12c3e7968ad278ab0193c6c07a29b3f3822959097125d7ac54aeaf085252d" [label=""];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:d2183abc3f2a3478cfe44f94a01291ba4325ffd9ea38a0d6b41df1fe94e227bc" [label=""];
  "sha256:d2183abc3f2a3478cfe44f94a01291ba4325ffd9ea38a0d6b41df1fe94e227bc" -> "sha256:e7d222e078b4529a8c0c2a05c024a8cc94fb1b0896196c7d973b8bb1c0a3df79" [label=""];
  "sha256:e7d222e078b4529a8c0c2a05c024a8cc94fb1b0896196c7d973b8bb1c0a3df79" -> "sha256:2976af7e6249109a9bc933ec58e357dac65c8acecc1de0bb64242be43c57316d" [label=""];
  "sha256:2976af7e6249109a9bc933ec58e357dac65c8acecc1de0bb64242be43c57316d" -> "sha256:0b791bb8e0c942e26ebb39b19d275768f47434ba4e6aa2bc830b9e8c6ef3cdc4" [label=""];
  "sha256:0b791bb8e0c942e26ebb39b19d275768f47434ba4e6aa2bc830b9e8c6ef3cdc4" -> "sha256:473acec6e063d60416ba821cdd5de3bfb3f7593a2d06f52029eb4ad66405a50f" [label=""];
  "sha256:473acec6e063d60416ba821cdd5de3bfb3f7593a2d06f52029eb4ad66405a50f" -> "sha256:26f96ad3fc85afd38fcf1e8cbd8038911cb791fcb22766b890cc0a50d0aaeb99" [label=""];
  "sha256:ee803609fe6c99b8f2fd22d4cac19a0c68b28f47bd40af0bca20047b91ec18ba" -> "sha256:26f96ad3fc85afd38fcf1e8cbd8038911cb791fcb22766b890cc0a50d0aaeb99" [label=""];
  "sha256:26f96ad3fc85afd38fcf1e8cbd8038911cb791fcb22766b890cc0a50d0aaeb99" -> "sha256:aa6b080419358bc80a27f23c3b93c3979fcdb0debedbc1cfa24bb185b81418b5" [label=""];
  "sha256:ee803609fe6c99b8f2fd22d4cac19a0c68b28f47bd40af0bca20047b91ec18ba" -> "sha256:aa6b080419358bc80a27f23c3b93c3979fcdb0debedbc1cfa24bb185b81418b5" [label=""];
  "sha256:aa6b080419358bc80a27f23c3b93c3979fcdb0debedbc1cfa24bb185b81418b5" -> "sha256:a2f3492afa5a9168f37c9bb8a1e43c9ec74fa3e1fb24e960d0ffcb68ae4da8df" [label=""];
  "sha256:ee803609fe6c99b8f2fd22d4cac19a0c68b28f47bd40af0bca20047b91ec18ba" -> "sha256:a2f3492afa5a9168f37c9bb8a1e43c9ec74fa3e1fb24e960d0ffcb68ae4da8df" [label=""];
  "sha256:a2f3492afa5a9168f37c9bb8a1e43c9ec74fa3e1fb24e960d0ffcb68ae4da8df" -> "sha256:c8be4589184f9aafedd445f4a939a7316f9da3f891884a2318c323679478a6f8" [label=""];
  "sha256:ee803609fe6c99b8f2fd22d4cac19a0c68b28f47bd40af0bca20047b91ec18ba" -> "sha256:c8be4589184f9aafedd445f4a939a7316f9da3f891884a2318c323679478a6f8" [label=""];
  "sha256:c8be4589184f9aafedd445f4a939a7316f9da3f891884a2318c323679478a6f8" -> "sha256:32f2f5f4641818a3a6f0055c79b33796858ebfa261e8a6c992c47e7208c71152" [label=""];
  "sha256:32f2f5f4641818a3a6f0055c79b33796858ebfa261e8a6c992c47e7208c71152" -> "sha256:c87370bde72107627f1a8cbe84ffce7120d9a0d5243be1f827fd56deb2fee911" [label=""];
  "sha256:aea12c3e7968ad278ab0193c6c07a29b3f3822959097125d7ac54aeaf085252d" -> "sha256:5b9b293d585ceee949a67c2635854e88e72208ac38f616cc1a7cddd0008b0cf5" [label=""];
  "sha256:c87370bde72107627f1a8cbe84ffce7120d9a0d5243be1f827fd56deb2fee911" -> "sha256:5b9b293d585ceee949a67c2635854e88e72208ac38f616cc1a7cddd0008b0cf5" [label=""];
  "sha256:5b9b293d585ceee949a67c2635854e88e72208ac38f616cc1a7cddd0008b0cf5" -> "sha256:0a1ba71eeacfd785b8d95f9a49a374716a24fdf4df54c661e7de5071792c0972" [label=""];
  "sha256:0a1ba71eeacfd785b8d95f9a49a374716a24fdf4df54c661e7de5071792c0972" -> "sha256:71b6e5fb563b65fb55b79bb6ca0a04006e70031590b46f66a29003ede50e4398" [label=""];
}

