[app/sources/331442828.Dockerfile]
digraph {
  "sha256:adbae7aab8a957c764422fe98ee269a7892d81002d9282c3e05c0795d50f27c0" [label="docker-image://docker.io/sinenomine/clefos-base-s390x:latest" shape="ellipse"];
  "sha256:270f2601e6b80f58c9532ec6002e7466f47d76f1daecb6d706ee3337a7c211e6" [label="/bin/sh -c touch /var/lib/rpm/* && yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:619ff485e5c45091450383e7fedf6319520a5d933341ebe61444ad7c0e35b676" [label="/bin/sh -c touch /var/lib/rpm/* && yum install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:7908e34ced614fad85d726fc9ed8933fd029fc07f72388e836e5c44a42b88829" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-s390x.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:be8b81fb18b9af54634ccd77f69de4779a54c7f286bf16cdc3920a10f32cfdb7" [label="/bin/sh -c ln -s /usr/bin/gcc /usr/bin/s390x-linux-gnu-gcc" shape="box"];
  "sha256:980b5e021564ed721cf6fad185275337eee76d253d48c66f295446e3051af39a" [label="sha256:980b5e021564ed721cf6fad185275337eee76d253d48c66f295446e3051af39a" shape="plaintext"];
  "sha256:adbae7aab8a957c764422fe98ee269a7892d81002d9282c3e05c0795d50f27c0" -> "sha256:270f2601e6b80f58c9532ec6002e7466f47d76f1daecb6d706ee3337a7c211e6" [label=""];
  "sha256:270f2601e6b80f58c9532ec6002e7466f47d76f1daecb6d706ee3337a7c211e6" -> "sha256:619ff485e5c45091450383e7fedf6319520a5d933341ebe61444ad7c0e35b676" [label=""];
  "sha256:619ff485e5c45091450383e7fedf6319520a5d933341ebe61444ad7c0e35b676" -> "sha256:7908e34ced614fad85d726fc9ed8933fd029fc07f72388e836e5c44a42b88829" [label=""];
  "sha256:7908e34ced614fad85d726fc9ed8933fd029fc07f72388e836e5c44a42b88829" -> "sha256:be8b81fb18b9af54634ccd77f69de4779a54c7f286bf16cdc3920a10f32cfdb7" [label=""];
  "sha256:be8b81fb18b9af54634ccd77f69de4779a54c7f286bf16cdc3920a10f32cfdb7" -> "sha256:980b5e021564ed721cf6fad185275337eee76d253d48c66f295446e3051af39a" [label=""];
}

