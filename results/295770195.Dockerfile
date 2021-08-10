[app/sources/295770195.Dockerfile]
digraph {
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:b6b3335af7e1e8aac7ba760b3167564d81f3076f46bd39a509d615807de9f8df" [label="/bin/sh -c apt-get update     && apt-get -y install         bc         build-essential         cmake         device-tree-compiler         gcc-aarch64-linux-gnu         g++-aarch64-linux-gnu         git         unzip         qemu-user-static         multistrap         zip         wget         dosfstools         kpartx         golang-1.8-go         rsync     && apt-get clean     && rm -rf /var/lib/apt/lists/*     && go get         github.com/aktau/github-release         github.com/cheggaaa/pb         golang.org/x/crypto/openpgp" shape="box"];
  "sha256:5da18e2ebed2ae4875284ad6592fccc92bca08de73969f9d28e54f4f34455649" [label="mkdir{path=/go/src/github.com/bamarni/pi64}" shape="note"];
  "sha256:91a51b73305a97939628b9d4c606047a3f87683ae140e650b5c02d355e132346" [label="local://context" shape="ellipse"];
  "sha256:6b187e52697798ce67f72b5863c9cf7997c22adfcfd7eb4bf08b9cc44c92f6ca" [label="copy{src=/, dest=/go/src/github.com/bamarni/pi64}" shape="note"];
  "sha256:725b9203f065f7043a86d6530eaa2e9b1df8cf5f888e9f0b6ee40387049f0c6a" [label="/bin/sh -c go install github.com/bamarni/pi64/cmd/pi64-build" shape="box"];
  "sha256:411fb7e20ed20cfd525f00d69263e0a53300c635b160b519a1719c9d3ba3bf1d" [label="sha256:411fb7e20ed20cfd525f00d69263e0a53300c635b160b519a1719c9d3ba3bf1d" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:b6b3335af7e1e8aac7ba760b3167564d81f3076f46bd39a509d615807de9f8df" [label=""];
  "sha256:b6b3335af7e1e8aac7ba760b3167564d81f3076f46bd39a509d615807de9f8df" -> "sha256:5da18e2ebed2ae4875284ad6592fccc92bca08de73969f9d28e54f4f34455649" [label=""];
  "sha256:5da18e2ebed2ae4875284ad6592fccc92bca08de73969f9d28e54f4f34455649" -> "sha256:6b187e52697798ce67f72b5863c9cf7997c22adfcfd7eb4bf08b9cc44c92f6ca" [label=""];
  "sha256:91a51b73305a97939628b9d4c606047a3f87683ae140e650b5c02d355e132346" -> "sha256:6b187e52697798ce67f72b5863c9cf7997c22adfcfd7eb4bf08b9cc44c92f6ca" [label=""];
  "sha256:6b187e52697798ce67f72b5863c9cf7997c22adfcfd7eb4bf08b9cc44c92f6ca" -> "sha256:725b9203f065f7043a86d6530eaa2e9b1df8cf5f888e9f0b6ee40387049f0c6a" [label=""];
  "sha256:725b9203f065f7043a86d6530eaa2e9b1df8cf5f888e9f0b6ee40387049f0c6a" -> "sha256:411fb7e20ed20cfd525f00d69263e0a53300c635b160b519a1719c9d3ba3bf1d" [label=""];
}

