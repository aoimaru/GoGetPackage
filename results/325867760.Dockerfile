[app/sources/325867760.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:72d98223b65bc68cd18ecff4d9dfe38712f6fc422f01064255c18fdc03e045f9" [label="/bin/sh -c sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list &&     apt update &&     apt install -y openssh-client openssh-server &&     apt clean" shape="box"];
  "sha256:8801fa46d73d9f9b82981e3bc2ece3f002e2cd7d7c80d6f46a015da1d77ebe2d" [label="sha256:8801fa46d73d9f9b82981e3bc2ece3f002e2cd7d7c80d6f46a015da1d77ebe2d" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:72d98223b65bc68cd18ecff4d9dfe38712f6fc422f01064255c18fdc03e045f9" [label=""];
  "sha256:72d98223b65bc68cd18ecff4d9dfe38712f6fc422f01064255c18fdc03e045f9" -> "sha256:8801fa46d73d9f9b82981e3bc2ece3f002e2cd7d7c80d6f46a015da1d77ebe2d" [label=""];
}

