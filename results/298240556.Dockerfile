[app/sources/298240556.Dockerfile]
digraph {
  "sha256:236ae56fc83254f4f61704bf1c3c0daed434f7cfcf9fe076ff5b5075c2839fef" [label="docker-image://docker.io/library/ubuntu:14.04.3" shape="ellipse"];
  "sha256:9d331a5fc7b16b063196658cd8dd16d8000595244dd3a266c180a1e4bcb8de12" [label="/bin/sh -c dpkg --add-architecture i386 &&     apt-get update -y &&     apt-get install -y software-properties-common &&     add-apt-repository -y ppa:openjdk-r/ppa &&     apt-get update -y &&     apt-get install -y libc6:i386=2.19-0ubuntu6.7 libncurses5:i386=5.9+20140118-1ubuntu1 libstdc++6:i386=4.8.4-2ubuntu1~14.04.1 lib32z1=1:1.2.8.dfsg-1ubuntu1 wget openjdk-8-jdk=8u72-b15-1~trusty1 git unzip &&     rm -rf /var/lib/apt/lists/* &&     apt-get autoremove -y &&     apt-get clean" shape="box"];
  "sha256:88dbac1f0724ddf1c7a7aaebead4f01347bd31a21baeaf6166f385321d578f27" [label="/bin/sh -c cd /usr/local/ &&     wget -q ${ANDROID_SDK_URL} &&     tar -xzf ${ANDROID_SDK_FILENAME} &&     rm ${ANDROID_SDK_FILENAME}" shape="box"];
  "sha256:cad5f893048e142e9de4c97007cf4812f892274015d2242b12740fce5896e478" [label="/bin/sh -c echo y | android update sdk --no-ui -a --filter ${ANDROID_API_LEVELS}" shape="box"];
  "sha256:ac39b94f8d494d50a277809634e35ef30b926a8e515f5f53e55b7fe1f7b2a276" [label="/bin/sh -c echo y | android update sdk --no-ui -a --filter extra-android-m2repository,extra-android-support,extra-google-google_play_services,extra-google-m2repository" shape="box"];
  "sha256:ed6854d491149e5bafb63de698a20e793b62182e49b0d31fd625f36f1d045880" [label="/bin/sh -c echo y | android update sdk --no-ui -a --filter tools,platform-tools,build-tools-${ANDROID_BUILD_TOOLS_VERSION}" shape="box"];
  "sha256:67a50be32b826eba13a779e03be76612819b55421231ea99b27fb1fc29712ef6" [label="/bin/sh -c rm -rf ${ANDROID_HOME}/tools && unzip ${ANDROID_HOME}/temp/*.zip -d ${ANDROID_HOME}" shape="box"];
  "sha256:f4ae08b110a77a3b88a497e1f8ca9eb4b291143f1f6e0e1dc374217d7014a4b8" [label="sha256:f4ae08b110a77a3b88a497e1f8ca9eb4b291143f1f6e0e1dc374217d7014a4b8" shape="plaintext"];
  "sha256:236ae56fc83254f4f61704bf1c3c0daed434f7cfcf9fe076ff5b5075c2839fef" -> "sha256:9d331a5fc7b16b063196658cd8dd16d8000595244dd3a266c180a1e4bcb8de12" [label=""];
  "sha256:9d331a5fc7b16b063196658cd8dd16d8000595244dd3a266c180a1e4bcb8de12" -> "sha256:88dbac1f0724ddf1c7a7aaebead4f01347bd31a21baeaf6166f385321d578f27" [label=""];
  "sha256:88dbac1f0724ddf1c7a7aaebead4f01347bd31a21baeaf6166f385321d578f27" -> "sha256:cad5f893048e142e9de4c97007cf4812f892274015d2242b12740fce5896e478" [label=""];
  "sha256:cad5f893048e142e9de4c97007cf4812f892274015d2242b12740fce5896e478" -> "sha256:ac39b94f8d494d50a277809634e35ef30b926a8e515f5f53e55b7fe1f7b2a276" [label=""];
  "sha256:ac39b94f8d494d50a277809634e35ef30b926a8e515f5f53e55b7fe1f7b2a276" -> "sha256:ed6854d491149e5bafb63de698a20e793b62182e49b0d31fd625f36f1d045880" [label=""];
  "sha256:ed6854d491149e5bafb63de698a20e793b62182e49b0d31fd625f36f1d045880" -> "sha256:67a50be32b826eba13a779e03be76612819b55421231ea99b27fb1fc29712ef6" [label=""];
  "sha256:67a50be32b826eba13a779e03be76612819b55421231ea99b27fb1fc29712ef6" -> "sha256:f4ae08b110a77a3b88a497e1f8ca9eb4b291143f1f6e0e1dc374217d7014a4b8" [label=""];
}

