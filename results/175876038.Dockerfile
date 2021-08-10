[app/sources/175876038.Dockerfile]
digraph {
  "sha256:d7b04e39a9dc9765de5cb395b5b9977e2e6e4b83175f3b4c47f346881361285b" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:71354e7c1019c298f4a7cb8ce33f0240faae9e5a1a7838d036c4c4a598bb94e3" [label="/bin/sh -c locale-gen en_US.UTF-8 && echo 'LANG=\"en_US.UTF-8\"' > /etc/default/locale" shape="box"];
  "sha256:a09c4efa678acb877c997688cd885be42f92658c15a511190990e2e254076f2b" [label="/bin/sh -c apt-get -q -y update" shape="box"];
  "sha256:f0c2b2cc847045fac333c5ec28ceff41046cc99c4695af26f658d630c6b665c6" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get -q -y install         python-minimal         python-dev         python-virtualenv         libpq-dev         libxml2-dev         libxslt1-dev         wget         postfix         build-essential         git-core         apache2         libapache2-mod-wsgi         libgeos-dev         libmysqlclient-dev         libcurl4-openssl-dev         libldap2-dev         libsasl2-dev         libssl-dev         gdal-bin         postgresql-client" shape="box"];
  "sha256:459f06861d4fe9f9f9d35dc4d12ee236cae6f6688e75979bf11cc06f9dc30fb1" [label="copy{src=/apache.wsgi, dest=/etc/ckan/apache.wsgi}" shape="note"];
  "sha256:2648c4400ca47c0198baa1cb1fbf9abbebc93ab3da21f454048936443f57b023" [label="copy{src=/ckan_default.conf, dest=/etc/apache2/sites-available/ckan_default.conf}" shape="note"];
  "sha256:4da71250b7f46169d798ece06064721cd797484ca9899d4ea4179a9927986754" [label="copy{src=/ports.conf, dest=/etc/apache2/ports.conf}" shape="note"];
  "sha256:1b3a296cbac25675daed6a88af9d6d312e5896c2306348a31d5c922ebe2aff8d" [label="/bin/sh -c a2ensite ckan_default" shape="box"];
  "sha256:5e246315545025e02d8244d4177a76f03f5f6c5cdf245048eaba3d94769a6513" [label="/bin/sh -c a2dissite 000-default" shape="box"];
  "sha256:92469a4bf0405240b3ef1f832ba334ef5f62bc091d20a82c8dc065e1ade283f7" [label="/bin/sh -c mkdir -p /var/www/storage" shape="box"];
  "sha256:4052ec562427ae52faa36484d91de2dbf5429c79b252fe776be6e79ac822cc41" [label="/bin/sh -c chown -R www-data:www-data /var/www/" shape="box"];
  "sha256:ad0a75732a7ef5a66c2514a2be1b433f2daac127a8ff68a5041441df40f467c8" [label="/bin/sh -c usermod -u 1000 -d /var/www/storage www-data" shape="box"];
  "sha256:f5f579cf9ca33a731f4cbebdbe1b46fda8a552e849110a1496595acbdb807ab8" [label="sha256:f5f579cf9ca33a731f4cbebdbe1b46fda8a552e849110a1496595acbdb807ab8" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:71354e7c1019c298f4a7cb8ce33f0240faae9e5a1a7838d036c4c4a598bb94e3" [label=""];
  "sha256:71354e7c1019c298f4a7cb8ce33f0240faae9e5a1a7838d036c4c4a598bb94e3" -> "sha256:a09c4efa678acb877c997688cd885be42f92658c15a511190990e2e254076f2b" [label=""];
  "sha256:a09c4efa678acb877c997688cd885be42f92658c15a511190990e2e254076f2b" -> "sha256:f0c2b2cc847045fac333c5ec28ceff41046cc99c4695af26f658d630c6b665c6" [label=""];
  "sha256:f0c2b2cc847045fac333c5ec28ceff41046cc99c4695af26f658d630c6b665c6" -> "sha256:459f06861d4fe9f9f9d35dc4d12ee236cae6f6688e75979bf11cc06f9dc30fb1" [label=""];
  "sha256:d7b04e39a9dc9765de5cb395b5b9977e2e6e4b83175f3b4c47f346881361285b" -> "sha256:459f06861d4fe9f9f9d35dc4d12ee236cae6f6688e75979bf11cc06f9dc30fb1" [label=""];
  "sha256:459f06861d4fe9f9f9d35dc4d12ee236cae6f6688e75979bf11cc06f9dc30fb1" -> "sha256:2648c4400ca47c0198baa1cb1fbf9abbebc93ab3da21f454048936443f57b023" [label=""];
  "sha256:d7b04e39a9dc9765de5cb395b5b9977e2e6e4b83175f3b4c47f346881361285b" -> "sha256:2648c4400ca47c0198baa1cb1fbf9abbebc93ab3da21f454048936443f57b023" [label=""];
  "sha256:2648c4400ca47c0198baa1cb1fbf9abbebc93ab3da21f454048936443f57b023" -> "sha256:4da71250b7f46169d798ece06064721cd797484ca9899d4ea4179a9927986754" [label=""];
  "sha256:d7b04e39a9dc9765de5cb395b5b9977e2e6e4b83175f3b4c47f346881361285b" -> "sha256:4da71250b7f46169d798ece06064721cd797484ca9899d4ea4179a9927986754" [label=""];
  "sha256:4da71250b7f46169d798ece06064721cd797484ca9899d4ea4179a9927986754" -> "sha256:1b3a296cbac25675daed6a88af9d6d312e5896c2306348a31d5c922ebe2aff8d" [label=""];
  "sha256:1b3a296cbac25675daed6a88af9d6d312e5896c2306348a31d5c922ebe2aff8d" -> "sha256:5e246315545025e02d8244d4177a76f03f5f6c5cdf245048eaba3d94769a6513" [label=""];
  "sha256:5e246315545025e02d8244d4177a76f03f5f6c5cdf245048eaba3d94769a6513" -> "sha256:92469a4bf0405240b3ef1f832ba334ef5f62bc091d20a82c8dc065e1ade283f7" [label=""];
  "sha256:92469a4bf0405240b3ef1f832ba334ef5f62bc091d20a82c8dc065e1ade283f7" -> "sha256:4052ec562427ae52faa36484d91de2dbf5429c79b252fe776be6e79ac822cc41" [label=""];
  "sha256:4052ec562427ae52faa36484d91de2dbf5429c79b252fe776be6e79ac822cc41" -> "sha256:ad0a75732a7ef5a66c2514a2be1b433f2daac127a8ff68a5041441df40f467c8" [label=""];
  "sha256:ad0a75732a7ef5a66c2514a2be1b433f2daac127a8ff68a5041441df40f467c8" -> "sha256:f5f579cf9ca33a731f4cbebdbe1b46fda8a552e849110a1496595acbdb807ab8" [label=""];
}

