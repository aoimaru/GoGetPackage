[app/sources/348022293.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:f45c9fae1f8a9ff29046a0418f0b951b95be172a4af23fa67e0149148b227d49" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:640847c8facc421c4aa3462a42f415ba99152fd4907a5db96b20fdd0d2143c04" [label="/bin/sh -c apt-get dist-upgrade -y" shape="box"];
  "sha256:fb8c6c056d0080f88ae9cbaedbed337c9d5a999febdf3c9c415d103704eb8de8" [label="/bin/sh -c apt-get install -y wget" shape="box"];
  "sha256:4f49529aa5d6ea4010f604d1abf0a63b21e12e368cb0267f16053469a6da7f3d" [label="/bin/sh -c apt-get install -y apache2" shape="box"];
  "sha256:1185a8b3f4d6b248f018e3fe2af70dde1ef5e5842b8978a3d21286e9bfb6d520" [label="/bin/sh -c wget http://snapshot.debian.org/archive/debian/20130101T091755Z/pool/main/b/bash/bash_4.2%2Bdfsg-0.1_amd64.deb -O /tmp/bash_4.2+dfsg-0.1_amd64.deb &&  dpkg -i /tmp/bash_4.2+dfsg-0.1_amd64.deb" shape="box"];
  "sha256:4d29cefbb349c372afe94a1c71ac4dbf7c874a8dfcffe06ae1c49cf70adcd019" [label="local://context" shape="ellipse"];
  "sha256:22ffd02195bd4b3cbe870a5c29e82b881560f1b450311c7382a71fb15bdadba8" [label="copy{src=/index.html, dest=/var/www/}" shape="note"];
  "sha256:5a3010931a8a3be8e086f88ee08d99685ba7ba826aa4cc1f486b62070d71cd01" [label="copy{src=/stats, dest=/usr/lib/cgi-bin/}" shape="note"];
  "sha256:47bf3d296e1336b989ed8314eb81c13b976ade41b4453e7d4701c93b8d39b658" [label="/bin/sh -c chown www-data:www-data /usr/lib/cgi-bin/stats" shape="box"];
  "sha256:02187d7dc68041a3f2380c2a7373e8affd1b77761f61223dd837f705d73576c2" [label="/bin/sh -c chmod u+x /usr/lib/cgi-bin/stats" shape="box"];
  "sha256:36c6e5253b74c71c5e1bbeae2c5381f47bc7805dc634efe07a3d1f0d70f689aa" [label="/bin/sh -c apt-get autoremove" shape="box"];
  "sha256:74cc588198d4a0e86aac1b3e6e528e20e28ac9326c6eb3a0d419d450d37dddd0" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:bf27a944f5aaf1710258667a88bd80ed673cb06ae3b49b849107658b52cf2f1c" [label="sha256:bf27a944f5aaf1710258667a88bd80ed673cb06ae3b49b849107658b52cf2f1c" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:f45c9fae1f8a9ff29046a0418f0b951b95be172a4af23fa67e0149148b227d49" [label=""];
  "sha256:f45c9fae1f8a9ff29046a0418f0b951b95be172a4af23fa67e0149148b227d49" -> "sha256:640847c8facc421c4aa3462a42f415ba99152fd4907a5db96b20fdd0d2143c04" [label=""];
  "sha256:640847c8facc421c4aa3462a42f415ba99152fd4907a5db96b20fdd0d2143c04" -> "sha256:fb8c6c056d0080f88ae9cbaedbed337c9d5a999febdf3c9c415d103704eb8de8" [label=""];
  "sha256:fb8c6c056d0080f88ae9cbaedbed337c9d5a999febdf3c9c415d103704eb8de8" -> "sha256:4f49529aa5d6ea4010f604d1abf0a63b21e12e368cb0267f16053469a6da7f3d" [label=""];
  "sha256:4f49529aa5d6ea4010f604d1abf0a63b21e12e368cb0267f16053469a6da7f3d" -> "sha256:1185a8b3f4d6b248f018e3fe2af70dde1ef5e5842b8978a3d21286e9bfb6d520" [label=""];
  "sha256:1185a8b3f4d6b248f018e3fe2af70dde1ef5e5842b8978a3d21286e9bfb6d520" -> "sha256:22ffd02195bd4b3cbe870a5c29e82b881560f1b450311c7382a71fb15bdadba8" [label=""];
  "sha256:4d29cefbb349c372afe94a1c71ac4dbf7c874a8dfcffe06ae1c49cf70adcd019" -> "sha256:22ffd02195bd4b3cbe870a5c29e82b881560f1b450311c7382a71fb15bdadba8" [label=""];
  "sha256:22ffd02195bd4b3cbe870a5c29e82b881560f1b450311c7382a71fb15bdadba8" -> "sha256:5a3010931a8a3be8e086f88ee08d99685ba7ba826aa4cc1f486b62070d71cd01" [label=""];
  "sha256:4d29cefbb349c372afe94a1c71ac4dbf7c874a8dfcffe06ae1c49cf70adcd019" -> "sha256:5a3010931a8a3be8e086f88ee08d99685ba7ba826aa4cc1f486b62070d71cd01" [label=""];
  "sha256:5a3010931a8a3be8e086f88ee08d99685ba7ba826aa4cc1f486b62070d71cd01" -> "sha256:47bf3d296e1336b989ed8314eb81c13b976ade41b4453e7d4701c93b8d39b658" [label=""];
  "sha256:47bf3d296e1336b989ed8314eb81c13b976ade41b4453e7d4701c93b8d39b658" -> "sha256:02187d7dc68041a3f2380c2a7373e8affd1b77761f61223dd837f705d73576c2" [label=""];
  "sha256:02187d7dc68041a3f2380c2a7373e8affd1b77761f61223dd837f705d73576c2" -> "sha256:36c6e5253b74c71c5e1bbeae2c5381f47bc7805dc634efe07a3d1f0d70f689aa" [label=""];
  "sha256:36c6e5253b74c71c5e1bbeae2c5381f47bc7805dc634efe07a3d1f0d70f689aa" -> "sha256:74cc588198d4a0e86aac1b3e6e528e20e28ac9326c6eb3a0d419d450d37dddd0" [label=""];
  "sha256:74cc588198d4a0e86aac1b3e6e528e20e28ac9326c6eb3a0d419d450d37dddd0" -> "sha256:bf27a944f5aaf1710258667a88bd80ed673cb06ae3b49b849107658b52cf2f1c" [label=""];
}

