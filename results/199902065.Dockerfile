[app/sources/199902065.Dockerfile]
digraph {
  "sha256:adacd3f27b05e0c3aa6a23e8243ab9ff6a1af455ee64bf1baf71079a3bb31332" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:a29e6fb35c5fdc5504ce0388aacd83c4939d80d5e06e91e2f42e40704abd1c21" [label="copy{src=/scripts, dest=/scripts}" shape="note"];
  "sha256:7f25be1f12e3bbf538a5c79a3c56819846064d98911817427a2d091ba264b13e" [label="/bin/sh -c /scripts/install_main.sh" shape="box"];
  "sha256:65ff6ba001c11901eed641fad80aef96740acc4839f172a77573b969e875af05" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:9d4974447a0222a2db7aff43a77edf4e55a8b1d10084cd4c596f0ce80cb3b892" [label="sha256:9d4974447a0222a2db7aff43a77edf4e55a8b1d10084cd4c596f0ce80cb3b892" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:a29e6fb35c5fdc5504ce0388aacd83c4939d80d5e06e91e2f42e40704abd1c21" [label=""];
  "sha256:adacd3f27b05e0c3aa6a23e8243ab9ff6a1af455ee64bf1baf71079a3bb31332" -> "sha256:a29e6fb35c5fdc5504ce0388aacd83c4939d80d5e06e91e2f42e40704abd1c21" [label=""];
  "sha256:a29e6fb35c5fdc5504ce0388aacd83c4939d80d5e06e91e2f42e40704abd1c21" -> "sha256:7f25be1f12e3bbf538a5c79a3c56819846064d98911817427a2d091ba264b13e" [label=""];
  "sha256:7f25be1f12e3bbf538a5c79a3c56819846064d98911817427a2d091ba264b13e" -> "sha256:65ff6ba001c11901eed641fad80aef96740acc4839f172a77573b969e875af05" [label=""];
  "sha256:adacd3f27b05e0c3aa6a23e8243ab9ff6a1af455ee64bf1baf71079a3bb31332" -> "sha256:65ff6ba001c11901eed641fad80aef96740acc4839f172a77573b969e875af05" [label=""];
  "sha256:65ff6ba001c11901eed641fad80aef96740acc4839f172a77573b969e875af05" -> "sha256:9d4974447a0222a2db7aff43a77edf4e55a8b1d10084cd4c596f0ce80cb3b892" [label=""];
}

