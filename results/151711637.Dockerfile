[app/sources/151711637.Dockerfile]
digraph {
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" [label="docker-image://docker.io/library/ubuntu:precise" shape="ellipse"];
  "sha256:168050ce1f4a0d2f4524de733087cf2a566a5fb30ec776a840ac2cc5d784968c" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu precise main universe\" > /etc/apt/sources.list && \tapt-get update && \tapt-get -y upgrade && \tapt-get -y install mysql-client apache2 libapache2-mod-php5 pwgen python-setuptools vim-tiny php5-mysql openssh-server sudo php5-ldap unzip && \tapt-get clean && \trm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4efefe5b5ce83536b8daf6a0eeee4767b8c90a4736c277c6f27b919ccd82d5a9" [label="/bin/sh -c easy_install supervisor" shape="box"];
  "sha256:690b70e1730436bbe8b8e09cfeb145315818e5ede963a428b00d20d20c9405be" [label="local://context" shape="ellipse"];
  "sha256:5f630b8c0ea84088d51181002c563a63a2e26ac1233b70b7133ba7f80b372bee" [label="copy{src=/web-machine/start.sh, dest=/start.sh}" shape="note"];
  "sha256:2693414385607d2fbe69c3438d41bd12318420b09c0e69d4975e140a940a4f25" [label="copy{src=/web-machine/foreground.sh, dest=/etc/apache2/foreground.sh}" shape="note"];
  "sha256:90ee4b5213993d16654c03058441ff34e8681de8114fc11ec2dcbaff45a3f6ed" [label="copy{src=/web-machine/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:2c2e68a6f4068b1c25d2220496525b1a478591cb543dc00bf4c1396a059e8405" [label="/bin/sh -c mkdir -p /var/log/supervisord /var/run/sshd" shape="box"];
  "sha256:a773cab4f357825bdcff488f809a42ea87e7f38e5e60330f961ed257b97fbac1" [label="/bin/sh -c chmod 755 /start.sh && chmod 755 /etc/apache2/foreground.sh" shape="box"];
  "sha256:d10da81feb1174b32d74a069b4bb4495921812a3cf0dbbbb27e2b4f1b7cd1f08" [label="copy{src=/web-machine/joomla, dest=/etc/apache2/sites-available/}" shape="note"];
  "sha256:c12f16fa693e67040d7b96e8a0af01549593a78e5bdfed7e255a68784c596350" [label="/bin/sh -c a2ensite joomla" shape="box"];
  "sha256:9750fcfcddf79f01ff22d64e9c1d6562e8be4b585fd2cc73e341a0c2377a3561" [label="/bin/sh -c a2dissite 000-default" shape="box"];
  "sha256:ee456f5886d5dfc30619bf7452649415d003b9dd588b6ab7a0fdfe9d09e83803" [label="/bin/sh -c echo \"root:desdemona\" | chpasswd" shape="box"];
  "sha256:578a25b429fff9831ae562b3b3a4c6c308c4d2ead227bf27b55a928b51491459" [label="sha256:578a25b429fff9831ae562b3b3a4c6c308c4d2ead227bf27b55a928b51491459" shape="plaintext"];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" -> "sha256:168050ce1f4a0d2f4524de733087cf2a566a5fb30ec776a840ac2cc5d784968c" [label=""];
  "sha256:168050ce1f4a0d2f4524de733087cf2a566a5fb30ec776a840ac2cc5d784968c" -> "sha256:4efefe5b5ce83536b8daf6a0eeee4767b8c90a4736c277c6f27b919ccd82d5a9" [label=""];
  "sha256:4efefe5b5ce83536b8daf6a0eeee4767b8c90a4736c277c6f27b919ccd82d5a9" -> "sha256:5f630b8c0ea84088d51181002c563a63a2e26ac1233b70b7133ba7f80b372bee" [label=""];
  "sha256:690b70e1730436bbe8b8e09cfeb145315818e5ede963a428b00d20d20c9405be" -> "sha256:5f630b8c0ea84088d51181002c563a63a2e26ac1233b70b7133ba7f80b372bee" [label=""];
  "sha256:5f630b8c0ea84088d51181002c563a63a2e26ac1233b70b7133ba7f80b372bee" -> "sha256:2693414385607d2fbe69c3438d41bd12318420b09c0e69d4975e140a940a4f25" [label=""];
  "sha256:690b70e1730436bbe8b8e09cfeb145315818e5ede963a428b00d20d20c9405be" -> "sha256:2693414385607d2fbe69c3438d41bd12318420b09c0e69d4975e140a940a4f25" [label=""];
  "sha256:2693414385607d2fbe69c3438d41bd12318420b09c0e69d4975e140a940a4f25" -> "sha256:90ee4b5213993d16654c03058441ff34e8681de8114fc11ec2dcbaff45a3f6ed" [label=""];
  "sha256:690b70e1730436bbe8b8e09cfeb145315818e5ede963a428b00d20d20c9405be" -> "sha256:90ee4b5213993d16654c03058441ff34e8681de8114fc11ec2dcbaff45a3f6ed" [label=""];
  "sha256:90ee4b5213993d16654c03058441ff34e8681de8114fc11ec2dcbaff45a3f6ed" -> "sha256:2c2e68a6f4068b1c25d2220496525b1a478591cb543dc00bf4c1396a059e8405" [label=""];
  "sha256:2c2e68a6f4068b1c25d2220496525b1a478591cb543dc00bf4c1396a059e8405" -> "sha256:a773cab4f357825bdcff488f809a42ea87e7f38e5e60330f961ed257b97fbac1" [label=""];
  "sha256:a773cab4f357825bdcff488f809a42ea87e7f38e5e60330f961ed257b97fbac1" -> "sha256:d10da81feb1174b32d74a069b4bb4495921812a3cf0dbbbb27e2b4f1b7cd1f08" [label=""];
  "sha256:690b70e1730436bbe8b8e09cfeb145315818e5ede963a428b00d20d20c9405be" -> "sha256:d10da81feb1174b32d74a069b4bb4495921812a3cf0dbbbb27e2b4f1b7cd1f08" [label=""];
  "sha256:d10da81feb1174b32d74a069b4bb4495921812a3cf0dbbbb27e2b4f1b7cd1f08" -> "sha256:c12f16fa693e67040d7b96e8a0af01549593a78e5bdfed7e255a68784c596350" [label=""];
  "sha256:c12f16fa693e67040d7b96e8a0af01549593a78e5bdfed7e255a68784c596350" -> "sha256:9750fcfcddf79f01ff22d64e9c1d6562e8be4b585fd2cc73e341a0c2377a3561" [label=""];
  "sha256:9750fcfcddf79f01ff22d64e9c1d6562e8be4b585fd2cc73e341a0c2377a3561" -> "sha256:ee456f5886d5dfc30619bf7452649415d003b9dd588b6ab7a0fdfe9d09e83803" [label=""];
  "sha256:ee456f5886d5dfc30619bf7452649415d003b9dd588b6ab7a0fdfe9d09e83803" -> "sha256:578a25b429fff9831ae562b3b3a4c6c308c4d2ead227bf27b55a928b51491459" [label=""];
}

