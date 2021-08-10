[app/sources/298874316.Dockerfile]
digraph {
  "sha256:f1d460cd8a0c3382c0bca58cf02d80bf00fa010ec4696a7d704f93e4c5efdd77" [label="local://context" shape="ellipse"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:8914ed800eada6a42504e3a403cbcbe773e7cd6fae7894cbd0a8e7c6d5411813" [label="/bin/sh -c adduser --disabled-password --gecos '' ctf" shape="box"];
  "sha256:86b1a102ebbaf98ffc0c1bc90a37f58411d87be204a7d6083d517e2864c23a51" [label="/bin/sh -c apt-get update && apt-get install -y xinetd gcc make libc6-dev-i386 libssl-dev coreutils" shape="box"];
  "sha256:e3a43f00db241283a472ec007eab74f531723f81e028d848203548571c894d00" [label="mkdir{path=/home/ctf}" shape="note"];
  "sha256:2b45f7cdd05da8743b7b7f367d0abcbbf2c91f700a33f63cbb03a7dda4215510" [label="copy{src=/src/*, dest=/home/ctf/}" shape="note"];
  "sha256:f9a27aef7e2934be7f42b85a9cc72c202858b18c33a7d844d5e2190cdad61e73" [label="/bin/sh -c make" shape="box"];
  "sha256:dd8a660e1676508d09d4c15a453be25144b0d4471572089af5c41f5390a417eb" [label="/bin/sh -c chown -R root:root ." shape="box"];
  "sha256:27f2e1ec0267c6f15562cf7b7c1985ced24e133b84fdacac298e6f68f230b646" [label="copy{src=/xinetd.conf, dest=/etc/xinetd.conf}" shape="note"];
  "sha256:b7de91425046b98b16be1d844bfec2f3eae1f0c0d4141ff793c57b9a223eb3e4" [label="/bin/sh -c mkdir /var/log/xinetd/" shape="box"];
  "sha256:ce875e9ddbdc1f15bbf05294154d8c80b9047c3b6709965e59bee0bd3d936668" [label="copy{src=/seteax.xinetd, dest=/etc/xinetd.d/seteax}" shape="note"];
  "sha256:e618e7dfeddc34b6cf710d1f1f72184a53033989c5728255df407cae178a297a" [label="sha256:e618e7dfeddc34b6cf710d1f1f72184a53033989c5728255df407cae178a297a" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:8914ed800eada6a42504e3a403cbcbe773e7cd6fae7894cbd0a8e7c6d5411813" [label=""];
  "sha256:8914ed800eada6a42504e3a403cbcbe773e7cd6fae7894cbd0a8e7c6d5411813" -> "sha256:86b1a102ebbaf98ffc0c1bc90a37f58411d87be204a7d6083d517e2864c23a51" [label=""];
  "sha256:86b1a102ebbaf98ffc0c1bc90a37f58411d87be204a7d6083d517e2864c23a51" -> "sha256:e3a43f00db241283a472ec007eab74f531723f81e028d848203548571c894d00" [label=""];
  "sha256:e3a43f00db241283a472ec007eab74f531723f81e028d848203548571c894d00" -> "sha256:2b45f7cdd05da8743b7b7f367d0abcbbf2c91f700a33f63cbb03a7dda4215510" [label=""];
  "sha256:f1d460cd8a0c3382c0bca58cf02d80bf00fa010ec4696a7d704f93e4c5efdd77" -> "sha256:2b45f7cdd05da8743b7b7f367d0abcbbf2c91f700a33f63cbb03a7dda4215510" [label=""];
  "sha256:2b45f7cdd05da8743b7b7f367d0abcbbf2c91f700a33f63cbb03a7dda4215510" -> "sha256:f9a27aef7e2934be7f42b85a9cc72c202858b18c33a7d844d5e2190cdad61e73" [label=""];
  "sha256:f9a27aef7e2934be7f42b85a9cc72c202858b18c33a7d844d5e2190cdad61e73" -> "sha256:dd8a660e1676508d09d4c15a453be25144b0d4471572089af5c41f5390a417eb" [label=""];
  "sha256:dd8a660e1676508d09d4c15a453be25144b0d4471572089af5c41f5390a417eb" -> "sha256:27f2e1ec0267c6f15562cf7b7c1985ced24e133b84fdacac298e6f68f230b646" [label=""];
  "sha256:f1d460cd8a0c3382c0bca58cf02d80bf00fa010ec4696a7d704f93e4c5efdd77" -> "sha256:27f2e1ec0267c6f15562cf7b7c1985ced24e133b84fdacac298e6f68f230b646" [label=""];
  "sha256:27f2e1ec0267c6f15562cf7b7c1985ced24e133b84fdacac298e6f68f230b646" -> "sha256:b7de91425046b98b16be1d844bfec2f3eae1f0c0d4141ff793c57b9a223eb3e4" [label=""];
  "sha256:b7de91425046b98b16be1d844bfec2f3eae1f0c0d4141ff793c57b9a223eb3e4" -> "sha256:ce875e9ddbdc1f15bbf05294154d8c80b9047c3b6709965e59bee0bd3d936668" [label=""];
  "sha256:f1d460cd8a0c3382c0bca58cf02d80bf00fa010ec4696a7d704f93e4c5efdd77" -> "sha256:ce875e9ddbdc1f15bbf05294154d8c80b9047c3b6709965e59bee0bd3d936668" [label=""];
  "sha256:ce875e9ddbdc1f15bbf05294154d8c80b9047c3b6709965e59bee0bd3d936668" -> "sha256:e618e7dfeddc34b6cf710d1f1f72184a53033989c5728255df407cae178a297a" [label=""];
}

