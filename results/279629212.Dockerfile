[app/sources/279629212.Dockerfile]
digraph {
  "sha256:5cf0d88268917069e31785399a2650ad285cd78b10d1927240ac9a76697c1fb5" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:9f79a8857abbb555252698db44efdfe3e137fa855875827e2e31395ff083b725" [label="copy{src=/sources.list, dest=/etc/apt/}" shape="note"];
  "sha256:a2708a4e15a571c25f822349dc45f7c5ecf0d1e012b7f4c32f3072f0ee6d7a46" [label="/bin/sh -c apt-get update \t&& apt-get install -y apache2 php7.0 libapache2-mod-php7.0 mysql-server php7.0-mysql" shape="box"];
  "sha256:2fddfd41213a0993260075b95a533745de846f4ed855d508ad89ba0146f0fff3" [label="copy{src=/src, dest=/var/www/html}" shape="note"];
  "sha256:fa5367082ddaad776919824a4cd1dbeb3ddc9739e3ffcaab713d6b805e9d4f22" [label="copy{src=/web2.sql, dest=/tmp/}" shape="note"];
  "sha256:ffa7edfec9756197538630dcd02211d93dc1eb31f29235e74c42238b3dce5e62" [label="/bin/sh -c rm /var/www/html/index.html && chown www-data:www-data /var/www/html -R && mkdir /var/www/html/Uploads && chmod 666 /var/www/html/Uploads &&chown www-data:www-data /var/www/html/Uploads &&ln -s /var/lib/mysql/mysql.sock /tmp/mysql.sock && chown -R mysql:mysql /var/lib/mysql && service mysql start && mysql -e \"grant all privileges on *.* to 'root'@'%' identified by 'toor';\" && mysql -e \"grant all privileges on *.* to 'root'@'localhost' identified by 'toor';\" && mysql -u root -ptoor -e \"create database web2;\" && mysql -u root -ptoor -e \"show databases;\" && mysql -u root -ptoor web2</tmp/web2.sql && mysql -u root -ptoor -e \"show databases;\"" shape="box"];
  "sha256:eae22b0d54f6d06254ff218d76dd3d958ffe3a7f62f48b6020e55aa5be7fb4c7" [label="copy{src=/httpd-foreground, dest=/usr/bin/}" shape="note"];
  "sha256:efe1bb2d3b2e54fc5c893408d3ddb1f74dacc7b9241b9711518f1f3c6e1ddd41" [label="/bin/sh -c chmod a+x /usr/bin/httpd-foreground" shape="box"];
  "sha256:1e81495df97cc1af24a14fa58b4dc19c411c2d27428350fe003d2f9d4e020af4" [label="sha256:1e81495df97cc1af24a14fa58b4dc19c411c2d27428350fe003d2f9d4e020af4" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:9f79a8857abbb555252698db44efdfe3e137fa855875827e2e31395ff083b725" [label=""];
  "sha256:5cf0d88268917069e31785399a2650ad285cd78b10d1927240ac9a76697c1fb5" -> "sha256:9f79a8857abbb555252698db44efdfe3e137fa855875827e2e31395ff083b725" [label=""];
  "sha256:9f79a8857abbb555252698db44efdfe3e137fa855875827e2e31395ff083b725" -> "sha256:a2708a4e15a571c25f822349dc45f7c5ecf0d1e012b7f4c32f3072f0ee6d7a46" [label=""];
  "sha256:a2708a4e15a571c25f822349dc45f7c5ecf0d1e012b7f4c32f3072f0ee6d7a46" -> "sha256:2fddfd41213a0993260075b95a533745de846f4ed855d508ad89ba0146f0fff3" [label=""];
  "sha256:5cf0d88268917069e31785399a2650ad285cd78b10d1927240ac9a76697c1fb5" -> "sha256:2fddfd41213a0993260075b95a533745de846f4ed855d508ad89ba0146f0fff3" [label=""];
  "sha256:2fddfd41213a0993260075b95a533745de846f4ed855d508ad89ba0146f0fff3" -> "sha256:fa5367082ddaad776919824a4cd1dbeb3ddc9739e3ffcaab713d6b805e9d4f22" [label=""];
  "sha256:5cf0d88268917069e31785399a2650ad285cd78b10d1927240ac9a76697c1fb5" -> "sha256:fa5367082ddaad776919824a4cd1dbeb3ddc9739e3ffcaab713d6b805e9d4f22" [label=""];
  "sha256:fa5367082ddaad776919824a4cd1dbeb3ddc9739e3ffcaab713d6b805e9d4f22" -> "sha256:ffa7edfec9756197538630dcd02211d93dc1eb31f29235e74c42238b3dce5e62" [label=""];
  "sha256:ffa7edfec9756197538630dcd02211d93dc1eb31f29235e74c42238b3dce5e62" -> "sha256:eae22b0d54f6d06254ff218d76dd3d958ffe3a7f62f48b6020e55aa5be7fb4c7" [label=""];
  "sha256:5cf0d88268917069e31785399a2650ad285cd78b10d1927240ac9a76697c1fb5" -> "sha256:eae22b0d54f6d06254ff218d76dd3d958ffe3a7f62f48b6020e55aa5be7fb4c7" [label=""];
  "sha256:eae22b0d54f6d06254ff218d76dd3d958ffe3a7f62f48b6020e55aa5be7fb4c7" -> "sha256:efe1bb2d3b2e54fc5c893408d3ddb1f74dacc7b9241b9711518f1f3c6e1ddd41" [label=""];
  "sha256:efe1bb2d3b2e54fc5c893408d3ddb1f74dacc7b9241b9711518f1f3c6e1ddd41" -> "sha256:1e81495df97cc1af24a14fa58b4dc19c411c2d27428350fe003d2f9d4e020af4" [label=""];
}

