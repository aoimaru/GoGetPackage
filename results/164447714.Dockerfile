[app/sources/164447714.Dockerfile]
digraph {
  "sha256:567c279fe2274f64583363696b14e4004f4675a506098313d58cbb244d4c7308" [label="local://context" shape="ellipse"];
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" [label="docker-image://docker.io/library/php:5.6-apache" shape="ellipse"];
  "sha256:66e815da355636a44373bf7be62e11188efb4b3bf53464c7d01ba0486dc39093" [label="/bin/sh -c set -x;     apt-get update     && apt-get install -y --no-install-recommends         g++         libicu52         libicu-dev         libzip-dev         imagemagick     && ln -fs /usr/lib/x86_64-linux-gnu/libzip.so /usr/lib/     && docker-php-ext-install intl mysqli zip mbstring opcache fileinfo     && apt-get purge -y --auto-remove g++ libicu-dev libzip-dev     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2e710687e1aad7f4a4bc445cd8da6373f5ab34c291bcc5e99a129147ef42452d" [label="/bin/sh -c a2enmod rewrite" shape="box"];
  "sha256:cee87d109b5ee34319a771e1e95a9b2de53997a57f8de998cd021b15dd69d97a" [label="/bin/sh -c gpg --keyserver pool.sks-keyservers.net --recv-keys     441276E9CCD15F44F6D97D18C119E1A64D70938E     41B2ABE817ADD3E52BDA946F72BC1C5D23107F8A     162432D9E81C1C618B301EECEE1F663462D84F01     1D98867E82982C8FE0ABC25F9B69B3109D3BB7B0     3CEF8262806D3F0B6BA1DBDD7956EE477F901A30     280DB7845A1DCAC92BB5A00A946B02565DC00AA7" shape="box"];
  "sha256:a2d654ff73c924415e7d2043c6d220e9bc5a40f5b05acfb420431da29c11872d" [label="/bin/sh -c MW_VER_MAJOR_PLUS_MINOR=$(php -r '$parts=explode(\".\", $_ENV[\"MEDIAWIKI_VERSION\"], 3); echo \"{$parts[0]}.{$parts[1]}\";');     MEDIAWIKI_DOWNLOAD_URL=\"https://releases.wikimedia.org/mediawiki/$MW_VER_MAJOR_PLUS_MINOR/mediawiki-$MEDIAWIKI_VERSION.tar.gz\";     set -x;     mkdir -p /usr/src/mediawiki     && curl -fSL \"$MEDIAWIKI_DOWNLOAD_URL\" -o mediawiki.tar.gz     && curl -fSL \"${MEDIAWIKI_DOWNLOAD_URL}.sig\" -o mediawiki.tar.gz.sig     && gpg --verify mediawiki.tar.gz.sig     && tar -xf mediawiki.tar.gz -C /usr/src/mediawiki --strip-components=1     && rm -f mediawiki.tar.gz mediawiki.tar.gz.sig" shape="box"];
  "sha256:9ad992b8e81d3526be3b2ddfec798e7685e543b063c709c4b9fb0d9593d5c7bd" [label="copy{src=/php.ini, dest=/usr/local/etc/php/conf.d/mediawiki.ini}" shape="note"];
  "sha256:b9338b6d7dd1f9da2834367991d0a609cc80e9c2dfa2c5fa5d79d1e190b2d57f" [label="/bin/sh -c set -x;     apt-get update     && apt-get install -y --no-install-recommends         libldb-dev         libaprutil1-dev     && ln -fs /usr/lib/x86_64-linux-gnu/libldap.so /usr/lib/     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:73658e7642194b24ddf277b4a67f2e2b5a82dcaff877cf73d1c8cd3a2175cfd2" [label="/bin/sh -c docker-php-ext-install ldap" shape="box"];
  "sha256:d32cf33d9217318903f42f4dbb415ed08835069306e31ea16b0e56649b939063" [label="copy{src=/apache/mediawiki.conf, dest=/etc/apache2/}" shape="note"];
  "sha256:0898f6c3ed981000f24910e354b94975e7f1cde776c2f4c0d7f540d2baa57839" [label="/bin/sh -c echo \"Include /etc/apache2/mediawiki.conf\" >> /etc/apache2/apache2.conf" shape="box"];
  "sha256:ffdab6622622a3e2c9dbaa80edc72ede87bfa1b7fccd629065ed28e888307b46" [label="copy{src=/extensions, dest=/usr/src/mediawiki/extensions/}" shape="note"];
  "sha256:eb2437a6d9e5ea8b4ade79199760a295fb967d12c5289ad60be0853a55a8ae00" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:a9835ab419d4525fd744a7b8a01c4186781f744c634b8f1dca7da521e47c4512" [label="sha256:a9835ab419d4525fd744a7b8a01c4186781f744c634b8f1dca7da521e47c4512" shape="plaintext"];
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" -> "sha256:66e815da355636a44373bf7be62e11188efb4b3bf53464c7d01ba0486dc39093" [label=""];
  "sha256:66e815da355636a44373bf7be62e11188efb4b3bf53464c7d01ba0486dc39093" -> "sha256:2e710687e1aad7f4a4bc445cd8da6373f5ab34c291bcc5e99a129147ef42452d" [label=""];
  "sha256:2e710687e1aad7f4a4bc445cd8da6373f5ab34c291bcc5e99a129147ef42452d" -> "sha256:cee87d109b5ee34319a771e1e95a9b2de53997a57f8de998cd021b15dd69d97a" [label=""];
  "sha256:cee87d109b5ee34319a771e1e95a9b2de53997a57f8de998cd021b15dd69d97a" -> "sha256:a2d654ff73c924415e7d2043c6d220e9bc5a40f5b05acfb420431da29c11872d" [label=""];
  "sha256:a2d654ff73c924415e7d2043c6d220e9bc5a40f5b05acfb420431da29c11872d" -> "sha256:9ad992b8e81d3526be3b2ddfec798e7685e543b063c709c4b9fb0d9593d5c7bd" [label=""];
  "sha256:567c279fe2274f64583363696b14e4004f4675a506098313d58cbb244d4c7308" -> "sha256:9ad992b8e81d3526be3b2ddfec798e7685e543b063c709c4b9fb0d9593d5c7bd" [label=""];
  "sha256:9ad992b8e81d3526be3b2ddfec798e7685e543b063c709c4b9fb0d9593d5c7bd" -> "sha256:b9338b6d7dd1f9da2834367991d0a609cc80e9c2dfa2c5fa5d79d1e190b2d57f" [label=""];
  "sha256:b9338b6d7dd1f9da2834367991d0a609cc80e9c2dfa2c5fa5d79d1e190b2d57f" -> "sha256:73658e7642194b24ddf277b4a67f2e2b5a82dcaff877cf73d1c8cd3a2175cfd2" [label=""];
  "sha256:73658e7642194b24ddf277b4a67f2e2b5a82dcaff877cf73d1c8cd3a2175cfd2" -> "sha256:d32cf33d9217318903f42f4dbb415ed08835069306e31ea16b0e56649b939063" [label=""];
  "sha256:567c279fe2274f64583363696b14e4004f4675a506098313d58cbb244d4c7308" -> "sha256:d32cf33d9217318903f42f4dbb415ed08835069306e31ea16b0e56649b939063" [label=""];
  "sha256:d32cf33d9217318903f42f4dbb415ed08835069306e31ea16b0e56649b939063" -> "sha256:0898f6c3ed981000f24910e354b94975e7f1cde776c2f4c0d7f540d2baa57839" [label=""];
  "sha256:0898f6c3ed981000f24910e354b94975e7f1cde776c2f4c0d7f540d2baa57839" -> "sha256:ffdab6622622a3e2c9dbaa80edc72ede87bfa1b7fccd629065ed28e888307b46" [label=""];
  "sha256:567c279fe2274f64583363696b14e4004f4675a506098313d58cbb244d4c7308" -> "sha256:ffdab6622622a3e2c9dbaa80edc72ede87bfa1b7fccd629065ed28e888307b46" [label=""];
  "sha256:ffdab6622622a3e2c9dbaa80edc72ede87bfa1b7fccd629065ed28e888307b46" -> "sha256:eb2437a6d9e5ea8b4ade79199760a295fb967d12c5289ad60be0853a55a8ae00" [label=""];
  "sha256:567c279fe2274f64583363696b14e4004f4675a506098313d58cbb244d4c7308" -> "sha256:eb2437a6d9e5ea8b4ade79199760a295fb967d12c5289ad60be0853a55a8ae00" [label=""];
  "sha256:eb2437a6d9e5ea8b4ade79199760a295fb967d12c5289ad60be0853a55a8ae00" -> "sha256:a9835ab419d4525fd744a7b8a01c4186781f744c634b8f1dca7da521e47c4512" [label=""];
}

