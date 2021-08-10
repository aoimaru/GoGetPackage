[app/sources/254582202.Dockerfile]
digraph {
  "sha256:adbae7aab8a957c764422fe98ee269a7892d81002d9282c3e05c0795d50f27c0" [label="docker-image://docker.io/sinenomine/clefos-base-s390x:latest" shape="ellipse"];
  "sha256:270f2601e6b80f58c9532ec6002e7466f47d76f1daecb6d706ee3337a7c211e6" [label="/bin/sh -c touch /var/lib/rpm/* && yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:619ff485e5c45091450383e7fedf6319520a5d933341ebe61444ad7c0e35b676" [label="/bin/sh -c touch /var/lib/rpm/* && yum install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:c3adacbec7312d54af7293468ce58e18276438b5fcb543097ac92380d64d6556" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-s390x.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:1993a8127afc9ac031c6fd0a237a5dea193c0c0b6ec6e3109e2c3cb67b69562e" [label="/bin/sh -c ln -s /usr/bin/gcc /usr/bin/s390x-linux-gnu-gcc" shape="box"];
  "sha256:e729307e1ef6461d1219fa4d4260f32822a5124cd9862dd06e71f97d56449b6c" [label="sha256:e729307e1ef6461d1219fa4d4260f32822a5124cd9862dd06e71f97d56449b6c" shape="plaintext"];
  "sha256:adbae7aab8a957c764422fe98ee269a7892d81002d9282c3e05c0795d50f27c0" -> "sha256:270f2601e6b80f58c9532ec6002e7466f47d76f1daecb6d706ee3337a7c211e6" [label=""];
  "sha256:270f2601e6b80f58c9532ec6002e7466f47d76f1daecb6d706ee3337a7c211e6" -> "sha256:619ff485e5c45091450383e7fedf6319520a5d933341ebe61444ad7c0e35b676" [label=""];
  "sha256:619ff485e5c45091450383e7fedf6319520a5d933341ebe61444ad7c0e35b676" -> "sha256:c3adacbec7312d54af7293468ce58e18276438b5fcb543097ac92380d64d6556" [label=""];
  "sha256:c3adacbec7312d54af7293468ce58e18276438b5fcb543097ac92380d64d6556" -> "sha256:1993a8127afc9ac031c6fd0a237a5dea193c0c0b6ec6e3109e2c3cb67b69562e" [label=""];
  "sha256:1993a8127afc9ac031c6fd0a237a5dea193c0c0b6ec6e3109e2c3cb67b69562e" -> "sha256:e729307e1ef6461d1219fa4d4260f32822a5124cd9862dd06e71f97d56449b6c" [label=""];
}

