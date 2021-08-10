[app/sources/331104417.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:3d011e1580f4ea4f7b402805840b3de2b743bfdc3b965f9e56a632ae9aabc477" [label="/bin/sh -c sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list" shape="box"];
  "sha256:ffa8a37b4f70203698b7a26fc7a08a2a9c170578f2e4e7e2eaca14a0c74e6cbd" [label="/bin/sh -c apt-get -y update && apt-get -y install curl wget zip" shape="box"];
  "sha256:b001988f9ffb9ad2adf7a8113cf2e915a5fb1803f06cd0194c189e5a3f249293" [label="/bin/sh -c apt-get -y install apache2 apt-transport-https php php-curl php-pclzip libapache2-mod-php p7zip-full cron" shape="box"];
  "sha256:dcd7087e624a8aef524fdee26214d7f52834a3cb64fdc4dfc79e45ba2c6552e0" [label="/bin/sh -c rm /var/www/html/*.html" shape="box"];
  "sha256:14679b0eb35e9382c77158f021c4e4375320f282d8dd6e288fad01a346c0a1c3" [label="local://context" shape="ellipse"];
  "sha256:c0cf8dc3d26fd2e3be30e782b07e4ec9a10b1ef14f38a30bc323d54b9d4bb17d" [label="copy{src=/db.sql, dest=/tmp/db.sql}" shape="note"];
  "sha256:0d108f9c14b0e02f7b7a13b620dcf1ed0d200850e59388ced429b9ad9c141e40" [label="/bin/sh -c apt-get install -y mysql-client     mysql-server     php-mysql     && service mysql start     && mysqladmin -uroot password FUCKmyL1f3AZiwqecq     && mysql -e \"source /tmp/db.sql;\"  -uroot -pFUCKmyL1f3AZiwqecq       && rm /tmp/db.sql" shape="box"];
  "sha256:a967b5e2c539ee04c167c9c0e8021f8b6f32157c897e3525364777b937b68e7b" [label="copy{src=/mysqld.cnf, dest=/etc/mysql/mysql.conf.d/mysqld.cnf}" shape="note"];
  "sha256:272498d6295482c0d6e97ab788b026b5e1d8bfc18716b0fd54b198e140b7015d" [label="/bin/sh -c (crontab -l ; echo \"*/5 * * * * rm -r /var/www/html/files/* ; touch /var/www/html/files/index.php\";        echo \"*/5 * * * * rm -r /tmp/* && touch /tmp/index.php\") | crontab -" shape="box"];
  "sha256:11258b95eb833a7476b1859e6f9dc5095ea3547ff30854ae90f17bb5814fe4ca" [label="copy{src=/000-default.conf, dest=/etc/apache2/sites-enabled/000-default.conf}" shape="note"];
  "sha256:e179e69cd984b43a383565843cf0fa2b0fef5fe121fcb74ed16e86ada5882f00" [label="copy{src=/webroot, dest=/var/www/html/}" shape="note"];
  "sha256:7513d699016b41e238ee8b6d2b82f15ecf22e8674cfd52447f305b27fe0f606e" [label="/bin/sh -c touch /tmp/index.php" shape="box"];
  "sha256:d30c19a6386eec5a37827e7eb968f6dca5e68ea03f11a3e41bebe68817a03529" [label="/bin/sh -c useradd extract0r -m" shape="box"];
  "sha256:8f8fb22b7fc225ac743de16ebfed5f8758dca6a46634e7ef779f56d12d94cc5d" [label="copy{src=/files/create_a_backup_of_my_supersecret_flag.sh, dest=/home/extract0r/}" shape="note"];
  "sha256:f32f94bd4c88f4e5c2cc63d987c83a4aa8b9bd1fcd2f3abc74f80b615bdf4c86" [label="/bin/sh -c chown -R www-data /var/www/html/files &&     chown extract0r:extract0r /home/extract0r/create_a_backup_of_my_supersecret_flag.sh" shape="box"];
  "sha256:7ed37d7ee3a3d5cca1544f116c9ca07a833a7c8c1eac774f4c5ce565146847bf" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:065f97a047e1bd38b0e7ebb4db2178694077ff9847674f84a1e2733129ae80a3" [label="/bin/sh -c chmod 777 /start.sh" shape="box"];
  "sha256:33f76051cea983a9cf3357a8bcd036f80db0ef23bc37306b85e8d38e8e13f0bd" [label="sha256:33f76051cea983a9cf3357a8bcd036f80db0ef23bc37306b85e8d38e8e13f0bd" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:3d011e1580f4ea4f7b402805840b3de2b743bfdc3b965f9e56a632ae9aabc477" [label=""];
  "sha256:3d011e1580f4ea4f7b402805840b3de2b743bfdc3b965f9e56a632ae9aabc477" -> "sha256:ffa8a37b4f70203698b7a26fc7a08a2a9c170578f2e4e7e2eaca14a0c74e6cbd" [label=""];
  "sha256:ffa8a37b4f70203698b7a26fc7a08a2a9c170578f2e4e7e2eaca14a0c74e6cbd" -> "sha256:b001988f9ffb9ad2adf7a8113cf2e915a5fb1803f06cd0194c189e5a3f249293" [label=""];
  "sha256:b001988f9ffb9ad2adf7a8113cf2e915a5fb1803f06cd0194c189e5a3f249293" -> "sha256:dcd7087e624a8aef524fdee26214d7f52834a3cb64fdc4dfc79e45ba2c6552e0" [label=""];
  "sha256:dcd7087e624a8aef524fdee26214d7f52834a3cb64fdc4dfc79e45ba2c6552e0" -> "sha256:c0cf8dc3d26fd2e3be30e782b07e4ec9a10b1ef14f38a30bc323d54b9d4bb17d" [label=""];
  "sha256:14679b0eb35e9382c77158f021c4e4375320f282d8dd6e288fad01a346c0a1c3" -> "sha256:c0cf8dc3d26fd2e3be30e782b07e4ec9a10b1ef14f38a30bc323d54b9d4bb17d" [label=""];
  "sha256:c0cf8dc3d26fd2e3be30e782b07e4ec9a10b1ef14f38a30bc323d54b9d4bb17d" -> "sha256:0d108f9c14b0e02f7b7a13b620dcf1ed0d200850e59388ced429b9ad9c141e40" [label=""];
  "sha256:0d108f9c14b0e02f7b7a13b620dcf1ed0d200850e59388ced429b9ad9c141e40" -> "sha256:a967b5e2c539ee04c167c9c0e8021f8b6f32157c897e3525364777b937b68e7b" [label=""];
  "sha256:14679b0eb35e9382c77158f021c4e4375320f282d8dd6e288fad01a346c0a1c3" -> "sha256:a967b5e2c539ee04c167c9c0e8021f8b6f32157c897e3525364777b937b68e7b" [label=""];
  "sha256:a967b5e2c539ee04c167c9c0e8021f8b6f32157c897e3525364777b937b68e7b" -> "sha256:272498d6295482c0d6e97ab788b026b5e1d8bfc18716b0fd54b198e140b7015d" [label=""];
  "sha256:272498d6295482c0d6e97ab788b026b5e1d8bfc18716b0fd54b198e140b7015d" -> "sha256:11258b95eb833a7476b1859e6f9dc5095ea3547ff30854ae90f17bb5814fe4ca" [label=""];
  "sha256:14679b0eb35e9382c77158f021c4e4375320f282d8dd6e288fad01a346c0a1c3" -> "sha256:11258b95eb833a7476b1859e6f9dc5095ea3547ff30854ae90f17bb5814fe4ca" [label=""];
  "sha256:11258b95eb833a7476b1859e6f9dc5095ea3547ff30854ae90f17bb5814fe4ca" -> "sha256:e179e69cd984b43a383565843cf0fa2b0fef5fe121fcb74ed16e86ada5882f00" [label=""];
  "sha256:14679b0eb35e9382c77158f021c4e4375320f282d8dd6e288fad01a346c0a1c3" -> "sha256:e179e69cd984b43a383565843cf0fa2b0fef5fe121fcb74ed16e86ada5882f00" [label=""];
  "sha256:e179e69cd984b43a383565843cf0fa2b0fef5fe121fcb74ed16e86ada5882f00" -> "sha256:7513d699016b41e238ee8b6d2b82f15ecf22e8674cfd52447f305b27fe0f606e" [label=""];
  "sha256:7513d699016b41e238ee8b6d2b82f15ecf22e8674cfd52447f305b27fe0f606e" -> "sha256:d30c19a6386eec5a37827e7eb968f6dca5e68ea03f11a3e41bebe68817a03529" [label=""];
  "sha256:d30c19a6386eec5a37827e7eb968f6dca5e68ea03f11a3e41bebe68817a03529" -> "sha256:8f8fb22b7fc225ac743de16ebfed5f8758dca6a46634e7ef779f56d12d94cc5d" [label=""];
  "sha256:14679b0eb35e9382c77158f021c4e4375320f282d8dd6e288fad01a346c0a1c3" -> "sha256:8f8fb22b7fc225ac743de16ebfed5f8758dca6a46634e7ef779f56d12d94cc5d" [label=""];
  "sha256:8f8fb22b7fc225ac743de16ebfed5f8758dca6a46634e7ef779f56d12d94cc5d" -> "sha256:f32f94bd4c88f4e5c2cc63d987c83a4aa8b9bd1fcd2f3abc74f80b615bdf4c86" [label=""];
  "sha256:f32f94bd4c88f4e5c2cc63d987c83a4aa8b9bd1fcd2f3abc74f80b615bdf4c86" -> "sha256:7ed37d7ee3a3d5cca1544f116c9ca07a833a7c8c1eac774f4c5ce565146847bf" [label=""];
  "sha256:14679b0eb35e9382c77158f021c4e4375320f282d8dd6e288fad01a346c0a1c3" -> "sha256:7ed37d7ee3a3d5cca1544f116c9ca07a833a7c8c1eac774f4c5ce565146847bf" [label=""];
  "sha256:7ed37d7ee3a3d5cca1544f116c9ca07a833a7c8c1eac774f4c5ce565146847bf" -> "sha256:065f97a047e1bd38b0e7ebb4db2178694077ff9847674f84a1e2733129ae80a3" [label=""];
  "sha256:065f97a047e1bd38b0e7ebb4db2178694077ff9847674f84a1e2733129ae80a3" -> "sha256:33f76051cea983a9cf3357a8bcd036f80db0ef23bc37306b85e8d38e8e13f0bd" [label=""];
}

