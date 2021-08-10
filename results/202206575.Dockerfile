[app/sources/202206575.Dockerfile]
digraph {
  "sha256:a7ba72298d4abc76a2c63ecdd9a5195e21bab2ecbdd97124e14c72c2f161fcf2" [label="https://dl.google.com/dl/android/studio/ide-zips/2.3.3.0/android-studio-ide-162.4069837-linux.zip" shape="ellipse"];
  "sha256:700a04192042b852f60560b4208bccda2398b4f60b659f0eccefc83f979dd92f" [label="docker-image://docker.io/yongjhih/android:jdk8-all" shape="ellipse"];
  "sha256:47708bd5afcd0abe0340f755f3af2a6d3d4ff942bc94d40a6baa1f6d9b00583b" [label="/bin/sh -c dpkg --add-architecture i386 &&     apt-get update && apt-get install -y --no-install-recommends sudo lib32z1 lib32ncurses5 lib32stdc++6 lib32z1 lib32ncurses5 lib32stdc++6 &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:85a3b04205bf55e927b708d07825d003c3e35a5841b9114640638dd329844f5a" [label="copy{src=/android-studio-ide-162.4069837-linux.zip, dest=/tmp/tmp.zip}" shape="note"];
  "sha256:423a1b4a59c752242a400090d3de39b5825446a25b331f57aa4a608fcf1a00f2" [label="/bin/sh -c unzip /tmp/tmp.zip -d /opt && rm /tmp/tmp.zip" shape="box"];
  "sha256:6877471011daecfcd0b0e18cee3637507a1ff6f7a4068242793fb6372f8bb261" [label="/bin/sh -c useradd -m -u $UID $USER &&     echo \"$USER ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers &&     chmod -R a+w ${ANDROID_HOME}" shape="box"];
  "sha256:7511e7753e1b343a584b0f043151575c2903cc797a6d2643c3a19dc1bec7f468" [label="local://context" shape="ellipse"];
  "sha256:0fc2f3db0ff149ef4cb56afa726cd11c7393f0e53ba0a0048091392e4725b8d7" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:aabf24fb1591b9e1690578d3a32a827b1acd8048fb01683c6e4960da2f877c4a" [label="sha256:aabf24fb1591b9e1690578d3a32a827b1acd8048fb01683c6e4960da2f877c4a" shape="plaintext"];
  "sha256:700a04192042b852f60560b4208bccda2398b4f60b659f0eccefc83f979dd92f" -> "sha256:47708bd5afcd0abe0340f755f3af2a6d3d4ff942bc94d40a6baa1f6d9b00583b" [label=""];
  "sha256:47708bd5afcd0abe0340f755f3af2a6d3d4ff942bc94d40a6baa1f6d9b00583b" -> "sha256:85a3b04205bf55e927b708d07825d003c3e35a5841b9114640638dd329844f5a" [label=""];
  "sha256:a7ba72298d4abc76a2c63ecdd9a5195e21bab2ecbdd97124e14c72c2f161fcf2" -> "sha256:85a3b04205bf55e927b708d07825d003c3e35a5841b9114640638dd329844f5a" [label=""];
  "sha256:85a3b04205bf55e927b708d07825d003c3e35a5841b9114640638dd329844f5a" -> "sha256:423a1b4a59c752242a400090d3de39b5825446a25b331f57aa4a608fcf1a00f2" [label=""];
  "sha256:423a1b4a59c752242a400090d3de39b5825446a25b331f57aa4a608fcf1a00f2" -> "sha256:6877471011daecfcd0b0e18cee3637507a1ff6f7a4068242793fb6372f8bb261" [label=""];
  "sha256:6877471011daecfcd0b0e18cee3637507a1ff6f7a4068242793fb6372f8bb261" -> "sha256:0fc2f3db0ff149ef4cb56afa726cd11c7393f0e53ba0a0048091392e4725b8d7" [label=""];
  "sha256:7511e7753e1b343a584b0f043151575c2903cc797a6d2643c3a19dc1bec7f468" -> "sha256:0fc2f3db0ff149ef4cb56afa726cd11c7393f0e53ba0a0048091392e4725b8d7" [label=""];
  "sha256:0fc2f3db0ff149ef4cb56afa726cd11c7393f0e53ba0a0048091392e4725b8d7" -> "sha256:aabf24fb1591b9e1690578d3a32a827b1acd8048fb01683c6e4960da2f877c4a" [label=""];
}

