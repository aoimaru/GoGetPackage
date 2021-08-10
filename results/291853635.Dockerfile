[app/sources/291853635.Dockerfile]
digraph {
  "sha256:f2a3e246cb1de800e0838139351cfa8bcc3f886b7e71be31e8b6bb48544f14fb" [label="local://context" shape="ellipse"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:02bef78efc0bb155c7ee112943df9d1bc6b1bbf2b92a009ee7e5938b216309f9" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:54c824c169bba4e660fb2b6f374148ebb0c4ed417fcabe20f56cfec87fdd59de" [label="/bin/sh -c bash -c \"debconf-set-selections <<< 'mysql-server mysql-server/root_password password FUCKmyL1f3AZiwqeci'\"" shape="box"];
  "sha256:074ad1a09e670206adaed27141fcac9c83b2e2695d41ab77743113820596e66b" [label="/bin/sh -c bash -c \"debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password FUCKmyL1f3AZiwqeci'\"" shape="box"];
  "sha256:29229bd76db6e6b9d3170133caf79e10869b9d0bcf958cb56b63e2a1d4de8f52" [label="/bin/sh -c apt-get -y install curl python3 python3-pip mysql-server libmysqlclient-dev nginx" shape="box"];
  "sha256:67ec9c0f1d63405651c1615dac2d2ed981065fd6e2f2aa9d1ca7d417979bbe62" [label="/bin/sh -c apt-get -y install wget" shape="box"];
  "sha256:6de08969424dd72fd1910d756ba07be9577f31a767973e387e71acb2007193f9" [label="/bin/sh -c apt-get -y install bzip2 libfreetype6 libfontconfig" shape="box"];
  "sha256:43eeb37eafbbfdf6d8ea95592df3a0aa995420592fe5ebf5c0beff9875cbadac" [label="/bin/sh -c mkdir -p /srv/var &&     wget --local-encoding=UTF-8 --no-check-certificate -O /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 &&     tar -xjf /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 -C /tmp &&     rm -f /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 &&     mv /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64/ /srv/var/phantomjs &&     ln -s /srv/var/phantomjs/bin/phantomjs /usr/bin/phantomjs" shape="box"];
  "sha256:4b6d16730efd95939a44e2fea344bf25fb214d73e95ecfd8e3a8f72871b24a3a" [label="/bin/sh -c pip3 install django gunicorn mysqlclient requests lxml pyyaml django-simple-captcha" shape="box"];
  "sha256:dcac9160451ef27bf7b2583290967ceddf0996c12796e919c12552f1347f45ad" [label="copy{src=/mysqld.cnf, dest=/etc/mysql/mysql.conf.d/mysqld.cnf}" shape="note"];
  "sha256:512ed5d4bdaac371718c6daf0a9e46ec08e88aaca714071870ac6f143b3c3ced" [label="copy{src=/dump.sql, dest=/tmp/dump.sql}" shape="note"];
  "sha256:858f281ee8d5799a3a60eb56c50307ddbda099496d18d63faa22957ef9a1c0a3" [label="/bin/sh -c service mysql start &&     mysql -uroot -pFUCKmyL1f3AZiwqeci < /tmp/dump.sql &&     rm /tmp/dump.sql" shape="box"];
  "sha256:49819fd482c1c31b7852aa9a075a3d779dfc83ab4722fb51f6c479c4aead9e64" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:b60811bc37187fbfbfdcf98af122bc203978c634386a8c0cf23f73b0e16e7267" [label="copy{src=/nginx/default, dest=/etc/nginx/sites-available/default}" shape="note"];
  "sha256:d5e69dcff2d7faa57a77d9368c5eeb7a529dd6f4af6d55910a9cdaaea16c5393" [label="/bin/sh -c service mysql start &&     cd /app &&     python3 manage.py migrate &&     python3 manage.py loaddata admin" shape="box"];
  "sha256:48d9db2c5a0c99b39cbc2b2808fe882017b5c25167d25e8bc12829afb4fc0d57" [label="/bin/sh -c groupadd -g 1000 xss-man && useradd -g xss-man -u 1000 xss-man" shape="box"];
  "sha256:78bd822f26495932319e743918d9806eb43f4f93506954d5a955540c2fc36b16" [label="copy{src=/scripts, dest=/xss/}" shape="note"];
  "sha256:33c92401d6035794bfdf051e8be175124e78edc2ed6cb20b5af3b304570aee7a" [label="/bin/sh -c chown -R xss-man:xss-man /xss/ && chmod 500 /xss/*" shape="box"];
  "sha256:50f909c30269b1664091dda399a586ebdf27a0dc41bb7865c1201398e98cb0eb" [label="sha256:50f909c30269b1664091dda399a586ebdf27a0dc41bb7865c1201398e98cb0eb" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:02bef78efc0bb155c7ee112943df9d1bc6b1bbf2b92a009ee7e5938b216309f9" [label=""];
  "sha256:02bef78efc0bb155c7ee112943df9d1bc6b1bbf2b92a009ee7e5938b216309f9" -> "sha256:54c824c169bba4e660fb2b6f374148ebb0c4ed417fcabe20f56cfec87fdd59de" [label=""];
  "sha256:54c824c169bba4e660fb2b6f374148ebb0c4ed417fcabe20f56cfec87fdd59de" -> "sha256:074ad1a09e670206adaed27141fcac9c83b2e2695d41ab77743113820596e66b" [label=""];
  "sha256:074ad1a09e670206adaed27141fcac9c83b2e2695d41ab77743113820596e66b" -> "sha256:29229bd76db6e6b9d3170133caf79e10869b9d0bcf958cb56b63e2a1d4de8f52" [label=""];
  "sha256:29229bd76db6e6b9d3170133caf79e10869b9d0bcf958cb56b63e2a1d4de8f52" -> "sha256:67ec9c0f1d63405651c1615dac2d2ed981065fd6e2f2aa9d1ca7d417979bbe62" [label=""];
  "sha256:67ec9c0f1d63405651c1615dac2d2ed981065fd6e2f2aa9d1ca7d417979bbe62" -> "sha256:6de08969424dd72fd1910d756ba07be9577f31a767973e387e71acb2007193f9" [label=""];
  "sha256:6de08969424dd72fd1910d756ba07be9577f31a767973e387e71acb2007193f9" -> "sha256:43eeb37eafbbfdf6d8ea95592df3a0aa995420592fe5ebf5c0beff9875cbadac" [label=""];
  "sha256:43eeb37eafbbfdf6d8ea95592df3a0aa995420592fe5ebf5c0beff9875cbadac" -> "sha256:4b6d16730efd95939a44e2fea344bf25fb214d73e95ecfd8e3a8f72871b24a3a" [label=""];
  "sha256:4b6d16730efd95939a44e2fea344bf25fb214d73e95ecfd8e3a8f72871b24a3a" -> "sha256:dcac9160451ef27bf7b2583290967ceddf0996c12796e919c12552f1347f45ad" [label=""];
  "sha256:f2a3e246cb1de800e0838139351cfa8bcc3f886b7e71be31e8b6bb48544f14fb" -> "sha256:dcac9160451ef27bf7b2583290967ceddf0996c12796e919c12552f1347f45ad" [label=""];
  "sha256:dcac9160451ef27bf7b2583290967ceddf0996c12796e919c12552f1347f45ad" -> "sha256:512ed5d4bdaac371718c6daf0a9e46ec08e88aaca714071870ac6f143b3c3ced" [label=""];
  "sha256:f2a3e246cb1de800e0838139351cfa8bcc3f886b7e71be31e8b6bb48544f14fb" -> "sha256:512ed5d4bdaac371718c6daf0a9e46ec08e88aaca714071870ac6f143b3c3ced" [label=""];
  "sha256:512ed5d4bdaac371718c6daf0a9e46ec08e88aaca714071870ac6f143b3c3ced" -> "sha256:858f281ee8d5799a3a60eb56c50307ddbda099496d18d63faa22957ef9a1c0a3" [label=""];
  "sha256:858f281ee8d5799a3a60eb56c50307ddbda099496d18d63faa22957ef9a1c0a3" -> "sha256:49819fd482c1c31b7852aa9a075a3d779dfc83ab4722fb51f6c479c4aead9e64" [label=""];
  "sha256:f2a3e246cb1de800e0838139351cfa8bcc3f886b7e71be31e8b6bb48544f14fb" -> "sha256:49819fd482c1c31b7852aa9a075a3d779dfc83ab4722fb51f6c479c4aead9e64" [label=""];
  "sha256:49819fd482c1c31b7852aa9a075a3d779dfc83ab4722fb51f6c479c4aead9e64" -> "sha256:b60811bc37187fbfbfdcf98af122bc203978c634386a8c0cf23f73b0e16e7267" [label=""];
  "sha256:f2a3e246cb1de800e0838139351cfa8bcc3f886b7e71be31e8b6bb48544f14fb" -> "sha256:b60811bc37187fbfbfdcf98af122bc203978c634386a8c0cf23f73b0e16e7267" [label=""];
  "sha256:b60811bc37187fbfbfdcf98af122bc203978c634386a8c0cf23f73b0e16e7267" -> "sha256:d5e69dcff2d7faa57a77d9368c5eeb7a529dd6f4af6d55910a9cdaaea16c5393" [label=""];
  "sha256:d5e69dcff2d7faa57a77d9368c5eeb7a529dd6f4af6d55910a9cdaaea16c5393" -> "sha256:48d9db2c5a0c99b39cbc2b2808fe882017b5c25167d25e8bc12829afb4fc0d57" [label=""];
  "sha256:48d9db2c5a0c99b39cbc2b2808fe882017b5c25167d25e8bc12829afb4fc0d57" -> "sha256:78bd822f26495932319e743918d9806eb43f4f93506954d5a955540c2fc36b16" [label=""];
  "sha256:f2a3e246cb1de800e0838139351cfa8bcc3f886b7e71be31e8b6bb48544f14fb" -> "sha256:78bd822f26495932319e743918d9806eb43f4f93506954d5a955540c2fc36b16" [label=""];
  "sha256:78bd822f26495932319e743918d9806eb43f4f93506954d5a955540c2fc36b16" -> "sha256:33c92401d6035794bfdf051e8be175124e78edc2ed6cb20b5af3b304570aee7a" [label=""];
  "sha256:33c92401d6035794bfdf051e8be175124e78edc2ed6cb20b5af3b304570aee7a" -> "sha256:50f909c30269b1664091dda399a586ebdf27a0dc41bb7865c1201398e98cb0eb" [label=""];
}

