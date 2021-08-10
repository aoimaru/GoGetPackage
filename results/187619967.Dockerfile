[app/sources/187619967.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:30573e980462418eab340413f679435739dcf28b405b190a6fe7d00983b7209b" [label="/bin/sh -c apt-get update &&   apt-get install -y software-properties-common &&   add-apt-repository -y ppa:webupd8team/java &&   (echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections) &&   apt-get update &&   apt-get install -y oracle-java8-installer &&   apt-get clean &&   rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:59db75805a32568f713a6fb1f34ef4df28a8853be2fa10d3c40175bdfd184b44" [label="/bin/sh -c dpkg --add-architecture i386 && apt-get update && apt-get install -y --force-yes expect git wget libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5 lib32z1 python curl libqt5widgets5 && apt-get clean && rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:cf093305739b4ded637694b913827486ab81d988125134ccf781dd816e4ca71c" [label="local://context" shape="ellipse"];
  "sha256:e1309274686f5948ec31796a6d15b920796ec044e3a70e728e4b1ec06008e8da" [label="copy{src=/tools, dest=/opt/tools}" shape="note"];
  "sha256:d6512e20d0eb0a864c050be64bebda4a8ab1a1c4a6d5ed9b85d775e34050dbb1" [label="/bin/sh -c cd /opt && wget --output-document=android-sdk.tgz --quiet http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz &&   tar xzf android-sdk.tgz &&   rm -f android-sdk.tgz &&   chown -R root.root android-sdk-linux &&   /opt/tools/android-accept-licenses.sh \"android-sdk-linux/tools/android update sdk --all --no-ui --filter platform-tools,tools\" &&   /opt/tools/android-accept-licenses.sh \"android-sdk-linux/tools/android update sdk --all --no-ui --filter platform-tools,tools,build-tools-21.0.0,build-tools-21.0.1,build-tools-21.0.2,build-tools-21.1,build-tools-21.1.1,build-tools-21.1.2,build-tools-22.0.0,build-tools-22.0.1,build-tools-23.0.0,build-tools-23.0.3,build-tools-24.0.0,build-tools-24.0.1,build-tools-24.0.2,android-21,android-22,android-23,android-24,addon-google_apis_x86-google-21,extra-android-support,extra-android-m2repository,extra-google-m2repository,extra-google-google_play_services,sys-img-armeabi-v7a-android-24\"" shape="box"];
  "sha256:fb757bd5779e4ab823d01922ab17871e697e6bdc6e78692e1eb63010d0f8b2c8" [label="/bin/sh -c which android" shape="box"];
  "sha256:9efde6f8ab97b2e39f25d0adf16fa07d31ef121fef00bdad02f3fd7a67451949" [label="/bin/sh -c echo \"no\" | android create avd                 --force                 --device \"Nexus 5\"                 --name test                 --target android-24                 --abi armeabi-v7a                 --skin WVGA800                 --sdcard 512M" shape="box"];
  "sha256:2091bd13dde3487a8ec27d78971ad4cbd91286b174aa184c817c50991323247c" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:3908333a23d62036434ac31a75b3f7edadc16dc095307770b456850a05d2093b" [label="/bin/sh -c mkdir -p /opt/workspace" shape="box"];
  "sha256:0fa02c6550ffdcc7815f36ae56275ab762d5086b3f4c1fe347b25cf54ab26e85" [label="mkdir{path=/opt/workspace}" shape="note"];
  "sha256:b39885629fe7b7c93de2b0137bda79278d9c7d17abaa66f703792ae20030f39b" [label="sha256:b39885629fe7b7c93de2b0137bda79278d9c7d17abaa66f703792ae20030f39b" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:30573e980462418eab340413f679435739dcf28b405b190a6fe7d00983b7209b" [label=""];
  "sha256:30573e980462418eab340413f679435739dcf28b405b190a6fe7d00983b7209b" -> "sha256:59db75805a32568f713a6fb1f34ef4df28a8853be2fa10d3c40175bdfd184b44" [label=""];
  "sha256:59db75805a32568f713a6fb1f34ef4df28a8853be2fa10d3c40175bdfd184b44" -> "sha256:e1309274686f5948ec31796a6d15b920796ec044e3a70e728e4b1ec06008e8da" [label=""];
  "sha256:cf093305739b4ded637694b913827486ab81d988125134ccf781dd816e4ca71c" -> "sha256:e1309274686f5948ec31796a6d15b920796ec044e3a70e728e4b1ec06008e8da" [label=""];
  "sha256:e1309274686f5948ec31796a6d15b920796ec044e3a70e728e4b1ec06008e8da" -> "sha256:d6512e20d0eb0a864c050be64bebda4a8ab1a1c4a6d5ed9b85d775e34050dbb1" [label=""];
  "sha256:d6512e20d0eb0a864c050be64bebda4a8ab1a1c4a6d5ed9b85d775e34050dbb1" -> "sha256:fb757bd5779e4ab823d01922ab17871e697e6bdc6e78692e1eb63010d0f8b2c8" [label=""];
  "sha256:fb757bd5779e4ab823d01922ab17871e697e6bdc6e78692e1eb63010d0f8b2c8" -> "sha256:9efde6f8ab97b2e39f25d0adf16fa07d31ef121fef00bdad02f3fd7a67451949" [label=""];
  "sha256:9efde6f8ab97b2e39f25d0adf16fa07d31ef121fef00bdad02f3fd7a67451949" -> "sha256:2091bd13dde3487a8ec27d78971ad4cbd91286b174aa184c817c50991323247c" [label=""];
  "sha256:2091bd13dde3487a8ec27d78971ad4cbd91286b174aa184c817c50991323247c" -> "sha256:3908333a23d62036434ac31a75b3f7edadc16dc095307770b456850a05d2093b" [label=""];
  "sha256:3908333a23d62036434ac31a75b3f7edadc16dc095307770b456850a05d2093b" -> "sha256:0fa02c6550ffdcc7815f36ae56275ab762d5086b3f4c1fe347b25cf54ab26e85" [label=""];
  "sha256:0fa02c6550ffdcc7815f36ae56275ab762d5086b3f4c1fe347b25cf54ab26e85" -> "sha256:b39885629fe7b7c93de2b0137bda79278d9c7d17abaa66f703792ae20030f39b" [label=""];
}

