[app/sources/372506694.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:10c35767d49cbda135743ac56d724d230af31d84644c384b44024fbf766a5a19" [label="local://context" shape="ellipse"];
  "sha256:dbe8808a9e398d760ad0c116c6de12b8a7b761c96fc09956e4500c2ca93c237a" [label="copy{src=/html, dest=/var/www/html/}" shape="note"];
  "sha256:4dd0b74c8fcfaeb70a4c13c589c2000df15ccc64e2b23546b605422582bc339e" [label="/bin/sh -c sed -i 's/http:\\/\\/archive.ubuntu.com\\/ubuntu\\//http:\\/\\/mirrors.tuna.tsinghua.edu.cn\\/ubuntu\\//g' /etc/apt/sources.list &&     sed -i '/security/d' /etc/apt/sources.list &&     apt-get update -y &&     apt-get -yqq install supervisor mariadb-server apache2 php5 libapache2-mod-php5     php5-mysql php5-mcrypt ssh &&     sed -i \"154s/Indexes//\" /etc/apache2/apache2.conf &&     sed -i \"165s/Indexes//\" /etc/apache2/apache2.conf &&     /etc/init.d/apache2 start &&     rm -rf /var/lib/mysql &&     mysql_install_db --user=mysql --datadir=/var/lib/mysql &&     sh -c 'mysqld_safe &' &&     sleep 5s  &&     mysqladmin -uroot password '334cc35b3c704593' &&     mysql -e \"source /var/www/html/geez.sql;\" -uroot -p334cc35b3c704593" shape="box"];
  "sha256:eb204a4a146432194498556371961d8bbf6abf9abfc9f91309220673fd1e0d3c" [label="/bin/sh -c mkdir -p /var/log/supervisor &&     mv /var/www/html/supervisord.conf /etc/ &&     chown -R www-data:www-data /var/www/html/ &&     chmod -R 755 /var/www/html/ &&     rm /var/www/html/geez.sql /var/www/html/index.html &&     cat /dev/null > /var/www/html/log.php" shape="box"];
  "sha256:d94ea4a1a76e5247efe7f907819f5c053f02d0e631be26589a21577d0c1d93b6" [label="sha256:d94ea4a1a76e5247efe7f907819f5c053f02d0e631be26589a21577d0c1d93b6" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:dbe8808a9e398d760ad0c116c6de12b8a7b761c96fc09956e4500c2ca93c237a" [label=""];
  "sha256:10c35767d49cbda135743ac56d724d230af31d84644c384b44024fbf766a5a19" -> "sha256:dbe8808a9e398d760ad0c116c6de12b8a7b761c96fc09956e4500c2ca93c237a" [label=""];
  "sha256:dbe8808a9e398d760ad0c116c6de12b8a7b761c96fc09956e4500c2ca93c237a" -> "sha256:4dd0b74c8fcfaeb70a4c13c589c2000df15ccc64e2b23546b605422582bc339e" [label=""];
  "sha256:4dd0b74c8fcfaeb70a4c13c589c2000df15ccc64e2b23546b605422582bc339e" -> "sha256:eb204a4a146432194498556371961d8bbf6abf9abfc9f91309220673fd1e0d3c" [label=""];
  "sha256:eb204a4a146432194498556371961d8bbf6abf9abfc9f91309220673fd1e0d3c" -> "sha256:d94ea4a1a76e5247efe7f907819f5c053f02d0e631be26589a21577d0c1d93b6" [label=""];
}

