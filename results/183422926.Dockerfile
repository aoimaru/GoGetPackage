[app/sources/183422926.Dockerfile]
digraph {
  "sha256:895c086dec7c9024d139de1c21bf440aeac3bc315ec1a83d4d30e5d1714063ff" [label="local://context" shape="ellipse"];
  "sha256:3cd81bd6c19ae1dbaa95656c1598528efbcf9f5e39267f26eb6fdb9d02f5717d" [label="copy{src=/rootfs.tar, dest=/}" shape="note"];
  "sha256:21379659726fa7364a6f130b59a858d4704210874282ba59e882bd77fc2d40ed" [label="sha256:21379659726fa7364a6f130b59a858d4704210874282ba59e882bd77fc2d40ed" shape="plaintext"];
  "sha256:895c086dec7c9024d139de1c21bf440aeac3bc315ec1a83d4d30e5d1714063ff" -> "sha256:3cd81bd6c19ae1dbaa95656c1598528efbcf9f5e39267f26eb6fdb9d02f5717d" [label=""];
  "sha256:3cd81bd6c19ae1dbaa95656c1598528efbcf9f5e39267f26eb6fdb9d02f5717d" -> "sha256:21379659726fa7364a6f130b59a858d4704210874282ba59e882bd77fc2d40ed" [label=""];
}

