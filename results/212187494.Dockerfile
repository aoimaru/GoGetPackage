[app/sources/212187494.Dockerfile]
digraph {
  "sha256:643e1529e350721cc3e1664b3c0df339babaa226c53cb76ca7d63246fc2e87d8" [label="docker-image://docker.io/alic/owncloud:one" shape="ellipse"];
  "sha256:99fd12796ce735da260ec3699ea5a14243c509eaab9d49f5a0ff4ac50640f58b" [label="/bin/sh -c apt-get -y install curl libcurl3 wget" shape="box"];
  "sha256:6fbe592a3e6533f9dee6692282aeaeaf212c382bba9d08cffdd60410de7bdbe5" [label="/bin/sh -c apt-get install -y apache2   && a2enmod rewrite   && a2enmod headers" shape="box"];
  "sha256:27bde67d19433f409d6530d40be9455d4a61c91567a36c2922c74620443c299d" [label="/bin/sh -c apt-get install -y php5 php5-gd php-xml-parser php5-intl php5-sqlite php5-mysql php5-curl" shape="box"];
  "sha256:b7dce14c2af3a3c6413afc4704b47bedaa7c671cf2496ce0d32d55a7e57b70e6" [label="/bin/sh -c apt-get install -y mysql-server" shape="box"];
  "sha256:20e2477d0fa9a588a0c1cfcb40ba22ad6f4477d9adf1cd1563fe87000ca389fc" [label="/bin/sh -c apt-get install -y smbclient" shape="box"];
  "sha256:367b3c25aaa48711b3ab1ea612d28c8baaf661e7ba9f9d0c0afd84818644fed5" [label="/bin/sh -c wget -P /root/ http://sise.samego.com/source/Linux/software/64-os/server/owncloud-%E4%BA%91%E7%9B%98/owncloud-9.0.2.tar.bz2   && tar xjf /root/owncloud-9.0.2.tar.bz2 -C /var/www/   && mkdir /var/www/owncloud/data   && chmod 770 /var/www/owncloud/data   && mkdir /var/www/owncloud/data/data   && mkdir /var/www/owncloud/data/config   && mkdir /var/www/owncloud/data/apps" shape="box"];
  "sha256:7b9c5f99e2191453b360df51079cdb469c40913de6aef92929827f57ce2b5fdf" [label="/bin/sh -c sed -i \"s/Listen 80/Listen 8028/g\" /etc/apache2/ports.conf   && mv /etc/apache2/sites-enabled/000-default.conf /etc/apache2/sites-enabled/default.conf   && sed -i \"s/*:80/*:8028/g\" /etc/apache2/sites-enabled/default.conf   && sed -i \"s/# Global configuration/# Global configuration \\nServerName 127.0.0.1/g\" /etc/apache2/apache2.conf   && sed -i  \"s/html/owncloud/g\" /etc/apache2/sites-enabled/default.conf" shape="box"];
  "sha256:c89d1ba0b35685a22c3252eeb3c299015dd525697e9469466b75f7971ce247ea" [label="sha256:c89d1ba0b35685a22c3252eeb3c299015dd525697e9469466b75f7971ce247ea" shape="plaintext"];
  "sha256:643e1529e350721cc3e1664b3c0df339babaa226c53cb76ca7d63246fc2e87d8" -> "sha256:99fd12796ce735da260ec3699ea5a14243c509eaab9d49f5a0ff4ac50640f58b" [label=""];
  "sha256:99fd12796ce735da260ec3699ea5a14243c509eaab9d49f5a0ff4ac50640f58b" -> "sha256:6fbe592a3e6533f9dee6692282aeaeaf212c382bba9d08cffdd60410de7bdbe5" [label=""];
  "sha256:6fbe592a3e6533f9dee6692282aeaeaf212c382bba9d08cffdd60410de7bdbe5" -> "sha256:27bde67d19433f409d6530d40be9455d4a61c91567a36c2922c74620443c299d" [label=""];
  "sha256:27bde67d19433f409d6530d40be9455d4a61c91567a36c2922c74620443c299d" -> "sha256:b7dce14c2af3a3c6413afc4704b47bedaa7c671cf2496ce0d32d55a7e57b70e6" [label=""];
  "sha256:b7dce14c2af3a3c6413afc4704b47bedaa7c671cf2496ce0d32d55a7e57b70e6" -> "sha256:20e2477d0fa9a588a0c1cfcb40ba22ad6f4477d9adf1cd1563fe87000ca389fc" [label=""];
  "sha256:20e2477d0fa9a588a0c1cfcb40ba22ad6f4477d9adf1cd1563fe87000ca389fc" -> "sha256:367b3c25aaa48711b3ab1ea612d28c8baaf661e7ba9f9d0c0afd84818644fed5" [label=""];
  "sha256:367b3c25aaa48711b3ab1ea612d28c8baaf661e7ba9f9d0c0afd84818644fed5" -> "sha256:7b9c5f99e2191453b360df51079cdb469c40913de6aef92929827f57ce2b5fdf" [label=""];
  "sha256:7b9c5f99e2191453b360df51079cdb469c40913de6aef92929827f57ce2b5fdf" -> "sha256:c89d1ba0b35685a22c3252eeb3c299015dd525697e9469466b75f7971ce247ea" [label=""];
}

