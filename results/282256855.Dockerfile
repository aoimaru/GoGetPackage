[app/sources/282256855.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:30573e980462418eab340413f679435739dcf28b405b190a6fe7d00983b7209b" [label="/bin/sh -c apt-get update &&   apt-get install -y software-properties-common &&   add-apt-repository -y ppa:webupd8team/java &&   (echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections) &&   apt-get update &&   apt-get install -y oracle-java8-installer &&   apt-get clean &&   rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:59db75805a32568f713a6fb1f34ef4df28a8853be2fa10d3c40175bdfd184b44" [label="/bin/sh -c dpkg --add-architecture i386 && apt-get update && apt-get install -y --force-yes expect git wget libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5 lib32z1 python curl libqt5widgets5 && apt-get clean && rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:3de00c6f88b674310409483d9d91ac943e48f29110b23f344699556f998b230e" [label="local://context" shape="ellipse"];
  "sha256:c889dc03c231cb5b6b0874f0d8ce0982fbfbbf37746bfb4794259c1fb5579504" [label="copy{src=/tools, dest=/opt/tools}" shape="note"];
  "sha256:3da9379587938a92b02423c3890c35ab51a347a888a3370cdc0d768a005f5fc0" [label="/bin/sh -c cd /opt && wget --output-document=android-sdk.tgz --quiet http://dl.google.com/android/android-sdk_r24.3.3-linux.tgz &&   tar xzf android-sdk.tgz &&   rm -f android-sdk.tgz &&   chown -R root.root android-sdk-linux &&   /opt/tools/android-accept-licenses.sh \"android-sdk-linux/tools/android update sdk --all --no-ui --filter platform-tools,tools\" &&   /opt/tools/android-accept-licenses.sh \"android-sdk-linux/tools/android update sdk --all --no-ui --filter platform-tools,tools,build-tools-21.0.0,build-tools-21.0.1,build-tools-21.0.2,build-tools-21.1,build-tools-21.1.1,build-tools-21.1.2,build-tools-22.0.0,build-tools-22.0.1,build-tools-23.0.0,build-tools-23.0.3,android-21,android-22,android-23,android-24,addon-google_apis_x86-google-21,extra-android-support,extra-android-m2repository,extra-google-m2repository,extra-google-google_play_services,sys-img-armeabi-v7a-android-24\"" shape="box"];
  "sha256:7ee1e63acdff32a504dcb921043018f82684902a605caaf7f84b9707b7da1379" [label="/bin/sh -c which adb" shape="box"];
  "sha256:798a3fb4bb6cf365e44289537d9ffc8a18048017554e1136500cd996fced642c" [label="/bin/sh -c which android" shape="box"];
  "sha256:8137ea5c98c02a3295fcae48cd5148f009ad9a6913899b9d7dbf1117e1166740" [label="/bin/sh -c echo \"no\" | android create avd                 --force                 --device \"Nexus 5\"                 --name test                 --target android-24                 --abi armeabi-v7a                 --skin WVGA800                 --sdcard 512M" shape="box"];
  "sha256:dd9b3e23425dd9b7ff5c6fab8b12e2205c938e46480baede1e311434c715f280" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:1d3d22e49e40bb61f40524cf6fd07a63b3348a699ee7b91e3916db12d3098acd" [label="/bin/sh -c mkdir -p /opt/workspace" shape="box"];
  "sha256:34d6da721d3920014867a9520563fe1b033d0e497e36150c034a3d075149e994" [label="mkdir{path=/opt/workspace}" shape="note"];
  "sha256:cd3744757fe0717f2872c5d02d65ab4ac7e072544609d7072ac11d88497aad39" [label="sha256:cd3744757fe0717f2872c5d02d65ab4ac7e072544609d7072ac11d88497aad39" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:30573e980462418eab340413f679435739dcf28b405b190a6fe7d00983b7209b" [label=""];
  "sha256:30573e980462418eab340413f679435739dcf28b405b190a6fe7d00983b7209b" -> "sha256:59db75805a32568f713a6fb1f34ef4df28a8853be2fa10d3c40175bdfd184b44" [label=""];
  "sha256:59db75805a32568f713a6fb1f34ef4df28a8853be2fa10d3c40175bdfd184b44" -> "sha256:c889dc03c231cb5b6b0874f0d8ce0982fbfbbf37746bfb4794259c1fb5579504" [label=""];
  "sha256:3de00c6f88b674310409483d9d91ac943e48f29110b23f344699556f998b230e" -> "sha256:c889dc03c231cb5b6b0874f0d8ce0982fbfbbf37746bfb4794259c1fb5579504" [label=""];
  "sha256:c889dc03c231cb5b6b0874f0d8ce0982fbfbbf37746bfb4794259c1fb5579504" -> "sha256:3da9379587938a92b02423c3890c35ab51a347a888a3370cdc0d768a005f5fc0" [label=""];
  "sha256:3da9379587938a92b02423c3890c35ab51a347a888a3370cdc0d768a005f5fc0" -> "sha256:7ee1e63acdff32a504dcb921043018f82684902a605caaf7f84b9707b7da1379" [label=""];
  "sha256:7ee1e63acdff32a504dcb921043018f82684902a605caaf7f84b9707b7da1379" -> "sha256:798a3fb4bb6cf365e44289537d9ffc8a18048017554e1136500cd996fced642c" [label=""];
  "sha256:798a3fb4bb6cf365e44289537d9ffc8a18048017554e1136500cd996fced642c" -> "sha256:8137ea5c98c02a3295fcae48cd5148f009ad9a6913899b9d7dbf1117e1166740" [label=""];
  "sha256:8137ea5c98c02a3295fcae48cd5148f009ad9a6913899b9d7dbf1117e1166740" -> "sha256:dd9b3e23425dd9b7ff5c6fab8b12e2205c938e46480baede1e311434c715f280" [label=""];
  "sha256:dd9b3e23425dd9b7ff5c6fab8b12e2205c938e46480baede1e311434c715f280" -> "sha256:1d3d22e49e40bb61f40524cf6fd07a63b3348a699ee7b91e3916db12d3098acd" [label=""];
  "sha256:1d3d22e49e40bb61f40524cf6fd07a63b3348a699ee7b91e3916db12d3098acd" -> "sha256:34d6da721d3920014867a9520563fe1b033d0e497e36150c034a3d075149e994" [label=""];
  "sha256:34d6da721d3920014867a9520563fe1b033d0e497e36150c034a3d075149e994" -> "sha256:cd3744757fe0717f2872c5d02d65ab4ac7e072544609d7072ac11d88497aad39" [label=""];
}

