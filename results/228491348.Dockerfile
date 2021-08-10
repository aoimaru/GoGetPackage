[app/sources/228491348.Dockerfile]
digraph {
  "sha256:23cb943ca7d0624806f3bbf56fc34bce66d844f8818bcff1b8652f839b8319ef" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:df25030cb5355bee7829aad46f40ca1c25e2ad304d9b69d96ba46cfaf66a04fc" [label="/bin/sh -c apt-get update && apt-get install -y git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip python openjdk-7-jdk" shape="box"];
  "sha256:c16fa434c3b5402a30a62b91a156e1cc850891cd38ba30109d0826be2d5106ac" [label="/bin/sh -c curl -o jdk8.tgz https://android.googlesource.com/platform/prebuilts/jdk/jdk8/+archive/master.tar.gz  && tar -zxf jdk8.tgz linux-x86  && mv linux-x86 /usr/lib/jvm/java-8-openjdk-amd64  && rm -rf jdk8.tgz" shape="box"];
  "sha256:f7d32677848aaf88ea9f67cfd16edff9c869a4d5d85cf69ce46a8e921f5f5c8c" [label="/bin/sh -c curl -o /usr/local/bin/repo https://storage.googleapis.com/git-repo-downloads/repo  && echo \"e147f0392686c40cfd7d5e6f332c6ee74c4eab4d24e2694b3b0a0c037bf51dc5  /usr/local/bin/repo\" | sha256sum --strict -c -  && chmod a+x /usr/local/bin/repo" shape="box"];
  "sha256:921af9508e7628fa13b4b1c54754d4372b198a0e2cb67061d557c92ff797bee9" [label="/bin/sh -c groupadd -g $groupid $username  && useradd -m -u $userid -g $groupid $username  && echo $username >/root/username  && echo \"export USER=\"$username >>/home/$username/.gitconfig" shape="box"];
  "sha256:07c4082b570465aa60eb7cb0a51e03943f5a1538e2327f882580f9feb0c71226" [label="copy{src=/gitconfig, dest=/home/.gitconfig}" shape="note"];
  "sha256:c4b3ff2c51082c009d799fb461d9bf397bef43f58d4224577873e716840bad2e" [label="/bin/sh -c chown $userid:$groupid /home/$username/.gitconfig" shape="box"];
  "sha256:fb3f781f65c546fa0ae89378c54901dfa714ca8c6ff8b64860a91fd4bdc6ddfa" [label="sha256:fb3f781f65c546fa0ae89378c54901dfa714ca8c6ff8b64860a91fd4bdc6ddfa" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:df25030cb5355bee7829aad46f40ca1c25e2ad304d9b69d96ba46cfaf66a04fc" [label=""];
  "sha256:df25030cb5355bee7829aad46f40ca1c25e2ad304d9b69d96ba46cfaf66a04fc" -> "sha256:c16fa434c3b5402a30a62b91a156e1cc850891cd38ba30109d0826be2d5106ac" [label=""];
  "sha256:c16fa434c3b5402a30a62b91a156e1cc850891cd38ba30109d0826be2d5106ac" -> "sha256:f7d32677848aaf88ea9f67cfd16edff9c869a4d5d85cf69ce46a8e921f5f5c8c" [label=""];
  "sha256:f7d32677848aaf88ea9f67cfd16edff9c869a4d5d85cf69ce46a8e921f5f5c8c" -> "sha256:921af9508e7628fa13b4b1c54754d4372b198a0e2cb67061d557c92ff797bee9" [label=""];
  "sha256:921af9508e7628fa13b4b1c54754d4372b198a0e2cb67061d557c92ff797bee9" -> "sha256:07c4082b570465aa60eb7cb0a51e03943f5a1538e2327f882580f9feb0c71226" [label=""];
  "sha256:23cb943ca7d0624806f3bbf56fc34bce66d844f8818bcff1b8652f839b8319ef" -> "sha256:07c4082b570465aa60eb7cb0a51e03943f5a1538e2327f882580f9feb0c71226" [label=""];
  "sha256:07c4082b570465aa60eb7cb0a51e03943f5a1538e2327f882580f9feb0c71226" -> "sha256:c4b3ff2c51082c009d799fb461d9bf397bef43f58d4224577873e716840bad2e" [label=""];
  "sha256:c4b3ff2c51082c009d799fb461d9bf397bef43f58d4224577873e716840bad2e" -> "sha256:fb3f781f65c546fa0ae89378c54901dfa714ca8c6ff8b64860a91fd4bdc6ddfa" [label=""];
}

