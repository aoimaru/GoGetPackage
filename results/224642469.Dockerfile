[app/sources/224642469.Dockerfile]
digraph {
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" [label="docker-image://docker.io/library/ubuntu:18.10" shape="ellipse"];
  "sha256:329312b1b26cc95d1249eb159ad2847b5d9e276a5c2ba1b7556f82ae9392150b" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:0a289a4fe16f2d96518f8e177acb0c62aeaccc1cbb1567539ac877064fa7c1b4" [label="/bin/sh -c apt-get install -y python3 python3-pip git wget zip openjdk-8-jre-headless vim emacs nano curl sshpass ssh usbutils" shape="box"];
  "sha256:96a3ed0e8a1f8229573689b3a5df82e710ae17bb49d95c60f3221bf01af2ef1d" [label="/bin/sh -c pip3 install pandas" shape="box"];
  "sha256:0b398e7d58dcb928e2d4c1f0e2705e26a79771207aaa31fa1b17a2601241d9f5" [label="/bin/sh -c git clone -v https://github.com/ARM-software/devlib.git /tmp/devlib && cd /tmp/devlib && git checkout $DEVLIB_REF && python3 setup.py install && pip3 install .[full]" shape="box"];
  "sha256:83cfd022fe67624f7e60a5838114994c07d9f92824f6d4f88e07f55ccc57e15e" [label="/bin/sh -c git clone -v https://github.com/ARM-software/workload-automation.git /tmp/wa && cd /tmp/wa && git checkout $WA_REF && python3 setup.py install && pip3 install .[all]" shape="box"];
  "sha256:6bc9ba54b7911d9e8c14dbd2bc9ec3e71131effbb5230e539e3447c2a457b619" [label="/bin/sh -c rm -R /tmp/devlib /tmp/wa" shape="box"];
  "sha256:7bd82684be256efacf87c5800a59013be0aae77c534df33d23bd50ed9e55a305" [label="/bin/sh -c useradd -m -G plugdev,dialout wa" shape="box"];
  "sha256:d31c81d1ce30259311b6ab1fc8f58a7b8cd6a96f1b4646b2f40f21327707799d" [label="/bin/sh -c mkdir -p /home/wa/.android" shape="box"];
  "sha256:059175536d44944b26de22d573557617c5563b9ea8258f87cd36144c21409068" [label="/bin/sh -c mkdir -p /home/wa/AndroidSDK && cd /home/wa/AndroidSDK && wget $ANDROID_SDK_URL -O sdk.zip && unzip sdk.zip" shape="box"];
  "sha256:1b4050b6f30101494581801db3065375691445ea5eea9e67f1b0a1a575c7bb2d" [label="/bin/sh -c cd /home/wa/AndroidSDK/tools/bin && yes | ./sdkmanager --licenses && ./sdkmanager platform-tools && ./sdkmanager 'build-tools;27.0.3'" shape="box"];
  "sha256:147a9350bd0726b9497bbdd783902ac50247b4df81e6689446f2f201921e6678" [label="/bin/sh -c echo 'export PATH=/home/wa/AndroidSDK/platform-tools:${PATH}' >> /home/wa/.bashrc" shape="box"];
  "sha256:7a5ad2cfbdffb34bd0e79684c99796dad5e22444418ba9de1edfdc76de98531e" [label="/bin/sh -c echo 'export PATH=/home/wa/AndroidSDK/build-tools:${PATH}' >> /home/wa/.bashrc" shape="box"];
  "sha256:da428e309a737f2a62882776907a1142b0863b84c87b3cb3da584f9552640723" [label="/bin/sh -c echo 'export ANDROID_HOME=/home/wa/AndroidSDK' >> /home/wa/.bashrc" shape="box"];
  "sha256:570ea7aa69ccb66c23ff64309ebf0d47aca0f9a289711964ef7b75353e2e2138" [label="/bin/sh -c /home/wa/AndroidSDK/platform-tools/adb keygen /home/wa/.android/adbkey" shape="box"];
  "sha256:d463766700bd65c6aeac651e1e8d1e311e5ffd19c5ffe61757007f56188495a9" [label="/bin/sh -c wa --version && echo 'remote_assets_url: https://raw.githubusercontent.com/ARM-software/workload-automation-assets/master/dependencies' >> /home/wa/.workload_automation/config.yaml" shape="box"];
  "sha256:25f1540c92e3433e46bdfd93e1d594b16b3856f15bcd8fb4feae3f8461b28a74" [label="sha256:25f1540c92e3433e46bdfd93e1d594b16b3856f15bcd8fb4feae3f8461b28a74" shape="plaintext"];
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" -> "sha256:329312b1b26cc95d1249eb159ad2847b5d9e276a5c2ba1b7556f82ae9392150b" [label=""];
  "sha256:329312b1b26cc95d1249eb159ad2847b5d9e276a5c2ba1b7556f82ae9392150b" -> "sha256:0a289a4fe16f2d96518f8e177acb0c62aeaccc1cbb1567539ac877064fa7c1b4" [label=""];
  "sha256:0a289a4fe16f2d96518f8e177acb0c62aeaccc1cbb1567539ac877064fa7c1b4" -> "sha256:96a3ed0e8a1f8229573689b3a5df82e710ae17bb49d95c60f3221bf01af2ef1d" [label=""];
  "sha256:96a3ed0e8a1f8229573689b3a5df82e710ae17bb49d95c60f3221bf01af2ef1d" -> "sha256:0b398e7d58dcb928e2d4c1f0e2705e26a79771207aaa31fa1b17a2601241d9f5" [label=""];
  "sha256:0b398e7d58dcb928e2d4c1f0e2705e26a79771207aaa31fa1b17a2601241d9f5" -> "sha256:83cfd022fe67624f7e60a5838114994c07d9f92824f6d4f88e07f55ccc57e15e" [label=""];
  "sha256:83cfd022fe67624f7e60a5838114994c07d9f92824f6d4f88e07f55ccc57e15e" -> "sha256:6bc9ba54b7911d9e8c14dbd2bc9ec3e71131effbb5230e539e3447c2a457b619" [label=""];
  "sha256:6bc9ba54b7911d9e8c14dbd2bc9ec3e71131effbb5230e539e3447c2a457b619" -> "sha256:7bd82684be256efacf87c5800a59013be0aae77c534df33d23bd50ed9e55a305" [label=""];
  "sha256:7bd82684be256efacf87c5800a59013be0aae77c534df33d23bd50ed9e55a305" -> "sha256:d31c81d1ce30259311b6ab1fc8f58a7b8cd6a96f1b4646b2f40f21327707799d" [label=""];
  "sha256:d31c81d1ce30259311b6ab1fc8f58a7b8cd6a96f1b4646b2f40f21327707799d" -> "sha256:059175536d44944b26de22d573557617c5563b9ea8258f87cd36144c21409068" [label=""];
  "sha256:059175536d44944b26de22d573557617c5563b9ea8258f87cd36144c21409068" -> "sha256:1b4050b6f30101494581801db3065375691445ea5eea9e67f1b0a1a575c7bb2d" [label=""];
  "sha256:1b4050b6f30101494581801db3065375691445ea5eea9e67f1b0a1a575c7bb2d" -> "sha256:147a9350bd0726b9497bbdd783902ac50247b4df81e6689446f2f201921e6678" [label=""];
  "sha256:147a9350bd0726b9497bbdd783902ac50247b4df81e6689446f2f201921e6678" -> "sha256:7a5ad2cfbdffb34bd0e79684c99796dad5e22444418ba9de1edfdc76de98531e" [label=""];
  "sha256:7a5ad2cfbdffb34bd0e79684c99796dad5e22444418ba9de1edfdc76de98531e" -> "sha256:da428e309a737f2a62882776907a1142b0863b84c87b3cb3da584f9552640723" [label=""];
  "sha256:da428e309a737f2a62882776907a1142b0863b84c87b3cb3da584f9552640723" -> "sha256:570ea7aa69ccb66c23ff64309ebf0d47aca0f9a289711964ef7b75353e2e2138" [label=""];
  "sha256:570ea7aa69ccb66c23ff64309ebf0d47aca0f9a289711964ef7b75353e2e2138" -> "sha256:d463766700bd65c6aeac651e1e8d1e311e5ffd19c5ffe61757007f56188495a9" [label=""];
  "sha256:d463766700bd65c6aeac651e1e8d1e311e5ffd19c5ffe61757007f56188495a9" -> "sha256:25f1540c92e3433e46bdfd93e1d594b16b3856f15bcd8fb4feae3f8461b28a74" [label=""];
}

