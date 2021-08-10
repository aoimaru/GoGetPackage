[app/sources/279626967.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2038e2671a3f2228345894cdaa25721d8a65f9a04fe1947932c46e475cf37afe" [label="/bin/sh -c sed -i \"s/http:\\/\\/archive.ubuntu.com/http:\\/\\/mirrors.aliyun.com/g\" /etc/apt/sources.list" shape="box"];
  "sha256:26ba08bc9701c562a6d7b3025d792cc33b5dcb9c9f7bff0f851d8f7a1a00cef7" [label="/bin/sh -c apt-get update && apt-get -y dist-upgrade" shape="box"];
  "sha256:908e21bbef5794867425a51675a2b59e74633cb5721039eca695e9cdb348ff7f" [label="/bin/sh -c apt-get install -y openssh-server  binutils curl" shape="box"];
  "sha256:3ecb40c748a39b75d94f4832965f74ca8d2c0f2194fb985f20b50ef82eddc80c" [label="/bin/sh -c apt-get install -y python2.7" shape="box"];
  "sha256:0007f16c08f7574f0b43b25e1d276096fc23071b1ff43b631d20d4b9c1f85b8e" [label="/bin/sh -c useradd -m -s /bin/rbash ctf" shape="box"];
  "sha256:06f7461468b2f052b3a737718783f1cc061c6123d981fd4203880afee2891c72" [label="/bin/sh -c echo \"ctf:ctf\" |chpasswd" shape="box"];
  "sha256:2f9c877f2a415ae83508febe52d553a02e983e91a499a93b4b842f002f200866" [label="local://context" shape="ellipse"];
  "sha256:001a384f8788790191d829837d617dfa80deb73f97c5bb53da32323c60e9017e" [label="copy{src=/bin/flag, dest=/home/ctf/c8049f64c8080af25f414b15cb6f80c3}" shape="note"];
  "sha256:1ad7e345410a52db7e6698ec8595eed89fdf8cd799a2465ba50606d10d99067e" [label="/bin/sh -c chown -R root:ctf /home/* &&chmod -R 740  /home/ctf/* &&chmod 740 /home/ctf/c8049f64c8080af25f414b15cb6f80c3" shape="box"];
  "sha256:0e7bc14644116882b963607c3c10681a5994d118ce58d49c1352a7bc93aada9a" [label="/bin/sh -c mkdir /home/ctf/bin" shape="box"];
  "sha256:6aa64226e904cc83cdbba92acb76881550e8dbcfd0e944dcd7afce68f29ce9f1" [label="/bin/sh -c echo \"export PATH=/home/ctf/bin\" >> /home/ctf/.bashrc" shape="box"];
  "sha256:0755105a6f48aec74d72385c4d873e58b50fa8d782502d511b3c90559be9ad4e" [label="/bin/sh -c ln -s /bin/grep /home/ctf/bin" shape="box"];
  "sha256:b6d2fe3cb8119fd69f41e830027e0309cca17dc1609608100b3d6c8c57ab8e91" [label="/bin/sh -c ln -s /usr/bin/strings /home/ctf/bin" shape="box"];
  "sha256:d2659c6b57bca7b4410bb10885019901466441ac3890dee9c5f0613a696f8f9e" [label="/bin/sh -c ln -s /usr/bin/curl /home/ctf/bin/curl" shape="box"];
  "sha256:90a280e606b653f3e53a613ee6f6fe6f60d8c9dc6f84f875bd00f40113a546ed" [label="/bin/sh -c ln -s /usr/bin/python2.7 /home/ctf/bin/python" shape="box"];
  "sha256:dfb93eefc92d0b2349afad56d98f858e7fb1f292e6af1fd347515e653086a0c3" [label="/bin/sh -c echo 'Welcome to SUSCTF,Try to cat the flag in minBash' > /etc/ssh/ssh_banner &&echo 'Banner /etc/ssh/ssh_banner' >> /etc/ssh/sshd_config" shape="box"];
  "sha256:dce913334966689de175023e2926fa4a8b5a92704fcc853713cb7a67181fef4a" [label="/bin/sh -c mkdir /var/run/sshd" shape="box"];
  "sha256:e6720bea89511e0c06e4782a741722648b81dee47371ebea27068551db8dfc6b" [label="sha256:e6720bea89511e0c06e4782a741722648b81dee47371ebea27068551db8dfc6b" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2038e2671a3f2228345894cdaa25721d8a65f9a04fe1947932c46e475cf37afe" [label=""];
  "sha256:2038e2671a3f2228345894cdaa25721d8a65f9a04fe1947932c46e475cf37afe" -> "sha256:26ba08bc9701c562a6d7b3025d792cc33b5dcb9c9f7bff0f851d8f7a1a00cef7" [label=""];
  "sha256:26ba08bc9701c562a6d7b3025d792cc33b5dcb9c9f7bff0f851d8f7a1a00cef7" -> "sha256:908e21bbef5794867425a51675a2b59e74633cb5721039eca695e9cdb348ff7f" [label=""];
  "sha256:908e21bbef5794867425a51675a2b59e74633cb5721039eca695e9cdb348ff7f" -> "sha256:3ecb40c748a39b75d94f4832965f74ca8d2c0f2194fb985f20b50ef82eddc80c" [label=""];
  "sha256:3ecb40c748a39b75d94f4832965f74ca8d2c0f2194fb985f20b50ef82eddc80c" -> "sha256:0007f16c08f7574f0b43b25e1d276096fc23071b1ff43b631d20d4b9c1f85b8e" [label=""];
  "sha256:0007f16c08f7574f0b43b25e1d276096fc23071b1ff43b631d20d4b9c1f85b8e" -> "sha256:06f7461468b2f052b3a737718783f1cc061c6123d981fd4203880afee2891c72" [label=""];
  "sha256:06f7461468b2f052b3a737718783f1cc061c6123d981fd4203880afee2891c72" -> "sha256:001a384f8788790191d829837d617dfa80deb73f97c5bb53da32323c60e9017e" [label=""];
  "sha256:2f9c877f2a415ae83508febe52d553a02e983e91a499a93b4b842f002f200866" -> "sha256:001a384f8788790191d829837d617dfa80deb73f97c5bb53da32323c60e9017e" [label=""];
  "sha256:001a384f8788790191d829837d617dfa80deb73f97c5bb53da32323c60e9017e" -> "sha256:1ad7e345410a52db7e6698ec8595eed89fdf8cd799a2465ba50606d10d99067e" [label=""];
  "sha256:1ad7e345410a52db7e6698ec8595eed89fdf8cd799a2465ba50606d10d99067e" -> "sha256:0e7bc14644116882b963607c3c10681a5994d118ce58d49c1352a7bc93aada9a" [label=""];
  "sha256:0e7bc14644116882b963607c3c10681a5994d118ce58d49c1352a7bc93aada9a" -> "sha256:6aa64226e904cc83cdbba92acb76881550e8dbcfd0e944dcd7afce68f29ce9f1" [label=""];
  "sha256:6aa64226e904cc83cdbba92acb76881550e8dbcfd0e944dcd7afce68f29ce9f1" -> "sha256:0755105a6f48aec74d72385c4d873e58b50fa8d782502d511b3c90559be9ad4e" [label=""];
  "sha256:0755105a6f48aec74d72385c4d873e58b50fa8d782502d511b3c90559be9ad4e" -> "sha256:b6d2fe3cb8119fd69f41e830027e0309cca17dc1609608100b3d6c8c57ab8e91" [label=""];
  "sha256:b6d2fe3cb8119fd69f41e830027e0309cca17dc1609608100b3d6c8c57ab8e91" -> "sha256:d2659c6b57bca7b4410bb10885019901466441ac3890dee9c5f0613a696f8f9e" [label=""];
  "sha256:d2659c6b57bca7b4410bb10885019901466441ac3890dee9c5f0613a696f8f9e" -> "sha256:90a280e606b653f3e53a613ee6f6fe6f60d8c9dc6f84f875bd00f40113a546ed" [label=""];
  "sha256:90a280e606b653f3e53a613ee6f6fe6f60d8c9dc6f84f875bd00f40113a546ed" -> "sha256:dfb93eefc92d0b2349afad56d98f858e7fb1f292e6af1fd347515e653086a0c3" [label=""];
  "sha256:dfb93eefc92d0b2349afad56d98f858e7fb1f292e6af1fd347515e653086a0c3" -> "sha256:dce913334966689de175023e2926fa4a8b5a92704fcc853713cb7a67181fef4a" [label=""];
  "sha256:dce913334966689de175023e2926fa4a8b5a92704fcc853713cb7a67181fef4a" -> "sha256:e6720bea89511e0c06e4782a741722648b81dee47371ebea27068551db8dfc6b" [label=""];
}

