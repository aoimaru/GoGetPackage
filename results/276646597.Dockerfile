[app/sources/276646597.Dockerfile]
digraph {
  "sha256:ae3842577d5ad7c2eafa1d018a9f41419947a35798badd6c2db2fcd2f6ed7c8f" [label="local://context" shape="ellipse"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:536e4204cbf3d1318afeec3c73d875636f465fcd6a4d7964d80959699d40d3a8" [label="copy{src=/glusterblock-provisioner, dest=/usr/local/bin/glusterblock-provisioner}" shape="note"];
  "sha256:09e8cd691413e29858abc719390de6001681651e1ca60832edf783d3cccb156b" [label="sha256:09e8cd691413e29858abc719390de6001681651e1ca60832edf783d3cccb156b" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:536e4204cbf3d1318afeec3c73d875636f465fcd6a4d7964d80959699d40d3a8" [label=""];
  "sha256:ae3842577d5ad7c2eafa1d018a9f41419947a35798badd6c2db2fcd2f6ed7c8f" -> "sha256:536e4204cbf3d1318afeec3c73d875636f465fcd6a4d7964d80959699d40d3a8" [label=""];
  "sha256:536e4204cbf3d1318afeec3c73d875636f465fcd6a4d7964d80959699d40d3a8" -> "sha256:09e8cd691413e29858abc719390de6001681651e1ca60832edf783d3cccb156b" [label=""];
}

