[app/sources/270916272.Dockerfile]
digraph {
  "sha256:3696913b3067efdf10dd59e4a23ef716e5607ff767c42663ce46a5baa5dcf52a" [label="local://context" shape="ellipse"];
  "sha256:8b64fe1054753c677cac1e52e6f636a8454c8fadb9d1108c2ee08ecde3cd3fe5" [label="docker-image://docker.io/bestwu/wine:i386" shape="ellipse"];
  "sha256:e6b2c3308024cf27cb2f29cc27e36ae4a9187f5f3a6b2b0d8a3750f0fb3ed316" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends deepin.com.qq.office dbus-x11 &&     apt-get -y autoremove --purge && apt-get autoclean -y && apt-get clean -y &&     find /var/lib/apt/lists -type f -delete &&     find /var/cache -type f -delete &&     find /var/log -type f -delete &&     find /usr/share/doc -type f -delete &&     find /usr/share/man -type f -delete" shape="box"];
  "sha256:872a485b3f7ddc361ba4d44d121bfcccd4a7ad701742a583f5b92c8b95542e9a" [label="/bin/sh -c groupadd -o -g $GID qq &&     groupmod -o -g $AUDIO_GID audio &&     groupmod -o -g $VIDEO_GID video &&     useradd -d \"/home/qq\" -m -o -u $UID -g qq -G audio,video qq &&     mkdir /TencentFiles &&     chown -R qq:qq /TencentFiles &&     ln -s \"/TencentFiles\" \"/home/qq/Tencent Files\" &&     sed -i 's/TIM.exe\" &/TIM.exe\"/g' \"/opt/deepinwine/tools/run.sh\"" shape="box"];
  "sha256:2b166ed9af81a900bb6e836b16399f8a88fa8b431c592a59a7bf67367c25ffe3" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:e9099d953b1e89f3307a0f7729fed3bc1685692428777f9a0ed5bd8d2db1aab8" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:9b899c4dec7cf44a8718ed73897ddb5bb2577a4fc882233953c6adea5d51ec0e" [label="sha256:9b899c4dec7cf44a8718ed73897ddb5bb2577a4fc882233953c6adea5d51ec0e" shape="plaintext"];
  "sha256:8b64fe1054753c677cac1e52e6f636a8454c8fadb9d1108c2ee08ecde3cd3fe5" -> "sha256:e6b2c3308024cf27cb2f29cc27e36ae4a9187f5f3a6b2b0d8a3750f0fb3ed316" [label=""];
  "sha256:e6b2c3308024cf27cb2f29cc27e36ae4a9187f5f3a6b2b0d8a3750f0fb3ed316" -> "sha256:872a485b3f7ddc361ba4d44d121bfcccd4a7ad701742a583f5b92c8b95542e9a" [label=""];
  "sha256:872a485b3f7ddc361ba4d44d121bfcccd4a7ad701742a583f5b92c8b95542e9a" -> "sha256:2b166ed9af81a900bb6e836b16399f8a88fa8b431c592a59a7bf67367c25ffe3" [label=""];
  "sha256:3696913b3067efdf10dd59e4a23ef716e5607ff767c42663ce46a5baa5dcf52a" -> "sha256:2b166ed9af81a900bb6e836b16399f8a88fa8b431c592a59a7bf67367c25ffe3" [label=""];
  "sha256:2b166ed9af81a900bb6e836b16399f8a88fa8b431c592a59a7bf67367c25ffe3" -> "sha256:e9099d953b1e89f3307a0f7729fed3bc1685692428777f9a0ed5bd8d2db1aab8" [label=""];
  "sha256:e9099d953b1e89f3307a0f7729fed3bc1685692428777f9a0ed5bd8d2db1aab8" -> "sha256:9b899c4dec7cf44a8718ed73897ddb5bb2577a4fc882233953c6adea5d51ec0e" [label=""];
}

