[app/sources/209260349.Dockerfile]
digraph {
  "sha256:5d49c0b3a31407c781077827d38e6d9f51c41be93995ecb3649dd633b59c3e7a" [label="docker-image://docker.io/library/maven:3-jdk-8" shape="ellipse"];
  "sha256:3931b6ade108ccef0ad3f339c0540bc7f4fc9cd2be4c0fbb6277296c66092ca6" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:f8749a0af53f622294b7ec29df5fdae4e07d6a7aec726b841ebdbc52052950a4" [label="/bin/sh -c apt-get install -qq git make -y lib32z1 lib32ncurses5 lib32stdc++6" shape="box"];
  "sha256:ffc9a54470fc41d4ee305b4eb5481241cb1470261a57082ed8f2b17992bdce29" [label="mkdir{path=/usr/lib}" shape="note"];
  "sha256:b3d96f5280837732b7f5ea8a06081cb055069e35c2efdd1ceab2c2c295e846d9" [label="/bin/sh -c wget -q https://downloads.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip && unzip \"gradle-${GRADLE_VERSION}-bin.zip\" && ln -s \"/usr/lib/gradle-${GRADLE_VERSION}/bin/gradle\" /usr/bin/gradle && rm \"gradle-${GRADLE_VERSION}-bin.zip\"" shape="box"];
  "sha256:0d5a2053a2fca394e8a72ed55f31700a2927553dc929a439f1ab9e0948bab0c3" [label="/bin/sh -c cd /opt && curl http://dl.google.com/android/android-sdk_r24.3.4-linux.tgz | tar xz" shape="box"];
  "sha256:17b1856a3225f0936e2f40ba7a017cf15452328c004733f5d2950b31a05c59e4" [label="/bin/sh -c echo y | android update sdk --filter platform-tools,build-tools-23.0.3,build-tools-23.0.2,build-tools-23.0.1,build-tools-23,build-tools-22.0.1,build-tools-22,build-tools-21.1.2,build-tools-21.1.1,build-tools-21.1,build-tools-21.0.2,build-tools-21.0.1,build-tools-21,build-tools-20,build-tools-19.1,build-tools-19.0.3,build-tools-19.0.2,build-tools-19.0.1,build-tools-19,build-tools-18.1.1,build-tools-18.1,build-tools-18.0.1,build-tools-17,android-23,android-22,android-21,android-20,android-19,android-18,android-17,android-16,android-15,android-14,extra-android-support,extra-android-m2repository,extra-google-m2repository --no-ui --force --all" shape="box"];
  "sha256:09487e1af1ceb9321344ccd48c743c7eaf0c6528357fc4fc7a25e2dbc8523e39" [label="/bin/sh -c mkdir -p $SRCLIBPATH/sourcegraph.com/sourcegraph/srclib-java" shape="box"];
  "sha256:a217b353fb77c36b05aa856b90bdde6f67d5cd3e296c4ad3656b93d7e8ecd064" [label="mkdir{path=/srclib/toolchains/sourcegraph.com/sourcegraph/srclib-java}" shape="note"];
  "sha256:870e3c2d33d0e135b98e98b477e021304b28ad89679c5ba1966cb0cde62e2a95" [label="/bin/sh -c curl https://srclib-support.s3-us-west-2.amazonaws.com/srclib-java/build/bundled-jdk1.8.0_45.tar.gz | tar xz" shape="box"];
  "sha256:c7a4b22d31bad1c6dec4db4ec24b067f71448070dcc0051afb18908a4e081c69" [label="local://context" shape="ellipse"];
  "sha256:a7d133a5d1bf93428d99c96f9b6c6873c99edb8d65fa73a486481229ea7c9639" [label="copy{src=/, dest=/toolchain/t}" shape="note"];
  "sha256:32a1ca4a492ef541ce7830fcd0e9cb8e545b23a0ba97ad19ce5d22fb05f99178" [label="/bin/sh -c (cd /toolchain && tar xfz t && rm t && mv * /toolchain/t) || true" shape="box"];
  "sha256:54c9c8dea8670a2ea3071354f89336b09b2ef46c5a598ec2cfd49384de291a8d" [label="/bin/sh -c cp -a /toolchain/t/. $SRCLIBPATH/sourcegraph.com/sourcegraph/srclib-java && rm -rf /toolchain/t" shape="box"];
  "sha256:ebf0040470d54e00d4f1d3224486e07cef47bf2718693fed7abf7f9438c464b3" [label="/bin/sh -c make" shape="box"];
  "sha256:6c2a65afd7da37ada1cf91566649f4599441dc5b1eece380e2813ce7f94e4196" [label="copy{src=/srclib, dest=/bin/srclib}" shape="note"];
  "sha256:c7c778d150d09f09e5577dcca61d94d2b842fd2d200d8becc11e8045d6e15b4b" [label="sha256:c7c778d150d09f09e5577dcca61d94d2b842fd2d200d8becc11e8045d6e15b4b" shape="plaintext"];
  "sha256:5d49c0b3a31407c781077827d38e6d9f51c41be93995ecb3649dd633b59c3e7a" -> "sha256:3931b6ade108ccef0ad3f339c0540bc7f4fc9cd2be4c0fbb6277296c66092ca6" [label=""];
  "sha256:3931b6ade108ccef0ad3f339c0540bc7f4fc9cd2be4c0fbb6277296c66092ca6" -> "sha256:f8749a0af53f622294b7ec29df5fdae4e07d6a7aec726b841ebdbc52052950a4" [label=""];
  "sha256:f8749a0af53f622294b7ec29df5fdae4e07d6a7aec726b841ebdbc52052950a4" -> "sha256:ffc9a54470fc41d4ee305b4eb5481241cb1470261a57082ed8f2b17992bdce29" [label=""];
  "sha256:ffc9a54470fc41d4ee305b4eb5481241cb1470261a57082ed8f2b17992bdce29" -> "sha256:b3d96f5280837732b7f5ea8a06081cb055069e35c2efdd1ceab2c2c295e846d9" [label=""];
  "sha256:b3d96f5280837732b7f5ea8a06081cb055069e35c2efdd1ceab2c2c295e846d9" -> "sha256:0d5a2053a2fca394e8a72ed55f31700a2927553dc929a439f1ab9e0948bab0c3" [label=""];
  "sha256:0d5a2053a2fca394e8a72ed55f31700a2927553dc929a439f1ab9e0948bab0c3" -> "sha256:17b1856a3225f0936e2f40ba7a017cf15452328c004733f5d2950b31a05c59e4" [label=""];
  "sha256:17b1856a3225f0936e2f40ba7a017cf15452328c004733f5d2950b31a05c59e4" -> "sha256:09487e1af1ceb9321344ccd48c743c7eaf0c6528357fc4fc7a25e2dbc8523e39" [label=""];
  "sha256:09487e1af1ceb9321344ccd48c743c7eaf0c6528357fc4fc7a25e2dbc8523e39" -> "sha256:a217b353fb77c36b05aa856b90bdde6f67d5cd3e296c4ad3656b93d7e8ecd064" [label=""];
  "sha256:a217b353fb77c36b05aa856b90bdde6f67d5cd3e296c4ad3656b93d7e8ecd064" -> "sha256:870e3c2d33d0e135b98e98b477e021304b28ad89679c5ba1966cb0cde62e2a95" [label=""];
  "sha256:870e3c2d33d0e135b98e98b477e021304b28ad89679c5ba1966cb0cde62e2a95" -> "sha256:a7d133a5d1bf93428d99c96f9b6c6873c99edb8d65fa73a486481229ea7c9639" [label=""];
  "sha256:c7a4b22d31bad1c6dec4db4ec24b067f71448070dcc0051afb18908a4e081c69" -> "sha256:a7d133a5d1bf93428d99c96f9b6c6873c99edb8d65fa73a486481229ea7c9639" [label=""];
  "sha256:a7d133a5d1bf93428d99c96f9b6c6873c99edb8d65fa73a486481229ea7c9639" -> "sha256:32a1ca4a492ef541ce7830fcd0e9cb8e545b23a0ba97ad19ce5d22fb05f99178" [label=""];
  "sha256:32a1ca4a492ef541ce7830fcd0e9cb8e545b23a0ba97ad19ce5d22fb05f99178" -> "sha256:54c9c8dea8670a2ea3071354f89336b09b2ef46c5a598ec2cfd49384de291a8d" [label=""];
  "sha256:54c9c8dea8670a2ea3071354f89336b09b2ef46c5a598ec2cfd49384de291a8d" -> "sha256:ebf0040470d54e00d4f1d3224486e07cef47bf2718693fed7abf7f9438c464b3" [label=""];
  "sha256:ebf0040470d54e00d4f1d3224486e07cef47bf2718693fed7abf7f9438c464b3" -> "sha256:6c2a65afd7da37ada1cf91566649f4599441dc5b1eece380e2813ce7f94e4196" [label=""];
  "sha256:c7a4b22d31bad1c6dec4db4ec24b067f71448070dcc0051afb18908a4e081c69" -> "sha256:6c2a65afd7da37ada1cf91566649f4599441dc5b1eece380e2813ce7f94e4196" [label=""];
  "sha256:6c2a65afd7da37ada1cf91566649f4599441dc5b1eece380e2813ce7f94e4196" -> "sha256:c7c778d150d09f09e5577dcca61d94d2b842fd2d200d8becc11e8045d6e15b4b" [label=""];
}

