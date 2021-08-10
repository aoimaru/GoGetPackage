[app/sources/430567485.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f22516864b94f9344028c195676b3767afe5ca96c42c12e9bdff4ce9280df7fb" [label="mkdir{path=/opt}" shape="note"];
  "sha256:be5f2f4e69be199461be49fc84690343bde99f97bcc0fd846ff8fd60132d66f5" [label="local://context" shape="ellipse"];
  "sha256:da13d470493b5f47928675ad970b4e5f323575c9cb7b752ef040702d6bdee444" [label="copy{src=/fastdroid-vnc, dest=/build/}" shape="note"];
  "sha256:c59c2590ab616a937a602d296a2f8b98c1a5f4cc3d79111490738d673c0e1252" [label="copy{src=/install-fastdroid-vnc.sh, dest=/build/}" shape="note"];
  "sha256:7c38ecef29bc7bc461ecfde71897b3cdc91db345c8dde0701460f9c9c15dce51" [label="copy{src=/run.sh, dest=/build/}" shape="note"];
  "sha256:7a5de091f585835ec0d2a355f9163c40ed453a6140294d86d24ece1a1277a146" [label="copy{src=/droidbox.py.patch, dest=/build/}" shape="note"];
  "sha256:1b45d86c4a0b77de8059e70605e2e9d73cec353506fefae131c4fbb592cc23b1" [label="/bin/sh -c dpkg --add-architecture i386 &&     apt-get update &&     apt-get -y dist-upgrade &&     apt-get install -y --no-install-recommends python-tk python-matplotlib openjdk-7-jre-headless apt-utils expect curl wget  git openssh-server libc6:i386 libncurses5:i386 libstdc++6:i386 bsdmainutils patch &&     curl -L https://raw.github.com/aikinci/android-sdk-installer/master/android-sdk-installer |sed 's/android-sdk-license-5be876d5/android-sdk-license-c81a61d9/'|bash /dev/stdin --dir=/opt --install=platform-tools,,android-16 &&     curl -L https://raw.github.com/aikinci/android-sdk-installer/master/android-sdk-installer |sed 's/wget/#wget/' |sed 's/tar/#tar/' | bash /dev/stdin --dir=/opt --install=system-image,android-16 &&     android create avd -n droidbox -t 1 -d 7 &&     rm -fv /opt/android-sdk_$sv-linux.tgz /opt/android-sdk-linux/system-images/android-16/default/armeabi-v7a/ramdisk.img /opt/android-sdk-linux/system-images/android-16/default/armeabi-v7a/system.img &&     curl -LO https://github.com/pjlantz/droidbox/releases/download/v4.1.1/DroidBox411RC.tar.gz &&     tar xfz DroidBox411RC.tar.gz &&     rm -f DroidBox411RC.tar.gz &&     sed  's/PermitRootLogin without-password/PermitRootLogin yes/g' /etc/ssh/sshd_config -i &&     echo \"root:$ROOTPASSWORD\" | chpasswd &&     /build/install-fastdroid-vnc.sh &&     cd /opt/DroidBox_4.1.1/scripts && patch < /build/droidbox.py.patch &&     rm -rfv /var/lib/apt/lists/* &&     apt-get -y remove \t    curl \t    git \t    patch \t    wget     \texpect &&     apt-get clean && apt-get autoclean &&     apt-get -y autoremove &&     dpkg -l |grep ^rc |awk '{print $2}' |xargs dpkg --purge" shape="box"];
  "sha256:48a6c9013868d7c773802fdbb1b1f70310355aff93e17fd0850eb4bd2c0b8454" [label="sha256:48a6c9013868d7c773802fdbb1b1f70310355aff93e17fd0850eb4bd2c0b8454" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f22516864b94f9344028c195676b3767afe5ca96c42c12e9bdff4ce9280df7fb" [label=""];
  "sha256:f22516864b94f9344028c195676b3767afe5ca96c42c12e9bdff4ce9280df7fb" -> "sha256:da13d470493b5f47928675ad970b4e5f323575c9cb7b752ef040702d6bdee444" [label=""];
  "sha256:be5f2f4e69be199461be49fc84690343bde99f97bcc0fd846ff8fd60132d66f5" -> "sha256:da13d470493b5f47928675ad970b4e5f323575c9cb7b752ef040702d6bdee444" [label=""];
  "sha256:da13d470493b5f47928675ad970b4e5f323575c9cb7b752ef040702d6bdee444" -> "sha256:c59c2590ab616a937a602d296a2f8b98c1a5f4cc3d79111490738d673c0e1252" [label=""];
  "sha256:be5f2f4e69be199461be49fc84690343bde99f97bcc0fd846ff8fd60132d66f5" -> "sha256:c59c2590ab616a937a602d296a2f8b98c1a5f4cc3d79111490738d673c0e1252" [label=""];
  "sha256:c59c2590ab616a937a602d296a2f8b98c1a5f4cc3d79111490738d673c0e1252" -> "sha256:7c38ecef29bc7bc461ecfde71897b3cdc91db345c8dde0701460f9c9c15dce51" [label=""];
  "sha256:be5f2f4e69be199461be49fc84690343bde99f97bcc0fd846ff8fd60132d66f5" -> "sha256:7c38ecef29bc7bc461ecfde71897b3cdc91db345c8dde0701460f9c9c15dce51" [label=""];
  "sha256:7c38ecef29bc7bc461ecfde71897b3cdc91db345c8dde0701460f9c9c15dce51" -> "sha256:7a5de091f585835ec0d2a355f9163c40ed453a6140294d86d24ece1a1277a146" [label=""];
  "sha256:be5f2f4e69be199461be49fc84690343bde99f97bcc0fd846ff8fd60132d66f5" -> "sha256:7a5de091f585835ec0d2a355f9163c40ed453a6140294d86d24ece1a1277a146" [label=""];
  "sha256:7a5de091f585835ec0d2a355f9163c40ed453a6140294d86d24ece1a1277a146" -> "sha256:1b45d86c4a0b77de8059e70605e2e9d73cec353506fefae131c4fbb592cc23b1" [label=""];
  "sha256:1b45d86c4a0b77de8059e70605e2e9d73cec353506fefae131c4fbb592cc23b1" -> "sha256:48a6c9013868d7c773802fdbb1b1f70310355aff93e17fd0850eb4bd2c0b8454" [label=""];
}

