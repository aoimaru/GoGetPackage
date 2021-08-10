[app/sources/257671843.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:b2aac2cfc28e9a29a93d02ff07415d3875ea1c76688c0a2386b8b9088f523c33" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:ba4f8544e0f660d43fe9ea2b023b47bd553d2eb3adeaed9f405e0a7257723886" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive dpkg --add-architecture i386     && apt-get update -qq     && apt-get install -y bsdmainutils                           build-essential                           ccache                           curl                           file                           git                           libc6:i386                           libgcc1:i386                           libncurses5:i386                           libstdc++6:i386                           libz1:i386                           openjdk-8-jdk-headless                           s3cmd                           unzip                           wget                           zip     && apt-get clean" shape="box"];
  "sha256:4b8afaa47de96c11c734f8b8add32b3cbfea734adfe00584e6d972731bf358f7" [label="/bin/sh -c cd /opt &&     wget -q https://dl.google.com/android/repository/tools_r25.1.7-linux.zip -O android-tools-linux.zip &&     unzip android-tools-linux.zip -d ${ANDROID_HOME} &&     rm -f android-tools-linux.zip" shape="box"];
  "sha256:d72284ddc67e8f1a66621258f2da66a39366e0532e18bcb15d41b027a3893303" [label="/bin/sh -c echo y | android update sdk --no-ui --all --filter tools > /dev/null" shape="box"];
  "sha256:c8ee516f48dbc248a9360c0f6691a6c27fd33777b2d128afdcfa8f8fe0dc8806" [label="/bin/sh -c echo y | android update sdk --no-ui --all --filter platform-tools | grep 'package installed'" shape="box"];
  "sha256:e39f84f3d1a7dca715b9d0e3942d738fc83c08e007a8494fb80999a9d013c6b9" [label="/bin/sh -c echo y | android update sdk --no-ui --all --filter build-tools-24.0.3 | grep 'package installed'" shape="box"];
  "sha256:2faf5dea49aa04ccd0e1689c04803aae205ddab0b9b4a97a943fb8c3857475f4" [label="/bin/sh -c echo y | android update sdk --no-ui --all --filter extra-android-m2repository | grep 'package installed'" shape="box"];
  "sha256:6fa41cd074e888afb84056f6f29b094a3af093534cf737aba529d14e553476d4" [label="/bin/sh -c echo y | android update sdk --no-ui --all --filter android-24 | grep 'package installed'" shape="box"];
  "sha256:00a61573fa7496a621c9fecebaa86450ef09dbd62805ee2181a48722523974bd" [label="/bin/sh -c chmod -R a+rX ${ANDROID_HOME}" shape="box"];
  "sha256:71d9585921429008e75c7d6f594dee95b16e29a3e7d06e7015a40761e7f44c38" [label="sha256:71d9585921429008e75c7d6f594dee95b16e29a3e7d06e7015a40761e7f44c38" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:b2aac2cfc28e9a29a93d02ff07415d3875ea1c76688c0a2386b8b9088f523c33" [label=""];
  "sha256:b2aac2cfc28e9a29a93d02ff07415d3875ea1c76688c0a2386b8b9088f523c33" -> "sha256:ba4f8544e0f660d43fe9ea2b023b47bd553d2eb3adeaed9f405e0a7257723886" [label=""];
  "sha256:ba4f8544e0f660d43fe9ea2b023b47bd553d2eb3adeaed9f405e0a7257723886" -> "sha256:4b8afaa47de96c11c734f8b8add32b3cbfea734adfe00584e6d972731bf358f7" [label=""];
  "sha256:4b8afaa47de96c11c734f8b8add32b3cbfea734adfe00584e6d972731bf358f7" -> "sha256:d72284ddc67e8f1a66621258f2da66a39366e0532e18bcb15d41b027a3893303" [label=""];
  "sha256:d72284ddc67e8f1a66621258f2da66a39366e0532e18bcb15d41b027a3893303" -> "sha256:c8ee516f48dbc248a9360c0f6691a6c27fd33777b2d128afdcfa8f8fe0dc8806" [label=""];
  "sha256:c8ee516f48dbc248a9360c0f6691a6c27fd33777b2d128afdcfa8f8fe0dc8806" -> "sha256:e39f84f3d1a7dca715b9d0e3942d738fc83c08e007a8494fb80999a9d013c6b9" [label=""];
  "sha256:e39f84f3d1a7dca715b9d0e3942d738fc83c08e007a8494fb80999a9d013c6b9" -> "sha256:2faf5dea49aa04ccd0e1689c04803aae205ddab0b9b4a97a943fb8c3857475f4" [label=""];
  "sha256:2faf5dea49aa04ccd0e1689c04803aae205ddab0b9b4a97a943fb8c3857475f4" -> "sha256:6fa41cd074e888afb84056f6f29b094a3af093534cf737aba529d14e553476d4" [label=""];
  "sha256:6fa41cd074e888afb84056f6f29b094a3af093534cf737aba529d14e553476d4" -> "sha256:00a61573fa7496a621c9fecebaa86450ef09dbd62805ee2181a48722523974bd" [label=""];
  "sha256:00a61573fa7496a621c9fecebaa86450ef09dbd62805ee2181a48722523974bd" -> "sha256:71d9585921429008e75c7d6f594dee95b16e29a3e7d06e7015a40761e7f44c38" [label=""];
}

