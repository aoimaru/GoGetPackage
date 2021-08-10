[app/sources/285625355.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:8a82f09097faa129683b8ba220c1cdc1b543368f8bb063d25e6ac3e1e08135aa" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:6182cbd4f679ef09f5d3e7d589b3d472920d4cff5e69922d5fb1e0fbb284acf6" [label="/bin/sh -c apt-get install -y locales" shape="box"];
  "sha256:12ec1922fe2cdea19d813d445c924660463f2636b7fc3400d9fae55a67fa4c8d" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:ab3ab3e07e896f2598cdcf261bbd21b3c623e09a91ff9cf50685ba7bb24811df" [label="/bin/sh -c apt-get install -qqy --no-install-recommends       bzip2       curl       git-core       html2text       openjdk-8-jdk       libc6-i386       lib32stdc++6       lib32gcc1       lib32ncurses5       lib32z1       unzip     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:c8a5f6fe6ac0da436b9691480e66f8147f325e85110a1b900ff969544dd451a8" [label="/bin/sh -c rm -f /etc/ssl/certs/java/cacerts;     /var/lib/dpkg/info/ca-certificates-java.postinst configure" shape="box"];
  "sha256:4a6b6a8f840d2b8e6bd69291c0c059cd74fbb01e427d84fb8a51ef12a9656cb5" [label="/bin/sh -c curl -s https://dl.google.com/android/repository/sdk-tools-linux-${VERSION_SDK_TOOLS}.zip > /sdk.zip &&     unzip /sdk.zip -d /sdk &&     rm -v /sdk.zip" shape="box"];
  "sha256:7680961424fd1ac87375f49c9ac7fd974d6784ba79265249617708226ad88fd4" [label="/bin/sh -c mkdir -p $ANDROID_HOME/licenses/   && echo \"8933bad161af4178b1185d1a37fbf41ea5269c55\\nd56f5187479451eabf01fb78af6dfcb131a6481e\" > $ANDROID_HOME/licenses/android-sdk-license   && echo \"84831b9409646a918e30573bab4c9c91346d8abd\" > $ANDROID_HOME/licenses/android-sdk-preview-license" shape="box"];
  "sha256:697b6b04b67ae6bfc169c6b71fcd6ed05dc1f826291d5c1f7f167da29e721c29" [label="/bin/sh -c yes | $ANDROID_HOME/tools/bin/sdkmanager \"platforms;android-28\"" shape="box"];
  "sha256:0a0ea7618907f5b7505bcc489df40fcb0210d08e9895d45d5b99049155769413" [label="local://context" shape="ellipse"];
  "sha256:444eac5d286c1572f9ba8a724b91cf6a769738d5890465d1f48038a92d11374e" [label="copy{src=/packages.txt, dest=/sdk}" shape="note"];
  "sha256:32e53530d4af3473d89504fa30d0b95abc296037b9d1b268248ef2bc47670dfd" [label="/bin/sh -c mkdir -p /root/.android &&   touch /root/.android/repositories.cfg &&   ${ANDROID_HOME}/tools/bin/sdkmanager --update" shape="box"];
  "sha256:da68826c105fea39e1011c0a827a87f4fd3bab943fbc44e7e9cd797d0f8429fd" [label="/bin/sh -c while read -r package; do PACKAGES=\"${PACKAGES}${package} \"; done < /sdk/packages.txt &&     ${ANDROID_HOME}/tools/bin/sdkmanager ${PACKAGES}" shape="box"];
  "sha256:0d17ea81dd1f91e6bb496978350b5612819c5b75fa64bac06d797358fec44afe" [label="sha256:0d17ea81dd1f91e6bb496978350b5612819c5b75fa64bac06d797358fec44afe" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:8a82f09097faa129683b8ba220c1cdc1b543368f8bb063d25e6ac3e1e08135aa" [label=""];
  "sha256:8a82f09097faa129683b8ba220c1cdc1b543368f8bb063d25e6ac3e1e08135aa" -> "sha256:6182cbd4f679ef09f5d3e7d589b3d472920d4cff5e69922d5fb1e0fbb284acf6" [label=""];
  "sha256:6182cbd4f679ef09f5d3e7d589b3d472920d4cff5e69922d5fb1e0fbb284acf6" -> "sha256:12ec1922fe2cdea19d813d445c924660463f2636b7fc3400d9fae55a67fa4c8d" [label=""];
  "sha256:12ec1922fe2cdea19d813d445c924660463f2636b7fc3400d9fae55a67fa4c8d" -> "sha256:ab3ab3e07e896f2598cdcf261bbd21b3c623e09a91ff9cf50685ba7bb24811df" [label=""];
  "sha256:ab3ab3e07e896f2598cdcf261bbd21b3c623e09a91ff9cf50685ba7bb24811df" -> "sha256:c8a5f6fe6ac0da436b9691480e66f8147f325e85110a1b900ff969544dd451a8" [label=""];
  "sha256:c8a5f6fe6ac0da436b9691480e66f8147f325e85110a1b900ff969544dd451a8" -> "sha256:4a6b6a8f840d2b8e6bd69291c0c059cd74fbb01e427d84fb8a51ef12a9656cb5" [label=""];
  "sha256:4a6b6a8f840d2b8e6bd69291c0c059cd74fbb01e427d84fb8a51ef12a9656cb5" -> "sha256:7680961424fd1ac87375f49c9ac7fd974d6784ba79265249617708226ad88fd4" [label=""];
  "sha256:7680961424fd1ac87375f49c9ac7fd974d6784ba79265249617708226ad88fd4" -> "sha256:697b6b04b67ae6bfc169c6b71fcd6ed05dc1f826291d5c1f7f167da29e721c29" [label=""];
  "sha256:697b6b04b67ae6bfc169c6b71fcd6ed05dc1f826291d5c1f7f167da29e721c29" -> "sha256:444eac5d286c1572f9ba8a724b91cf6a769738d5890465d1f48038a92d11374e" [label=""];
  "sha256:0a0ea7618907f5b7505bcc489df40fcb0210d08e9895d45d5b99049155769413" -> "sha256:444eac5d286c1572f9ba8a724b91cf6a769738d5890465d1f48038a92d11374e" [label=""];
  "sha256:444eac5d286c1572f9ba8a724b91cf6a769738d5890465d1f48038a92d11374e" -> "sha256:32e53530d4af3473d89504fa30d0b95abc296037b9d1b268248ef2bc47670dfd" [label=""];
  "sha256:32e53530d4af3473d89504fa30d0b95abc296037b9d1b268248ef2bc47670dfd" -> "sha256:da68826c105fea39e1011c0a827a87f4fd3bab943fbc44e7e9cd797d0f8429fd" [label=""];
  "sha256:da68826c105fea39e1011c0a827a87f4fd3bab943fbc44e7e9cd797d0f8429fd" -> "sha256:0d17ea81dd1f91e6bb496978350b5612819c5b75fa64bac06d797358fec44afe" [label=""];
}

