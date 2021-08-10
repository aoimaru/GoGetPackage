[app/sources/232141788.Dockerfile]
digraph {
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:a58cf751c7df78591573d7bc0aba167d4a4f14eed1750a6842b7ac5c64a17b80" [label="/bin/sh -c dpkg --add-architecture i386 &&     curl -sL https://deb.nodesource.com/setup_4.x | bash - &&     apt-get install -y nodejs libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 build-essential     python-dev autoconf dtach vim tmux &&     apt-get clean" shape="box"];
  "sha256:ec3321f09579bf5f1320884c70d100e2d5df148812394d1e445d59650fb377d3" [label="/bin/sh -c npm install -g react-native-cli" shape="box"];
  "sha256:39b966ceb2ab23759923ea6c565748bc6e7b61991de37dafa8ce8bc56addd7a3" [label="/bin/sh -c cd /tmp && git clone https://github.com/facebook/watchman.git && cd watchman &&     git checkout v4.1.0 && ./autogen.sh && ./configure && make && make install && rm -rf /tmp/watchman" shape="box"];
  "sha256:0706328b2908fa57fb878bdd0b4f811f7ec6463145151f3a74a23a2e38f3676a" [label="/bin/sh -c mkdir /root/.gradle && touch /root/.gradle/gradle.properties && echo \"org.gradle.daemon=true\" >> /root/.gradle/gradle.properties" shape="box"];
  "sha256:1a298eb3f5aa07400d2cc788938d463f7d57846da4c6b21724a716e62355755a" [label="/bin/sh -c cd /tmp &&     curl -O https://dl.google.com/android/android-sdk_r24.4.1-linux.tgz &&     cd /opt && tar xzf /tmp/*.tgz && rm /tmp/*.tgz" shape="box"];
  "sha256:a4db0a463a2ed9fe5a5ad474d2cdcde57a6786e94413215bc482301aaa8e6132" [label="/bin/sh -c echo \"y\" | android update sdk --no-ui --force -a --filter extra-android-m2repository,extra-android-support,extra-google-m2repository,platform-tools,android-23,build-tools-23.0.1,android-25,build-tools-25" shape="box"];
  "sha256:a82ee9575ced4d286115a9d85334dd827d31ed4468a1cb8c2ab6bff5033abd5b" [label="/bin/sh -c echo \"export PATH=${PATH}\" > /root/.profile" shape="box"];
  "sha256:2d0fd09571507ae57faca623ffcdf1e585cd567409ceb52f4cee08ef6479dc61" [label="local://context" shape="ellipse"];
  "sha256:29a92dee091a5c5f2aee8ece7b2e87de5d3d8a377cf68105966456d4b06c2703" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:0177375a4411c23a08af848663ec66c817afc35ffda96e00da410caad3cc0c3b" [label="sha256:0177375a4411c23a08af848663ec66c817afc35ffda96e00da410caad3cc0c3b" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:a58cf751c7df78591573d7bc0aba167d4a4f14eed1750a6842b7ac5c64a17b80" [label=""];
  "sha256:a58cf751c7df78591573d7bc0aba167d4a4f14eed1750a6842b7ac5c64a17b80" -> "sha256:ec3321f09579bf5f1320884c70d100e2d5df148812394d1e445d59650fb377d3" [label=""];
  "sha256:ec3321f09579bf5f1320884c70d100e2d5df148812394d1e445d59650fb377d3" -> "sha256:39b966ceb2ab23759923ea6c565748bc6e7b61991de37dafa8ce8bc56addd7a3" [label=""];
  "sha256:39b966ceb2ab23759923ea6c565748bc6e7b61991de37dafa8ce8bc56addd7a3" -> "sha256:0706328b2908fa57fb878bdd0b4f811f7ec6463145151f3a74a23a2e38f3676a" [label=""];
  "sha256:0706328b2908fa57fb878bdd0b4f811f7ec6463145151f3a74a23a2e38f3676a" -> "sha256:1a298eb3f5aa07400d2cc788938d463f7d57846da4c6b21724a716e62355755a" [label=""];
  "sha256:1a298eb3f5aa07400d2cc788938d463f7d57846da4c6b21724a716e62355755a" -> "sha256:a4db0a463a2ed9fe5a5ad474d2cdcde57a6786e94413215bc482301aaa8e6132" [label=""];
  "sha256:a4db0a463a2ed9fe5a5ad474d2cdcde57a6786e94413215bc482301aaa8e6132" -> "sha256:a82ee9575ced4d286115a9d85334dd827d31ed4468a1cb8c2ab6bff5033abd5b" [label=""];
  "sha256:a82ee9575ced4d286115a9d85334dd827d31ed4468a1cb8c2ab6bff5033abd5b" -> "sha256:29a92dee091a5c5f2aee8ece7b2e87de5d3d8a377cf68105966456d4b06c2703" [label=""];
  "sha256:2d0fd09571507ae57faca623ffcdf1e585cd567409ceb52f4cee08ef6479dc61" -> "sha256:29a92dee091a5c5f2aee8ece7b2e87de5d3d8a377cf68105966456d4b06c2703" [label=""];
  "sha256:29a92dee091a5c5f2aee8ece7b2e87de5d3d8a377cf68105966456d4b06c2703" -> "sha256:0177375a4411c23a08af848663ec66c817afc35ffda96e00da410caad3cc0c3b" [label=""];
}

