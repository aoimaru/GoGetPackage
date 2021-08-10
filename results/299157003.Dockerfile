[app/sources/299157003.Dockerfile]
digraph {
  "sha256:36e68f175c295f2867920c5d6de0e6ec335fed8f59e80b21d0ca41a08588e73a" [label="local://context" shape="ellipse"];
  "sha256:47f5586982edbe3fd76c7c41f302ba3592d493fdf6d3867613c2bd1f4f170b91" [label="docker-image://docker.io/library/debian:buster-slim@sha256:c8152821b158dd171b4acf92afb0a58fc2faa179a7e0af8ace358fbe1668e99d" shape="ellipse"];
  "sha256:839f6f6e7bebe05657c20874f96a299ee21299c4cd277421a1b5d54fbdcb22fd" [label="/bin/sh -c apt-get update && apt-get install -y     bzip2     curl     gdisk     gnupg2     kmod     pciutils     awscli     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3d8a8b57d9e41fbc0c9f0cd3b07d934490a973f9b35c82cb9e7504d072dd358e" [label="copy{src=/modulus, dest=/opt/modulus/modulus}" shape="note"];
  "sha256:198384df74dc072c87875b07286de0d1a68eac6e419d5d552e977a13f3c04900" [label="copy{src=/nvidia/compile, dest=/opt/modulus/nvidia/compile}" shape="note"];
  "sha256:be21e1a77614c88fd0051c16d09e81cc130789cfe2e76e4eafceec7074a0c1e4" [label="copy{src=/nvidia/install, dest=/opt/modulus/nvidia/install}" shape="note"];
  "sha256:0728af47aeaa29dc8679b952eab37a070760740e1cfce7eb4740910fe59b9ad0" [label="copy{src=/wireguard/compile, dest=/opt/modulus/wireguard/compile}" shape="note"];
  "sha256:23713b286844449f1ab440f180d87916745a788dd0d18eda7ccb7dcb36381ccb" [label="copy{src=/wireguard/install, dest=/opt/modulus/wireguard/install}" shape="note"];
  "sha256:ec72628820fe0561efb99deed9dcae3d29123162856df1e24a8b82d9441fe500" [label="sha256:ec72628820fe0561efb99deed9dcae3d29123162856df1e24a8b82d9441fe500" shape="plaintext"];
  "sha256:47f5586982edbe3fd76c7c41f302ba3592d493fdf6d3867613c2bd1f4f170b91" -> "sha256:839f6f6e7bebe05657c20874f96a299ee21299c4cd277421a1b5d54fbdcb22fd" [label=""];
  "sha256:839f6f6e7bebe05657c20874f96a299ee21299c4cd277421a1b5d54fbdcb22fd" -> "sha256:3d8a8b57d9e41fbc0c9f0cd3b07d934490a973f9b35c82cb9e7504d072dd358e" [label=""];
  "sha256:36e68f175c295f2867920c5d6de0e6ec335fed8f59e80b21d0ca41a08588e73a" -> "sha256:3d8a8b57d9e41fbc0c9f0cd3b07d934490a973f9b35c82cb9e7504d072dd358e" [label=""];
  "sha256:3d8a8b57d9e41fbc0c9f0cd3b07d934490a973f9b35c82cb9e7504d072dd358e" -> "sha256:198384df74dc072c87875b07286de0d1a68eac6e419d5d552e977a13f3c04900" [label=""];
  "sha256:36e68f175c295f2867920c5d6de0e6ec335fed8f59e80b21d0ca41a08588e73a" -> "sha256:198384df74dc072c87875b07286de0d1a68eac6e419d5d552e977a13f3c04900" [label=""];
  "sha256:198384df74dc072c87875b07286de0d1a68eac6e419d5d552e977a13f3c04900" -> "sha256:be21e1a77614c88fd0051c16d09e81cc130789cfe2e76e4eafceec7074a0c1e4" [label=""];
  "sha256:36e68f175c295f2867920c5d6de0e6ec335fed8f59e80b21d0ca41a08588e73a" -> "sha256:be21e1a77614c88fd0051c16d09e81cc130789cfe2e76e4eafceec7074a0c1e4" [label=""];
  "sha256:be21e1a77614c88fd0051c16d09e81cc130789cfe2e76e4eafceec7074a0c1e4" -> "sha256:0728af47aeaa29dc8679b952eab37a070760740e1cfce7eb4740910fe59b9ad0" [label=""];
  "sha256:36e68f175c295f2867920c5d6de0e6ec335fed8f59e80b21d0ca41a08588e73a" -> "sha256:0728af47aeaa29dc8679b952eab37a070760740e1cfce7eb4740910fe59b9ad0" [label=""];
  "sha256:0728af47aeaa29dc8679b952eab37a070760740e1cfce7eb4740910fe59b9ad0" -> "sha256:23713b286844449f1ab440f180d87916745a788dd0d18eda7ccb7dcb36381ccb" [label=""];
  "sha256:36e68f175c295f2867920c5d6de0e6ec335fed8f59e80b21d0ca41a08588e73a" -> "sha256:23713b286844449f1ab440f180d87916745a788dd0d18eda7ccb7dcb36381ccb" [label=""];
  "sha256:23713b286844449f1ab440f180d87916745a788dd0d18eda7ccb7dcb36381ccb" -> "sha256:ec72628820fe0561efb99deed9dcae3d29123162856df1e24a8b82d9441fe500" [label=""];
}

