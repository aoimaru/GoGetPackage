[app/sources/359250861.Dockerfile]
digraph {
  "sha256:c0508a8b88e5f7003e2c577607f7efaa57a34c6a0bf929579139a3c000802132" [label="docker-image://docker.io/stimela/casa:1.0.1" shape="ellipse"];
  "sha256:35fe18a5be48c8adbbf43bb975af5a16ea6bf07364fddab761f168f171a561d2" [label="local://context" shape="ellipse"];
  "sha256:d2f8495e62cf5f73f0059bfb072a0533b2b0f94d5e7f9b26391d0705a9d49f6b" [label="copy{src=/src, dest=/scratch/code}" shape="note"];
  "sha256:abb35f6dce93a3a35db50cbfedf8570500a2cef02c0639a3a2ae0eeab6b2294f" [label="sha256:abb35f6dce93a3a35db50cbfedf8570500a2cef02c0639a3a2ae0eeab6b2294f" shape="plaintext"];
  "sha256:c0508a8b88e5f7003e2c577607f7efaa57a34c6a0bf929579139a3c000802132" -> "sha256:d2f8495e62cf5f73f0059bfb072a0533b2b0f94d5e7f9b26391d0705a9d49f6b" [label=""];
  "sha256:35fe18a5be48c8adbbf43bb975af5a16ea6bf07364fddab761f168f171a561d2" -> "sha256:d2f8495e62cf5f73f0059bfb072a0533b2b0f94d5e7f9b26391d0705a9d49f6b" [label=""];
  "sha256:d2f8495e62cf5f73f0059bfb072a0533b2b0f94d5e7f9b26391d0705a9d49f6b" -> "sha256:abb35f6dce93a3a35db50cbfedf8570500a2cef02c0639a3a2ae0eeab6b2294f" [label=""];
}

