[app/sources/170941084.Dockerfile]
digraph {
  "sha256:b855363d66841cb867b65bd9cebbbf935bb4ba3d97dfc07ec3971f4f43711391" [label="local://context" shape="ellipse"];
  "sha256:fe6dde1d18cbbb01e1ea60bb4f7e014eea70fe00530ea8e176a3ce2830d5df4b" [label="docker-image://docker.io/library/flat:latest" shape="ellipse"];
  "sha256:a359118c0f6019bd1968bb2d05499349ca3752db91f462bb5a3e558389affe69" [label="/bin/sh -c apt-get update &&    apt-get -y dist-upgrade &&    apt-get -y install php-pear &&    apt-get -y install php7.0-dev  &&    apt-get install net-tools &&    pecl install xdebug &&    pear install PHP_CodeSniffer" shape="box"];
  "sha256:6bc2fe1149995f7b4ae8882e928e72202a6335ade0e868c0c58fcacd30d9a182" [label="copy{src=/xdebug/xdebug.conf, dest=/tmp/}" shape="note"];
  "sha256:4898b355d69474bc2d01e86ecf958756c2ee085a7a86990c2f7f010dbdedf5ca" [label="/bin/sh -c cat /tmp/xdebug.conf > /etc/php/7.0/apache2/conf.d/xdebug.ini" shape="box"];
  "sha256:46224a9f7b4b8b46bfc493be6031f8b3d4d7b1489de159e90f1b33fc43a6f7ca" [label="/bin/sh -c echo 'root:root' | chpasswd  &&\tsed -i '/#PermitRootLogin/s/^#//g' /etc/ssh/sshd_config &&\tsed -e 's/#PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config" shape="box"];
  "sha256:8f43df55a30a5795cc5838f1e18aade6b70469d130872745e38a39fcac88ca63" [label="copy{src=/drush/Create_test_user.php, dest=/tmp/Create_test_user.php}" shape="note"];
  "sha256:24a7b00fcde0a915a4901e691b5a70dc634c3e7e02b54b5837e67b0be60367e0" [label="/bin/sh -c cd /var/www/html/flat/ &&    export PGPASSWORD=fedora &&    service supervisor start &&    /wait-postgres.sh &&    supervisorctl start tomcat &&    /wait-tomcat.sh &&    /var/www/composer/vendor/drush/drush/drush dl admin_menu -y &&    /var/www/composer/vendor/drush/drush/drush -y dl devel  &&    /var/www/composer/vendor/drush/drush/drush -y dl feeds  &&    /var/www/composer/vendor/drush/drush/drush en -y admin_menu &&    /var/www/composer/vendor/drush/drush/drush -y en devel  &&    supervisorctl stop all &&    service supervisor stop &&    sleep 1" shape="box"];
  "sha256:950bcff14fe671651bd1f9bc490644a7626daf303e77e5fad2036c4e91455ae8" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:4fd088985480e691fcf499b3093f5e11894657a7af51023f5e2879891aa2d0c4" [label="sha256:4fd088985480e691fcf499b3093f5e11894657a7af51023f5e2879891aa2d0c4" shape="plaintext"];
  "sha256:fe6dde1d18cbbb01e1ea60bb4f7e014eea70fe00530ea8e176a3ce2830d5df4b" -> "sha256:a359118c0f6019bd1968bb2d05499349ca3752db91f462bb5a3e558389affe69" [label=""];
  "sha256:a359118c0f6019bd1968bb2d05499349ca3752db91f462bb5a3e558389affe69" -> "sha256:6bc2fe1149995f7b4ae8882e928e72202a6335ade0e868c0c58fcacd30d9a182" [label=""];
  "sha256:b855363d66841cb867b65bd9cebbbf935bb4ba3d97dfc07ec3971f4f43711391" -> "sha256:6bc2fe1149995f7b4ae8882e928e72202a6335ade0e868c0c58fcacd30d9a182" [label=""];
  "sha256:6bc2fe1149995f7b4ae8882e928e72202a6335ade0e868c0c58fcacd30d9a182" -> "sha256:4898b355d69474bc2d01e86ecf958756c2ee085a7a86990c2f7f010dbdedf5ca" [label=""];
  "sha256:4898b355d69474bc2d01e86ecf958756c2ee085a7a86990c2f7f010dbdedf5ca" -> "sha256:46224a9f7b4b8b46bfc493be6031f8b3d4d7b1489de159e90f1b33fc43a6f7ca" [label=""];
  "sha256:46224a9f7b4b8b46bfc493be6031f8b3d4d7b1489de159e90f1b33fc43a6f7ca" -> "sha256:8f43df55a30a5795cc5838f1e18aade6b70469d130872745e38a39fcac88ca63" [label=""];
  "sha256:b855363d66841cb867b65bd9cebbbf935bb4ba3d97dfc07ec3971f4f43711391" -> "sha256:8f43df55a30a5795cc5838f1e18aade6b70469d130872745e38a39fcac88ca63" [label=""];
  "sha256:8f43df55a30a5795cc5838f1e18aade6b70469d130872745e38a39fcac88ca63" -> "sha256:24a7b00fcde0a915a4901e691b5a70dc634c3e7e02b54b5837e67b0be60367e0" [label=""];
  "sha256:24a7b00fcde0a915a4901e691b5a70dc634c3e7e02b54b5837e67b0be60367e0" -> "sha256:950bcff14fe671651bd1f9bc490644a7626daf303e77e5fad2036c4e91455ae8" [label=""];
  "sha256:950bcff14fe671651bd1f9bc490644a7626daf303e77e5fad2036c4e91455ae8" -> "sha256:4fd088985480e691fcf499b3093f5e11894657a7af51023f5e2879891aa2d0c4" [label=""];
}

