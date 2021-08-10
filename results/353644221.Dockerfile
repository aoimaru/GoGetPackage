[app/sources/353644221.Dockerfile]
digraph {
  "sha256:30c905e75e9ff649500528e095f0de66998fcf9bfa33164a8a9c6dd6815d4235" [label="docker-image://docker.io/beevelop/java:latest" shape="ellipse"];
  "sha256:2cf723bcf26fe7ddf0b90ba30a1e7ad2891e07c979d53e3293f43599e0542767" [label="mkdir{path=/opt}" shape="note"];
  "sha256:508bda3cae891b60fcf60cf95842330696184b8f72664c0d7ee48002f205e0e7" [label="/bin/sh -c dpkg --add-architecture i386 &&     apt-get -qq update &&     apt-get -qq install -y wget curl maven ant gradle libncurses5:i386 libstdc++6:i386 zlib1g:i386 &&     mkdir android && cd android &&     wget -O tools.zip ${ANDROID_SDK_URL} &&     unzip tools.zip && rm tools.zip &&     echo y | android update sdk -a -u -t platform-tools,${ANDROID_APIS},build-tools-${ANDROID_BUILD_TOOLS_VERSION} &&     chmod a+x -R $ANDROID_HOME &&     chown -R root:root $ANDROID_HOME &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* &&     apt-get autoremove -y &&     apt-get clean" shape="box"];
  "sha256:ed3e89bed7adcaa1540a2a05778f2faa3d514873a607c862b5465c576c604a7c" [label="sha256:ed3e89bed7adcaa1540a2a05778f2faa3d514873a607c862b5465c576c604a7c" shape="plaintext"];
  "sha256:30c905e75e9ff649500528e095f0de66998fcf9bfa33164a8a9c6dd6815d4235" -> "sha256:2cf723bcf26fe7ddf0b90ba30a1e7ad2891e07c979d53e3293f43599e0542767" [label=""];
  "sha256:2cf723bcf26fe7ddf0b90ba30a1e7ad2891e07c979d53e3293f43599e0542767" -> "sha256:508bda3cae891b60fcf60cf95842330696184b8f72664c0d7ee48002f205e0e7" [label=""];
  "sha256:508bda3cae891b60fcf60cf95842330696184b8f72664c0d7ee48002f205e0e7" -> "sha256:ed3e89bed7adcaa1540a2a05778f2faa3d514873a607c862b5465c576c604a7c" [label=""];
}

