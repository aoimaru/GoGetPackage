[app/sources/145117604.Dockerfile]
digraph {
  "sha256:54f270669a9f8694ed44aa23b4a348d99896f610e9964ab91220a4f77089050e" [label="local://context" shape="ellipse"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:b120929716e3de2abd2aba567103607caf9129066267b5bcb216ed573e4d1bfa" [label="copy{src=/my.cnf, dest=/etc/my.cnf}" shape="note"];
  "sha256:6275c212a641efd75be94fc06df5b1018ed35e6c799ccb80197964eacf68eea2" [label="copy{src=/supervisord.conf, dest=/etc/}" shape="note"];
  "sha256:06560fdd5c7ad7bc8e6e199d8ec0116db14f23713ae16ce27c78c2ee90272d1e" [label="copy{src=/create.mysql, dest=/etc/create.mysql}" shape="note"];
  "sha256:48fc5378f7d242b9eb37816c08f58c0cd122da30f5dc47fe68cdc55435435630" [label="copy{src=/bootstrap.json, dest=/etc/bootstrap.json}" shape="note"];
  "sha256:ea4b51bba42bbae0c0de5fa52e805e9f10bfaf00b6aa6e616011c70beecad966" [label="copy{src=/gencert.sh, dest=/etc/gencert.sh}" shape="note"];
  "sha256:8404378f1c0485cf0527a9924ddb4ff839bcd050f57d68f9e9d0d68fc1e3b363" [label="copy{src=/gencert, dest=/etc/gencert}" shape="note"];
  "sha256:0a28d9b35ce68ef9506388e679d2765f50c41e278e1199cf7104aaff49896f29" [label="copy{src=/pydio.conf, dest=/etc/pydio.conf}" shape="note"];
  "sha256:337dfe48b29a71fb09415cc9cd0d62c00402b3c26ee871b7c15860d4e1ba3357" [label="copy{src=/pre_conf_pydio.sh, dest=/etc/pre_conf_pydio.sh}" shape="note"];
  "sha256:cc1a220eaf8cc8331d450d5fb54e5f3f72a7b64c66de3b2ab2cf81d6a2dd6357" [label="copy{src=/configure_php_modules.sh, dest=/etc/configure_php_modules.sh}" shape="note"];
  "sha256:867cd3ee196f66aa173d7c1762eb91a9acd63ffa35e269dba68626a47ee21f65" [label="copy{src=/public.htaccess, dest=/etc/public.htaccess}" shape="note"];
  "sha256:426ad04ffcc42c71f6536b070f716fbb6756d94854bc8252583ac37cddacd1e6" [label="copy{src=/root.htaccess, dest=/etc/root.htaccess}" shape="note"];
  "sha256:3cac20c79a223feaaaebacf5982f0183423bc9b5fba0c8fc40924c028540c431" [label="/bin/sh -c yum install -y wget" shape="box"];
  "sha256:d2d71db626cd82cefb873546bba4dd78d614214143cc191d9bbcfbe3d81088b1" [label="/bin/sh -c rpm -Uvh http://dl.ajaxplorer.info/repos/pydio-release-1-1.noarch.rpm" shape="box"];
  "sha256:153e3f303a731104c736663f1db643e47c22d13807aee249a3283992fadf39b6" [label="/bin/sh -c wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm" shape="box"];
  "sha256:e035448371588d62970d2eb5b846b7ecdb783ece70f3ea7b411c0da680966353" [label="/bin/sh -c wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm" shape="box"];
  "sha256:c83f3ba5d98c73eaf9b0af2222961a88913d68ab2ed75dd8a39746e991e8acfc" [label="/bin/sh -c wget -q -O – http://www.atomicorp.com/installers/atomic | sh" shape="box"];
  "sha256:bdc1086d0385b631dbb4e4c5b8e8c4cb4f48b2045c231082af15785a288242d1" [label="/bin/sh -c rpm -Uvh remi-release-6*.rpm epel-release-6*.rpm" shape="box"];
  "sha256:d9e83f0c2db99037e91c20d5afd4c4e04a83128561b85cdeb57cc7f1a8eb84f6" [label="/bin/sh -c yum -y update" shape="box"];
  "sha256:d223eebb870389d72cb07084eef2af7c47da128abc75424597345baad24bac5d" [label="/bin/sh -c yum -y install httpd php-mcrypt* ImageMagick ImageMagick-devel ImageMagick-perl gcc cc php-pecl-apc php php-mysql php-cli php-devel php-gd php-pecl-memcache php-pspell php-snmp php-xmlrpc php-xml mod_ssl openssl mysql-server mysql php-ioncube-loader php-ldap" shape="box"];
  "sha256:6c39a930fe538721e1fbd045dd16c19f9c00b736c771d4c814e0657de21859a4" [label="/bin/sh -c chmod 0777 /etc/create.mysql" shape="box"];
  "sha256:9306efbd6b0d06d85c17f517fc1b27c57539bb8c50874f0dd2049dd3b809b328" [label="/bin/sh -c chmod +x /etc/gencert.sh" shape="box"];
  "sha256:ea0ba228d82be8fc3d51e413fef520a54dfaa8c8a78b434def46abf262f511f0" [label="/bin/sh -c chmod +x /etc/pre_conf_pydio.sh" shape="box"];
  "sha256:0347adac56b181a86b81d6089d2821a2e694106e4a2f77c9ef444b0d9b7fd620" [label="/bin/sh -c chmod +x /etc/configure_php_modules.sh" shape="box"];
  "sha256:66ee9430d2d91106be6d537570db6525434ea35d08ef6c7d5ec7dfb010e52360" [label="/bin/sh -c /etc/configure_php_modules.sh" shape="box"];
  "sha256:9ff0f55ff3a934bf1b2c305660cf92f0907ccce12d6ec8a28c6e324c0520380e" [label="/bin/sh -c echo -e \"NETWORKING=yes\" > /etc/sysconfig/network" shape="box"];
  "sha256:a1f9f680126282ac9ea1b0cf36a74977cd186897b048395c95d7bfe6c37b78f4" [label="/bin/sh -c yum install -y --disablerepo=pydio-testing pydio" shape="box"];
  "sha256:9cfb1d9ce2cbaa9c154129baaec206bc53b37cced3c85af8bc304e0839d5123d" [label="/bin/sh -c /etc/pre_conf_pydio.sh" shape="box"];
  "sha256:86ed80d042819d9c9d35d1b58c313f4f1d43b7accb246de3c2276121e257f187" [label="/bin/sh -c yum install -y python-pip && pip install \"pip>=1.4,<1.5\" --upgrade" shape="box"];
  "sha256:6e07ff8e0f70bc9b63cb22db27bfb61cc213b13abb50b17be9e902e45340a754" [label="/bin/sh -c pip install supervisor" shape="box"];
  "sha256:2114a8bcbda6059595b288c4d1e354e6cc9be3c74e078cec761e82934a8b898a" [label="sha256:2114a8bcbda6059595b288c4d1e354e6cc9be3c74e078cec761e82934a8b898a" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:b120929716e3de2abd2aba567103607caf9129066267b5bcb216ed573e4d1bfa" [label=""];
  "sha256:54f270669a9f8694ed44aa23b4a348d99896f610e9964ab91220a4f77089050e" -> "sha256:b120929716e3de2abd2aba567103607caf9129066267b5bcb216ed573e4d1bfa" [label=""];
  "sha256:b120929716e3de2abd2aba567103607caf9129066267b5bcb216ed573e4d1bfa" -> "sha256:6275c212a641efd75be94fc06df5b1018ed35e6c799ccb80197964eacf68eea2" [label=""];
  "sha256:54f270669a9f8694ed44aa23b4a348d99896f610e9964ab91220a4f77089050e" -> "sha256:6275c212a641efd75be94fc06df5b1018ed35e6c799ccb80197964eacf68eea2" [label=""];
  "sha256:6275c212a641efd75be94fc06df5b1018ed35e6c799ccb80197964eacf68eea2" -> "sha256:06560fdd5c7ad7bc8e6e199d8ec0116db14f23713ae16ce27c78c2ee90272d1e" [label=""];
  "sha256:54f270669a9f8694ed44aa23b4a348d99896f610e9964ab91220a4f77089050e" -> "sha256:06560fdd5c7ad7bc8e6e199d8ec0116db14f23713ae16ce27c78c2ee90272d1e" [label=""];
  "sha256:06560fdd5c7ad7bc8e6e199d8ec0116db14f23713ae16ce27c78c2ee90272d1e" -> "sha256:48fc5378f7d242b9eb37816c08f58c0cd122da30f5dc47fe68cdc55435435630" [label=""];
  "sha256:54f270669a9f8694ed44aa23b4a348d99896f610e9964ab91220a4f77089050e" -> "sha256:48fc5378f7d242b9eb37816c08f58c0cd122da30f5dc47fe68cdc55435435630" [label=""];
  "sha256:48fc5378f7d242b9eb37816c08f58c0cd122da30f5dc47fe68cdc55435435630" -> "sha256:ea4b51bba42bbae0c0de5fa52e805e9f10bfaf00b6aa6e616011c70beecad966" [label=""];
  "sha256:54f270669a9f8694ed44aa23b4a348d99896f610e9964ab91220a4f77089050e" -> "sha256:ea4b51bba42bbae0c0de5fa52e805e9f10bfaf00b6aa6e616011c70beecad966" [label=""];
  "sha256:ea4b51bba42bbae0c0de5fa52e805e9f10bfaf00b6aa6e616011c70beecad966" -> "sha256:8404378f1c0485cf0527a9924ddb4ff839bcd050f57d68f9e9d0d68fc1e3b363" [label=""];
  "sha256:54f270669a9f8694ed44aa23b4a348d99896f610e9964ab91220a4f77089050e" -> "sha256:8404378f1c0485cf0527a9924ddb4ff839bcd050f57d68f9e9d0d68fc1e3b363" [label=""];
  "sha256:8404378f1c0485cf0527a9924ddb4ff839bcd050f57d68f9e9d0d68fc1e3b363" -> "sha256:0a28d9b35ce68ef9506388e679d2765f50c41e278e1199cf7104aaff49896f29" [label=""];
  "sha256:54f270669a9f8694ed44aa23b4a348d99896f610e9964ab91220a4f77089050e" -> "sha256:0a28d9b35ce68ef9506388e679d2765f50c41e278e1199cf7104aaff49896f29" [label=""];
  "sha256:0a28d9b35ce68ef9506388e679d2765f50c41e278e1199cf7104aaff49896f29" -> "sha256:337dfe48b29a71fb09415cc9cd0d62c00402b3c26ee871b7c15860d4e1ba3357" [label=""];
  "sha256:54f270669a9f8694ed44aa23b4a348d99896f610e9964ab91220a4f77089050e" -> "sha256:337dfe48b29a71fb09415cc9cd0d62c00402b3c26ee871b7c15860d4e1ba3357" [label=""];
  "sha256:337dfe48b29a71fb09415cc9cd0d62c00402b3c26ee871b7c15860d4e1ba3357" -> "sha256:cc1a220eaf8cc8331d450d5fb54e5f3f72a7b64c66de3b2ab2cf81d6a2dd6357" [label=""];
  "sha256:54f270669a9f8694ed44aa23b4a348d99896f610e9964ab91220a4f77089050e" -> "sha256:cc1a220eaf8cc8331d450d5fb54e5f3f72a7b64c66de3b2ab2cf81d6a2dd6357" [label=""];
  "sha256:cc1a220eaf8cc8331d450d5fb54e5f3f72a7b64c66de3b2ab2cf81d6a2dd6357" -> "sha256:867cd3ee196f66aa173d7c1762eb91a9acd63ffa35e269dba68626a47ee21f65" [label=""];
  "sha256:54f270669a9f8694ed44aa23b4a348d99896f610e9964ab91220a4f77089050e" -> "sha256:867cd3ee196f66aa173d7c1762eb91a9acd63ffa35e269dba68626a47ee21f65" [label=""];
  "sha256:867cd3ee196f66aa173d7c1762eb91a9acd63ffa35e269dba68626a47ee21f65" -> "sha256:426ad04ffcc42c71f6536b070f716fbb6756d94854bc8252583ac37cddacd1e6" [label=""];
  "sha256:54f270669a9f8694ed44aa23b4a348d99896f610e9964ab91220a4f77089050e" -> "sha256:426ad04ffcc42c71f6536b070f716fbb6756d94854bc8252583ac37cddacd1e6" [label=""];
  "sha256:426ad04ffcc42c71f6536b070f716fbb6756d94854bc8252583ac37cddacd1e6" -> "sha256:3cac20c79a223feaaaebacf5982f0183423bc9b5fba0c8fc40924c028540c431" [label=""];
  "sha256:3cac20c79a223feaaaebacf5982f0183423bc9b5fba0c8fc40924c028540c431" -> "sha256:d2d71db626cd82cefb873546bba4dd78d614214143cc191d9bbcfbe3d81088b1" [label=""];
  "sha256:d2d71db626cd82cefb873546bba4dd78d614214143cc191d9bbcfbe3d81088b1" -> "sha256:153e3f303a731104c736663f1db643e47c22d13807aee249a3283992fadf39b6" [label=""];
  "sha256:153e3f303a731104c736663f1db643e47c22d13807aee249a3283992fadf39b6" -> "sha256:e035448371588d62970d2eb5b846b7ecdb783ece70f3ea7b411c0da680966353" [label=""];
  "sha256:e035448371588d62970d2eb5b846b7ecdb783ece70f3ea7b411c0da680966353" -> "sha256:c83f3ba5d98c73eaf9b0af2222961a88913d68ab2ed75dd8a39746e991e8acfc" [label=""];
  "sha256:c83f3ba5d98c73eaf9b0af2222961a88913d68ab2ed75dd8a39746e991e8acfc" -> "sha256:bdc1086d0385b631dbb4e4c5b8e8c4cb4f48b2045c231082af15785a288242d1" [label=""];
  "sha256:bdc1086d0385b631dbb4e4c5b8e8c4cb4f48b2045c231082af15785a288242d1" -> "sha256:d9e83f0c2db99037e91c20d5afd4c4e04a83128561b85cdeb57cc7f1a8eb84f6" [label=""];
  "sha256:d9e83f0c2db99037e91c20d5afd4c4e04a83128561b85cdeb57cc7f1a8eb84f6" -> "sha256:d223eebb870389d72cb07084eef2af7c47da128abc75424597345baad24bac5d" [label=""];
  "sha256:d223eebb870389d72cb07084eef2af7c47da128abc75424597345baad24bac5d" -> "sha256:6c39a930fe538721e1fbd045dd16c19f9c00b736c771d4c814e0657de21859a4" [label=""];
  "sha256:6c39a930fe538721e1fbd045dd16c19f9c00b736c771d4c814e0657de21859a4" -> "sha256:9306efbd6b0d06d85c17f517fc1b27c57539bb8c50874f0dd2049dd3b809b328" [label=""];
  "sha256:9306efbd6b0d06d85c17f517fc1b27c57539bb8c50874f0dd2049dd3b809b328" -> "sha256:ea0ba228d82be8fc3d51e413fef520a54dfaa8c8a78b434def46abf262f511f0" [label=""];
  "sha256:ea0ba228d82be8fc3d51e413fef520a54dfaa8c8a78b434def46abf262f511f0" -> "sha256:0347adac56b181a86b81d6089d2821a2e694106e4a2f77c9ef444b0d9b7fd620" [label=""];
  "sha256:0347adac56b181a86b81d6089d2821a2e694106e4a2f77c9ef444b0d9b7fd620" -> "sha256:66ee9430d2d91106be6d537570db6525434ea35d08ef6c7d5ec7dfb010e52360" [label=""];
  "sha256:66ee9430d2d91106be6d537570db6525434ea35d08ef6c7d5ec7dfb010e52360" -> "sha256:9ff0f55ff3a934bf1b2c305660cf92f0907ccce12d6ec8a28c6e324c0520380e" [label=""];
  "sha256:9ff0f55ff3a934bf1b2c305660cf92f0907ccce12d6ec8a28c6e324c0520380e" -> "sha256:a1f9f680126282ac9ea1b0cf36a74977cd186897b048395c95d7bfe6c37b78f4" [label=""];
  "sha256:a1f9f680126282ac9ea1b0cf36a74977cd186897b048395c95d7bfe6c37b78f4" -> "sha256:9cfb1d9ce2cbaa9c154129baaec206bc53b37cced3c85af8bc304e0839d5123d" [label=""];
  "sha256:9cfb1d9ce2cbaa9c154129baaec206bc53b37cced3c85af8bc304e0839d5123d" -> "sha256:86ed80d042819d9c9d35d1b58c313f4f1d43b7accb246de3c2276121e257f187" [label=""];
  "sha256:86ed80d042819d9c9d35d1b58c313f4f1d43b7accb246de3c2276121e257f187" -> "sha256:6e07ff8e0f70bc9b63cb22db27bfb61cc213b13abb50b17be9e902e45340a754" [label=""];
  "sha256:6e07ff8e0f70bc9b63cb22db27bfb61cc213b13abb50b17be9e902e45340a754" -> "sha256:2114a8bcbda6059595b288c4d1e354e6cc9be3c74e078cec761e82934a8b898a" [label=""];
}
