[app/sources/364742430.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:e898e9783311e9e203a3c630bfa54e423f693f1e708920b34d9f34663b7be313" [label="/bin/sh -c apt-get update && apt-get install -y         curl         git     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4a14b2f7067b4911c90d5234c242dfec5c1cd022cc21a092d70f6f624239c97b" [label="mkdir{path=/git}" shape="note"];
  "sha256:bfe9560b996a6718099aadd3509e2775ec15b06f6cfb2cb2ff94b98062fda024" [label="/bin/sh -c git config --global advice.detachedHead false" shape="box"];
  "sha256:ab539ce5c831cc15c2e115a3104b5742b55a4371b4839fe08cb984a901906095" [label="/bin/sh -c git clone --branch v4.10 --depth 1 https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux" shape="box"];
  "sha256:cc045c2a676a8b0542d895ae7110fc32c211c145fee8e6c1692c3409c216188e" [label="/bin/sh -c git clone --branch glibc-2.25 --depth 1 git://sourceware.org/git/glibc.git" shape="box"];
  "sha256:9e2c09bbc4cd0e27120fb0e5340826b90f3a7f84b967572db876550196f6bb5a" [label="/bin/sh -c curl -fsSL \"$GOLANG_DOWNLOAD_URL\" -o golang.tar.gz     && echo \"$GOLANG_DOWNLOAD_SHA256  golang.tar.gz\" | sha256sum -c -     && tar -C /usr/local -xzf golang.tar.gz     && rm golang.tar.gz" shape="box"];
  "sha256:a59b44b942015ee022d62ca59e3197ac37cb957389297f94bb9ee63319b11719" [label="/bin/sh -c apt-get update && apt-get install -y         gawk make python         gcc gcc-multilib         gettext  texinfo     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:22ec06feb3c8a18f5654060cb719a73f964096189f6d381b35010e11868a1a80" [label="/bin/sh -c apt-get update && apt-get install -y         qemu         gcc-aarch64-linux-gnu       gcc-arm-linux-gnueabi             gcc-mips-linux-gnu          gcc-mips64-linux-gnuabi64         gcc-mips64el-linux-gnuabi64 gcc-mipsel-linux-gnu              gcc-powerpc64-linux-gnu     gcc-powerpc64le-linux-gnu         gcc-s390x-linux-gnu         gcc-sparc64-linux-gnu         && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6b3eb7a94e8a442cc742f50e89bc4ec7fde583e0eb130ca2d72c6e6a2bad50b4" [label="mkdir{path=/build}" shape="note"];
  "sha256:12f86945ad2de8573368a50d00ce8eb7dabfa72b5263ad30a5c2c87b24bb008c" [label="sha256:12f86945ad2de8573368a50d00ce8eb7dabfa72b5263ad30a5c2c87b24bb008c" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:e898e9783311e9e203a3c630bfa54e423f693f1e708920b34d9f34663b7be313" [label=""];
  "sha256:e898e9783311e9e203a3c630bfa54e423f693f1e708920b34d9f34663b7be313" -> "sha256:4a14b2f7067b4911c90d5234c242dfec5c1cd022cc21a092d70f6f624239c97b" [label=""];
  "sha256:4a14b2f7067b4911c90d5234c242dfec5c1cd022cc21a092d70f6f624239c97b" -> "sha256:bfe9560b996a6718099aadd3509e2775ec15b06f6cfb2cb2ff94b98062fda024" [label=""];
  "sha256:bfe9560b996a6718099aadd3509e2775ec15b06f6cfb2cb2ff94b98062fda024" -> "sha256:ab539ce5c831cc15c2e115a3104b5742b55a4371b4839fe08cb984a901906095" [label=""];
  "sha256:ab539ce5c831cc15c2e115a3104b5742b55a4371b4839fe08cb984a901906095" -> "sha256:cc045c2a676a8b0542d895ae7110fc32c211c145fee8e6c1692c3409c216188e" [label=""];
  "sha256:cc045c2a676a8b0542d895ae7110fc32c211c145fee8e6c1692c3409c216188e" -> "sha256:9e2c09bbc4cd0e27120fb0e5340826b90f3a7f84b967572db876550196f6bb5a" [label=""];
  "sha256:9e2c09bbc4cd0e27120fb0e5340826b90f3a7f84b967572db876550196f6bb5a" -> "sha256:a59b44b942015ee022d62ca59e3197ac37cb957389297f94bb9ee63319b11719" [label=""];
  "sha256:a59b44b942015ee022d62ca59e3197ac37cb957389297f94bb9ee63319b11719" -> "sha256:22ec06feb3c8a18f5654060cb719a73f964096189f6d381b35010e11868a1a80" [label=""];
  "sha256:22ec06feb3c8a18f5654060cb719a73f964096189f6d381b35010e11868a1a80" -> "sha256:6b3eb7a94e8a442cc742f50e89bc4ec7fde583e0eb130ca2d72c6e6a2bad50b4" [label=""];
  "sha256:6b3eb7a94e8a442cc742f50e89bc4ec7fde583e0eb130ca2d72c6e6a2bad50b4" -> "sha256:12f86945ad2de8573368a50d00ce8eb7dabfa72b5263ad30a5c2c87b24bb008c" [label=""];
}

