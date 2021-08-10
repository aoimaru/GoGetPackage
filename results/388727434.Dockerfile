[app/sources/388727434.Dockerfile]
digraph {
  "sha256:5249164185d8e2a94c4809a05f9a0516c86c7a26fc206e870d1ce0c7bc4ca14b" [label="docker-image://docker.io/gogs/gogs:latest" shape="ellipse"];
  "sha256:91dc44b8e17081588db1d59411691f28338549d050374565dcd1d62e1d74c6f5" [label="local://context" shape="ellipse"];
  "sha256:09f1618b3d7e6f16b5ef4d3eda4ef4e62e1ba7259a7bc0b77014442a0bef9f75" [label="copy{src=/data, dest=/data}" shape="note"];
  "sha256:ef93b7c7ba79022ae8590c7ae216457b1f345f6009207d65484a4ddddd73fe8e" [label="sha256:ef93b7c7ba79022ae8590c7ae216457b1f345f6009207d65484a4ddddd73fe8e" shape="plaintext"];
  "sha256:5249164185d8e2a94c4809a05f9a0516c86c7a26fc206e870d1ce0c7bc4ca14b" -> "sha256:09f1618b3d7e6f16b5ef4d3eda4ef4e62e1ba7259a7bc0b77014442a0bef9f75" [label=""];
  "sha256:91dc44b8e17081588db1d59411691f28338549d050374565dcd1d62e1d74c6f5" -> "sha256:09f1618b3d7e6f16b5ef4d3eda4ef4e62e1ba7259a7bc0b77014442a0bef9f75" [label=""];
  "sha256:09f1618b3d7e6f16b5ef4d3eda4ef4e62e1ba7259a7bc0b77014442a0bef9f75" -> "sha256:ef93b7c7ba79022ae8590c7ae216457b1f345f6009207d65484a4ddddd73fe8e" [label=""];
}

