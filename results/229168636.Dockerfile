[app/sources/229168636.Dockerfile]
digraph {
  "sha256:1cbace1ea0cc532f9462c65305d29c9168910bc1ce527527b714a1915eaf3bb4" [label="docker-image://docker.io/sapk/archlinux:latest" shape="ellipse"];
  "sha256:16fabee545c91a0ee4775d5ad7055c61edadbc8e130d606bf375d4a03ca053c7" [label="/bin/sh -c curl -o /usr/bin/qemu-$QEMU_ARCH-static -sL https://github.com/multiarch/qemu-user-static/releases/download/$QEMU_VERSION/qemu-$QEMU_ARCH-static  && chmod +x /usr/bin/qemu-$QEMU_ARCH-static" shape="box"];
  "sha256:29d1ac71498e542e4659630627e5a7660d9ab315a0306c131adc362e5946936c" [label="/bin/sh -c pacman -Syu --overwrite '*' --noconfirm tar || echo \"ignore error\"" shape="box"];
  "sha256:5eea8d4b00e74ae669165727d8e1eb3176b59e4f0a04452e91e36bde45447e0a" [label="local://context" shape="ellipse"];
  "sha256:504f5639fcf0c6504d97b573552a72e041835c9fbf4918cff29f162688eeac7e" [label="copy{src=/scripts/setup-root.sh, dest=/setup-root.sh}" shape="note"];
  "sha256:6342d310d550b7277ccd578469a3ab197539157e6767f0e0411c74d77024acde" [label="/bin/sh -c BASE=/root.arch ./setup-root.sh  && cp -a /usr/bin/qemu-$QEMU_ARCH-static /root.arch/usr/bin/qemu-$QEMU_ARCH-static" shape="box"];
  "sha256:8f5f5451ebfb22498c7b78cf11e933294447b02b0d4fd1522acccd96f6f081a4" [label="copy{src=/root.arch, dest=/}" shape="note"];
  "sha256:3772658705571788d412157ed6af39f41e04059d9b841a4b121fa4199eb73dd9" [label="sha256:3772658705571788d412157ed6af39f41e04059d9b841a4b121fa4199eb73dd9" shape="plaintext"];
  "sha256:1cbace1ea0cc532f9462c65305d29c9168910bc1ce527527b714a1915eaf3bb4" -> "sha256:16fabee545c91a0ee4775d5ad7055c61edadbc8e130d606bf375d4a03ca053c7" [label=""];
  "sha256:16fabee545c91a0ee4775d5ad7055c61edadbc8e130d606bf375d4a03ca053c7" -> "sha256:29d1ac71498e542e4659630627e5a7660d9ab315a0306c131adc362e5946936c" [label=""];
  "sha256:29d1ac71498e542e4659630627e5a7660d9ab315a0306c131adc362e5946936c" -> "sha256:504f5639fcf0c6504d97b573552a72e041835c9fbf4918cff29f162688eeac7e" [label=""];
  "sha256:5eea8d4b00e74ae669165727d8e1eb3176b59e4f0a04452e91e36bde45447e0a" -> "sha256:504f5639fcf0c6504d97b573552a72e041835c9fbf4918cff29f162688eeac7e" [label=""];
  "sha256:504f5639fcf0c6504d97b573552a72e041835c9fbf4918cff29f162688eeac7e" -> "sha256:6342d310d550b7277ccd578469a3ab197539157e6767f0e0411c74d77024acde" [label=""];
  "sha256:6342d310d550b7277ccd578469a3ab197539157e6767f0e0411c74d77024acde" -> "sha256:8f5f5451ebfb22498c7b78cf11e933294447b02b0d4fd1522acccd96f6f081a4" [label=""];
  "sha256:8f5f5451ebfb22498c7b78cf11e933294447b02b0d4fd1522acccd96f6f081a4" -> "sha256:3772658705571788d412157ed6af39f41e04059d9b841a4b121fa4199eb73dd9" [label=""];
}

