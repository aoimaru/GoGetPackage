[app/sources/202206569.Dockerfile]
digraph {
  "sha256:861e7dc6d78243f44f49800b543fdd4a8e34209a173c30c9ffb7887817959085" [label="local://context" shape="ellipse"];
  "sha256:700a04192042b852f60560b4208bccda2398b4f60b659f0eccefc83f979dd92f" [label="docker-image://docker.io/yongjhih/android:jdk8-all" shape="ellipse"];
  "sha256:e32d3a89aece33bd936c510909e758828e63ed498c2fb1ff00d53784ecdb3851" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6 &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0bdad0f452ed8a34cd8249a7eeb5504bbe29f5ef3c84c283a7e27313e1f5cfe8" [label="https://dl.google.com/dl/android/studio/ide-zips/1.5.1.0/android-studio-ide-141.2456560-linux.zip" shape="ellipse"];
  "sha256:4e194c5886b74205c5860604a23f4f40f9dd0e0374d539e67cf480a0917f2be2" [label="copy{src=/android-studio-ide-141.2456560-linux.zip, dest=/tmp/tmp.zip}" shape="note"];
  "sha256:7bb5c3046734326965dc24561f3fd11b3d2c1d63f01027c737abef496056d607" [label="/bin/sh -c unzip /tmp/tmp.zip -d /opt && rm /tmp/tmp.zip" shape="box"];
  "sha256:92f0e7f260523d77576eb3b8411303da284355daf92c9bf048f66778a4546253" [label="/bin/sh -c useradd -m -u $UID $USER &&     echo \"$USER ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers &&     chmod -R a+w ${ANDROID_HOME}" shape="box"];
  "sha256:38ad920518dd2a97734ac6b050a883f644b5b3a31a895c617c708aea02a41a35" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:58d0918702e124605eae4503937dea37ec02822d18aaf3829a1ad75ef159e60b" [label="sha256:58d0918702e124605eae4503937dea37ec02822d18aaf3829a1ad75ef159e60b" shape="plaintext"];
  "sha256:700a04192042b852f60560b4208bccda2398b4f60b659f0eccefc83f979dd92f" -> "sha256:e32d3a89aece33bd936c510909e758828e63ed498c2fb1ff00d53784ecdb3851" [label=""];
  "sha256:e32d3a89aece33bd936c510909e758828e63ed498c2fb1ff00d53784ecdb3851" -> "sha256:4e194c5886b74205c5860604a23f4f40f9dd0e0374d539e67cf480a0917f2be2" [label=""];
  "sha256:0bdad0f452ed8a34cd8249a7eeb5504bbe29f5ef3c84c283a7e27313e1f5cfe8" -> "sha256:4e194c5886b74205c5860604a23f4f40f9dd0e0374d539e67cf480a0917f2be2" [label=""];
  "sha256:4e194c5886b74205c5860604a23f4f40f9dd0e0374d539e67cf480a0917f2be2" -> "sha256:7bb5c3046734326965dc24561f3fd11b3d2c1d63f01027c737abef496056d607" [label=""];
  "sha256:7bb5c3046734326965dc24561f3fd11b3d2c1d63f01027c737abef496056d607" -> "sha256:92f0e7f260523d77576eb3b8411303da284355daf92c9bf048f66778a4546253" [label=""];
  "sha256:92f0e7f260523d77576eb3b8411303da284355daf92c9bf048f66778a4546253" -> "sha256:38ad920518dd2a97734ac6b050a883f644b5b3a31a895c617c708aea02a41a35" [label=""];
  "sha256:861e7dc6d78243f44f49800b543fdd4a8e34209a173c30c9ffb7887817959085" -> "sha256:38ad920518dd2a97734ac6b050a883f644b5b3a31a895c617c708aea02a41a35" [label=""];
  "sha256:38ad920518dd2a97734ac6b050a883f644b5b3a31a895c617c708aea02a41a35" -> "sha256:58d0918702e124605eae4503937dea37ec02822d18aaf3829a1ad75ef159e60b" [label=""];
}

