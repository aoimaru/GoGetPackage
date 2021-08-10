[app/sources/166644580.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:084949675b56768743e13aedae7acb05fbf1b05abf626e006792dccc35c552fb" [label="/bin/sh -c apt-get update -y && apt-get install -y --no-install-recommends     build-essential     ca-certificates     curl     gcc-mingw-w64-i686     gcc-mingw-w64-x86-64     gcc-multilib     git     python     unzip   && apt-get clean   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1154153aba67cc07616574aad961042ea0be6d26340b81eafe16109951bea4f9" [label="/bin/sh -c curl -L https://storage.googleapis.com/golang/$GOVERSION.linux-amd64.tar.gz -o /tmp/go.tar.gz    && tar -C /usr/local -xzf /tmp/go.tar.gz    && rm /tmp/go.tar.gz    && echo $GOVERSION > $GOROOT/VERSION" shape="box"];
  "sha256:0da3cc2d9edc73d2bd5daeede72858534be9af7bd2f141a15e044bf12396a766" [label="/bin/sh -c cd /tmp   && curl https://dl.google.com/android/repository/android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip -o /tmp/android-ndk.zip   && unzip /tmp/android-ndk.zip -d /   && mkdir -p /android-ndk-toolchain   && /android-ndk-${ANDROID_NDK_VERSION}/build/tools/make_standalone_toolchain.py --arch arm --install-dir /android-ndk-toolchain/arm   && /android-ndk-${ANDROID_NDK_VERSION}/build/tools/make_standalone_toolchain.py --arch arm64 --install-dir /android-ndk-toolchain/arm64" shape="box"];
  "sha256:26a8bfcecd48e04190cf6595f87bcbbb388ceaadad93a13e3dc2979e87eb2b0c" [label="mkdir{path=/go/src/github.com/Psiphon-Labs/psiphon-tunnel-core/ClientLibrary}" shape="note"];
  "sha256:1b22ff54e46eb1c896205819a17881b6105f9474d38230c5f4ea9569bb1d690b" [label="sha256:1b22ff54e46eb1c896205819a17881b6105f9474d38230c5f4ea9569bb1d690b" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:084949675b56768743e13aedae7acb05fbf1b05abf626e006792dccc35c552fb" [label=""];
  "sha256:084949675b56768743e13aedae7acb05fbf1b05abf626e006792dccc35c552fb" -> "sha256:1154153aba67cc07616574aad961042ea0be6d26340b81eafe16109951bea4f9" [label=""];
  "sha256:1154153aba67cc07616574aad961042ea0be6d26340b81eafe16109951bea4f9" -> "sha256:0da3cc2d9edc73d2bd5daeede72858534be9af7bd2f141a15e044bf12396a766" [label=""];
  "sha256:0da3cc2d9edc73d2bd5daeede72858534be9af7bd2f141a15e044bf12396a766" -> "sha256:26a8bfcecd48e04190cf6595f87bcbbb388ceaadad93a13e3dc2979e87eb2b0c" [label=""];
  "sha256:26a8bfcecd48e04190cf6595f87bcbbb388ceaadad93a13e3dc2979e87eb2b0c" -> "sha256:1b22ff54e46eb1c896205819a17881b6105f9474d38230c5f4ea9569bb1d690b" [label=""];
}

