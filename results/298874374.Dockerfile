[app/sources/298874374.Dockerfile]
digraph {
  "sha256:c31012057fa373d28f8f934119d4f1791ea4a226105a009762da94ebd8e02b99" [label="local://context" shape="ellipse"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:8914ed800eada6a42504e3a403cbcbe773e7cd6fae7894cbd0a8e7c6d5411813" [label="/bin/sh -c adduser --disabled-password --gecos '' ctf" shape="box"];
  "sha256:86b1a102ebbaf98ffc0c1bc90a37f58411d87be204a7d6083d517e2864c23a51" [label="/bin/sh -c apt-get update && apt-get install -y xinetd gcc make libc6-dev-i386 libssl-dev coreutils" shape="box"];
  "sha256:e3a43f00db241283a472ec007eab74f531723f81e028d848203548571c894d00" [label="mkdir{path=/home/ctf}" shape="note"];
  "sha256:cb94b5668f73753c14916671cf05edbdf2b65e9ac91514b8eb5eda949c1b17d6" [label="copy{src=/src/*, dest=/home/ctf/}" shape="note"];
  "sha256:a6501e56da2075d4a499b92b8222919d8fe09fb2220695dfacc4dd29e6527f68" [label="/bin/sh -c make" shape="box"];
  "sha256:63d3ef887b063ee3ec2e3f78f312bea63746c22da5e5fc4e8d497c975ef40922" [label="/bin/sh -c chown -R root:root ." shape="box"];
  "sha256:e7d42529d01b642f9527604d18701a1fb96c91d58330279f43ee128a72c17827" [label="copy{src=/xinetd.conf, dest=/etc/xinetd.conf}" shape="note"];
  "sha256:4eeec47d8f71637a169225420c1e6de4e6a5662e3b204089f648ecd92123e2a7" [label="/bin/sh -c mkdir /var/log/xinetd/" shape="box"];
  "sha256:7be60c6a47fb85fb061f8176c5ab116a1cbb42d7dfb67122ee9a5021dd54864c" [label="copy{src=/writemem-nz.xinetd, dest=/etc/xinetd.d/writemem-nz}" shape="note"];
  "sha256:9b30ce82f89d601606b864466f209aedae945fcc684ed9185c51305f12adb575" [label="sha256:9b30ce82f89d601606b864466f209aedae945fcc684ed9185c51305f12adb575" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:8914ed800eada6a42504e3a403cbcbe773e7cd6fae7894cbd0a8e7c6d5411813" [label=""];
  "sha256:8914ed800eada6a42504e3a403cbcbe773e7cd6fae7894cbd0a8e7c6d5411813" -> "sha256:86b1a102ebbaf98ffc0c1bc90a37f58411d87be204a7d6083d517e2864c23a51" [label=""];
  "sha256:86b1a102ebbaf98ffc0c1bc90a37f58411d87be204a7d6083d517e2864c23a51" -> "sha256:e3a43f00db241283a472ec007eab74f531723f81e028d848203548571c894d00" [label=""];
  "sha256:e3a43f00db241283a472ec007eab74f531723f81e028d848203548571c894d00" -> "sha256:cb94b5668f73753c14916671cf05edbdf2b65e9ac91514b8eb5eda949c1b17d6" [label=""];
  "sha256:c31012057fa373d28f8f934119d4f1791ea4a226105a009762da94ebd8e02b99" -> "sha256:cb94b5668f73753c14916671cf05edbdf2b65e9ac91514b8eb5eda949c1b17d6" [label=""];
  "sha256:cb94b5668f73753c14916671cf05edbdf2b65e9ac91514b8eb5eda949c1b17d6" -> "sha256:a6501e56da2075d4a499b92b8222919d8fe09fb2220695dfacc4dd29e6527f68" [label=""];
  "sha256:a6501e56da2075d4a499b92b8222919d8fe09fb2220695dfacc4dd29e6527f68" -> "sha256:63d3ef887b063ee3ec2e3f78f312bea63746c22da5e5fc4e8d497c975ef40922" [label=""];
  "sha256:63d3ef887b063ee3ec2e3f78f312bea63746c22da5e5fc4e8d497c975ef40922" -> "sha256:e7d42529d01b642f9527604d18701a1fb96c91d58330279f43ee128a72c17827" [label=""];
  "sha256:c31012057fa373d28f8f934119d4f1791ea4a226105a009762da94ebd8e02b99" -> "sha256:e7d42529d01b642f9527604d18701a1fb96c91d58330279f43ee128a72c17827" [label=""];
  "sha256:e7d42529d01b642f9527604d18701a1fb96c91d58330279f43ee128a72c17827" -> "sha256:4eeec47d8f71637a169225420c1e6de4e6a5662e3b204089f648ecd92123e2a7" [label=""];
  "sha256:4eeec47d8f71637a169225420c1e6de4e6a5662e3b204089f648ecd92123e2a7" -> "sha256:7be60c6a47fb85fb061f8176c5ab116a1cbb42d7dfb67122ee9a5021dd54864c" [label=""];
  "sha256:c31012057fa373d28f8f934119d4f1791ea4a226105a009762da94ebd8e02b99" -> "sha256:7be60c6a47fb85fb061f8176c5ab116a1cbb42d7dfb67122ee9a5021dd54864c" [label=""];
  "sha256:7be60c6a47fb85fb061f8176c5ab116a1cbb42d7dfb67122ee9a5021dd54864c" -> "sha256:9b30ce82f89d601606b864466f209aedae945fcc684ed9185c51305f12adb575" [label=""];
}

