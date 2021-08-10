[app/sources/431482246.Dockerfile]
digraph {
  "sha256:1cd115780090f921894f243a611f936b14b37d2859009fc903b8fb9eda6d89ce" [label="local://context" shape="ellipse"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:a8673b7102fbe1d69c878220cf76246dee983e6fbd06212bc5f74eb3282e86a0" [label="/bin/sh -c dnf -y update && dnf clean all" shape="box"];
  "sha256:3f959ba2c0626a8d869f33a97ad82ac312da269749381b0c331757982ec5bd5e" [label="/bin/sh -c dnf -y install httpd php php-mysql php-gd pwgen supervisor bash-completion openssh-server psmisc tar && dnf clean all" shape="box"];
  "sha256:dc277a6d21af150c1d340f304b8f3e557ba0a4471f067afee9d7137329d095fa" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:61ad95aba2a759114a69bb37b614a3d04a594cced123655151164606b62f576f" [label="copy{src=/foreground.sh, dest=/etc/apache2/foreground.sh}" shape="note"];
  "sha256:83cf34bb9b9f3efb1155ca1d72b4f2147f505029eaff1d1256548d5a87ff848c" [label="copy{src=/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:54568c539992310ce86df6070d917d91823096bfd00ddaf9281151c063b485fb" [label="/bin/sh -c echo %sudo\tALL=NOPASSWD: ALL >> /etc/sudoers" shape="box"];
  "sha256:5564968e1b00f4ba2f06cd47d1133a3eceb418f661d4e96a2a28af4a1f3f1a4a" [label="http://wordpress.org/latest.tar.gz" shape="ellipse"];
  "sha256:c293ca062788c689171d87cdcaf9f4325054ae4f2425ca37665853178d334003" [label="copy{src=/latest.tar.gz, dest=/wordpress.tar.gz}" shape="note"];
  "sha256:42a135ea4acc25871dcce4ae31c5e79364b54f8999f6a5757ef712a177061bd6" [label="/bin/sh -c tar xvzf /wordpress.tar.gz" shape="box"];
  "sha256:448b1ed9339328471b79fa13ff1458e9d7d94f94b8ddbff5b8948b2906c1874a" [label="/bin/sh -c mv /wordpress/* /var/www/html/." shape="box"];
  "sha256:4452517b498541e11aab3a6b626ab5e5b51a823d0c7f29c4da1fcbb3755cbf22" [label="/bin/sh -c chown -R apache:apache /var/www/" shape="box"];
  "sha256:04276e9ad9d0f6ee0e86c1c231c94476563e53e7e104351008fb4d72269fd574" [label="/bin/sh -c chmod 755 /start.sh" shape="box"];
  "sha256:8a8db4207aba5cbc71a6f3acb7ad84b1fd7a168092cbb37f67d206e716698d58" [label="/bin/sh -c chmod 755 /etc/apache2/foreground.sh" shape="box"];
  "sha256:adf63f374ee4aeb470f7be362aeac55d1cda27c3c6c9998165e14f2c755698b3" [label="/bin/sh -c mkdir /var/run/sshd" shape="box"];
  "sha256:641e533df8cade8009350e2067235c738e8011f1e6faf09a090a81ca8182c0b5" [label="sha256:641e533df8cade8009350e2067235c738e8011f1e6faf09a090a81ca8182c0b5" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:a8673b7102fbe1d69c878220cf76246dee983e6fbd06212bc5f74eb3282e86a0" [label=""];
  "sha256:a8673b7102fbe1d69c878220cf76246dee983e6fbd06212bc5f74eb3282e86a0" -> "sha256:3f959ba2c0626a8d869f33a97ad82ac312da269749381b0c331757982ec5bd5e" [label=""];
  "sha256:3f959ba2c0626a8d869f33a97ad82ac312da269749381b0c331757982ec5bd5e" -> "sha256:dc277a6d21af150c1d340f304b8f3e557ba0a4471f067afee9d7137329d095fa" [label=""];
  "sha256:1cd115780090f921894f243a611f936b14b37d2859009fc903b8fb9eda6d89ce" -> "sha256:dc277a6d21af150c1d340f304b8f3e557ba0a4471f067afee9d7137329d095fa" [label=""];
  "sha256:dc277a6d21af150c1d340f304b8f3e557ba0a4471f067afee9d7137329d095fa" -> "sha256:61ad95aba2a759114a69bb37b614a3d04a594cced123655151164606b62f576f" [label=""];
  "sha256:1cd115780090f921894f243a611f936b14b37d2859009fc903b8fb9eda6d89ce" -> "sha256:61ad95aba2a759114a69bb37b614a3d04a594cced123655151164606b62f576f" [label=""];
  "sha256:61ad95aba2a759114a69bb37b614a3d04a594cced123655151164606b62f576f" -> "sha256:83cf34bb9b9f3efb1155ca1d72b4f2147f505029eaff1d1256548d5a87ff848c" [label=""];
  "sha256:1cd115780090f921894f243a611f936b14b37d2859009fc903b8fb9eda6d89ce" -> "sha256:83cf34bb9b9f3efb1155ca1d72b4f2147f505029eaff1d1256548d5a87ff848c" [label=""];
  "sha256:83cf34bb9b9f3efb1155ca1d72b4f2147f505029eaff1d1256548d5a87ff848c" -> "sha256:54568c539992310ce86df6070d917d91823096bfd00ddaf9281151c063b485fb" [label=""];
  "sha256:54568c539992310ce86df6070d917d91823096bfd00ddaf9281151c063b485fb" -> "sha256:c293ca062788c689171d87cdcaf9f4325054ae4f2425ca37665853178d334003" [label=""];
  "sha256:5564968e1b00f4ba2f06cd47d1133a3eceb418f661d4e96a2a28af4a1f3f1a4a" -> "sha256:c293ca062788c689171d87cdcaf9f4325054ae4f2425ca37665853178d334003" [label=""];
  "sha256:c293ca062788c689171d87cdcaf9f4325054ae4f2425ca37665853178d334003" -> "sha256:42a135ea4acc25871dcce4ae31c5e79364b54f8999f6a5757ef712a177061bd6" [label=""];
  "sha256:42a135ea4acc25871dcce4ae31c5e79364b54f8999f6a5757ef712a177061bd6" -> "sha256:448b1ed9339328471b79fa13ff1458e9d7d94f94b8ddbff5b8948b2906c1874a" [label=""];
  "sha256:448b1ed9339328471b79fa13ff1458e9d7d94f94b8ddbff5b8948b2906c1874a" -> "sha256:4452517b498541e11aab3a6b626ab5e5b51a823d0c7f29c4da1fcbb3755cbf22" [label=""];
  "sha256:4452517b498541e11aab3a6b626ab5e5b51a823d0c7f29c4da1fcbb3755cbf22" -> "sha256:04276e9ad9d0f6ee0e86c1c231c94476563e53e7e104351008fb4d72269fd574" [label=""];
  "sha256:04276e9ad9d0f6ee0e86c1c231c94476563e53e7e104351008fb4d72269fd574" -> "sha256:8a8db4207aba5cbc71a6f3acb7ad84b1fd7a168092cbb37f67d206e716698d58" [label=""];
  "sha256:8a8db4207aba5cbc71a6f3acb7ad84b1fd7a168092cbb37f67d206e716698d58" -> "sha256:adf63f374ee4aeb470f7be362aeac55d1cda27c3c6c9998165e14f2c755698b3" [label=""];
  "sha256:adf63f374ee4aeb470f7be362aeac55d1cda27c3c6c9998165e14f2c755698b3" -> "sha256:641e533df8cade8009350e2067235c738e8011f1e6faf09a090a81ca8182c0b5" [label=""];
}

