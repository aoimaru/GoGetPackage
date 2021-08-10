[app/sources/168205959.Dockerfile]
digraph {
  "sha256:22beee22ac651ba3611eb1025b19ae0edf5e918f52e858f8858f2ce10b3b9b9f" [label="local://context" shape="ellipse"];
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" [label="docker-image://docker.io/library/debian:8" shape="ellipse"];
  "sha256:85b6defda9d98a564e9750a4c2526f0fcc900b54bb86ef6ac62b4c2b152d9d8c" [label="mkdir{path=/root}" shape="note"];
  "sha256:70bac94abe704a3408e772050478c48f6181a4e4103f44afd0a56da32845365d" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive    apt-get install -y build-essential libncurses5-dev rsync cpio python unzip bc wget" shape="box"];
  "sha256:ff1a01c88cb43e99e646085946362e8746eabdb5a7f5beae56fa3aa2ef4d1c3a" [label="/bin/sh -c wget -nv https://buildroot.org/downloads/buildroot-2018.02.6.tar.bz2 &&    tar xf buildroot-*.tar* &&    rm buildroot-*.tar* &&    ln -s buildroot-* buildroot &&    mkdir -v buildroot/patches" shape="box"];
  "sha256:5efd2cdb6a190bc6f4912c36a0f323425dd0964bf5c75aab54075b7707e494ff" [label="/bin/sh -c mkdir -vpm775 buildroot/rootfs_overlay/srv" shape="box"];
  "sha256:288865479c217993bb7f3da936407d185e84b23147ccfab2be234af53bfca99c" [label="/bin/sh -c wget -nv https://github.com/Docker-nano/crosstool-NG/releases/download/2.1.0/x86_64-nano-linux-uclibc.tar.xz &&    tar xf *.tar* &&    ln -s \"$(tar tf *.tar* | head -1)\" toolchain &&    rm *.tar*" shape="box"];
  "sha256:bcd4c69a4347f1f823ae3f59f0ef2553e9314e48677f398109c81aac98907fda" [label="/bin/sh -c wget -nv https://busybox.net/downloads/busybox-1.27.2.tar.bz2 &&    tar xf *.tar* &&    rm *.tar* &&    ln -s busybox-* busybox &&    ln -s ~/busybox/.config /etc/busybox.conf" shape="box"];
  "sha256:a062c441f470d4153b5804385c3dd549686a88eda42af7722d6d19baf8405d09" [label="copy{src=/in/buildroot, dest=/usr/local/bin/}" shape="note"];
  "sha256:5243b02620d1e59e58ba7e4a2c4a594f71d7a87503effa6e71d8dd31b99afc6e" [label="copy{src=/in/buildroot-configure, dest=/usr/local/bin/}" shape="note"];
  "sha256:3021ba7aa1fa989c42a001c3574b3f342e8164eadc461bbcccfb385b8f2fc94a" [label="copy{src=/in/busybox-configure, dest=/usr/local/bin/}" shape="note"];
  "sha256:d4e50063b083953acd3ebcd814244c1a5045bd042110b5b67a6637be8bd56150" [label="copy{src=/in/buildroot.conf, dest=/root/buildroot/.config}" shape="note"];
  "sha256:f9b2c094c7f8e567b5eca19b7a0364643c853b331dce7116fb4cc7bcba6f8bb0" [label="copy{src=/in/post_build.sh, dest=/root/buildroot/}" shape="note"];
  "sha256:2ad24d258e0faa658e782de90cabad958ac0628f8988e53d09a719a7c91aa9d5" [label="copy{src=/in/busybox.conf, dest=/root/busybox/.config}" shape="note"];
  "sha256:5cff883049e1216cc96bb8e31e8766cd42b0c8a0e9d925c99488c5938d4080a1" [label="/bin/sh -c echo \"alias ll='ls -lah --color=auto'\" >> .bashrc" shape="box"];
  "sha256:88f78771735eb95655f5e6fa0177716e930847692bd07ab97c2b2b78c93f4bbd" [label="sha256:88f78771735eb95655f5e6fa0177716e930847692bd07ab97c2b2b78c93f4bbd" shape="plaintext"];
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" -> "sha256:85b6defda9d98a564e9750a4c2526f0fcc900b54bb86ef6ac62b4c2b152d9d8c" [label=""];
  "sha256:85b6defda9d98a564e9750a4c2526f0fcc900b54bb86ef6ac62b4c2b152d9d8c" -> "sha256:70bac94abe704a3408e772050478c48f6181a4e4103f44afd0a56da32845365d" [label=""];
  "sha256:70bac94abe704a3408e772050478c48f6181a4e4103f44afd0a56da32845365d" -> "sha256:ff1a01c88cb43e99e646085946362e8746eabdb5a7f5beae56fa3aa2ef4d1c3a" [label=""];
  "sha256:ff1a01c88cb43e99e646085946362e8746eabdb5a7f5beae56fa3aa2ef4d1c3a" -> "sha256:5efd2cdb6a190bc6f4912c36a0f323425dd0964bf5c75aab54075b7707e494ff" [label=""];
  "sha256:5efd2cdb6a190bc6f4912c36a0f323425dd0964bf5c75aab54075b7707e494ff" -> "sha256:288865479c217993bb7f3da936407d185e84b23147ccfab2be234af53bfca99c" [label=""];
  "sha256:288865479c217993bb7f3da936407d185e84b23147ccfab2be234af53bfca99c" -> "sha256:bcd4c69a4347f1f823ae3f59f0ef2553e9314e48677f398109c81aac98907fda" [label=""];
  "sha256:bcd4c69a4347f1f823ae3f59f0ef2553e9314e48677f398109c81aac98907fda" -> "sha256:a062c441f470d4153b5804385c3dd549686a88eda42af7722d6d19baf8405d09" [label=""];
  "sha256:22beee22ac651ba3611eb1025b19ae0edf5e918f52e858f8858f2ce10b3b9b9f" -> "sha256:a062c441f470d4153b5804385c3dd549686a88eda42af7722d6d19baf8405d09" [label=""];
  "sha256:a062c441f470d4153b5804385c3dd549686a88eda42af7722d6d19baf8405d09" -> "sha256:5243b02620d1e59e58ba7e4a2c4a594f71d7a87503effa6e71d8dd31b99afc6e" [label=""];
  "sha256:22beee22ac651ba3611eb1025b19ae0edf5e918f52e858f8858f2ce10b3b9b9f" -> "sha256:5243b02620d1e59e58ba7e4a2c4a594f71d7a87503effa6e71d8dd31b99afc6e" [label=""];
  "sha256:5243b02620d1e59e58ba7e4a2c4a594f71d7a87503effa6e71d8dd31b99afc6e" -> "sha256:3021ba7aa1fa989c42a001c3574b3f342e8164eadc461bbcccfb385b8f2fc94a" [label=""];
  "sha256:22beee22ac651ba3611eb1025b19ae0edf5e918f52e858f8858f2ce10b3b9b9f" -> "sha256:3021ba7aa1fa989c42a001c3574b3f342e8164eadc461bbcccfb385b8f2fc94a" [label=""];
  "sha256:3021ba7aa1fa989c42a001c3574b3f342e8164eadc461bbcccfb385b8f2fc94a" -> "sha256:d4e50063b083953acd3ebcd814244c1a5045bd042110b5b67a6637be8bd56150" [label=""];
  "sha256:22beee22ac651ba3611eb1025b19ae0edf5e918f52e858f8858f2ce10b3b9b9f" -> "sha256:d4e50063b083953acd3ebcd814244c1a5045bd042110b5b67a6637be8bd56150" [label=""];
  "sha256:d4e50063b083953acd3ebcd814244c1a5045bd042110b5b67a6637be8bd56150" -> "sha256:f9b2c094c7f8e567b5eca19b7a0364643c853b331dce7116fb4cc7bcba6f8bb0" [label=""];
  "sha256:22beee22ac651ba3611eb1025b19ae0edf5e918f52e858f8858f2ce10b3b9b9f" -> "sha256:f9b2c094c7f8e567b5eca19b7a0364643c853b331dce7116fb4cc7bcba6f8bb0" [label=""];
  "sha256:f9b2c094c7f8e567b5eca19b7a0364643c853b331dce7116fb4cc7bcba6f8bb0" -> "sha256:2ad24d258e0faa658e782de90cabad958ac0628f8988e53d09a719a7c91aa9d5" [label=""];
  "sha256:22beee22ac651ba3611eb1025b19ae0edf5e918f52e858f8858f2ce10b3b9b9f" -> "sha256:2ad24d258e0faa658e782de90cabad958ac0628f8988e53d09a719a7c91aa9d5" [label=""];
  "sha256:2ad24d258e0faa658e782de90cabad958ac0628f8988e53d09a719a7c91aa9d5" -> "sha256:5cff883049e1216cc96bb8e31e8766cd42b0c8a0e9d925c99488c5938d4080a1" [label=""];
  "sha256:5cff883049e1216cc96bb8e31e8766cd42b0c8a0e9d925c99488c5938d4080a1" -> "sha256:88f78771735eb95655f5e6fa0177716e930847692bd07ab97c2b2b78c93f4bbd" [label=""];
}

