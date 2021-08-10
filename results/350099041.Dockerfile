[app/sources/350099041.Dockerfile]
digraph {
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" [label="docker-image://docker.io/library/php:7.1-fpm" shape="ellipse"];
  "sha256:fe2ac6fafcbe29afa0c8b5c41f6de933ade48bbf83447d4e0f0fb4040b6feda3" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     cron     git     wget     sudo     libc-client-dev     libicu-dev     libkrb5-dev     libmcrypt-dev     libssl-dev     libz-dev     unzip     zip     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -rf /var/lib/apt/lists/*     && rm /etc/cron.daily/*" shape="box"];
  "sha256:ec3eee0b3c731ff2759170a1f1adc17139106e6d6f4d89ea645ad610309675be" [label="/bin/sh -c docker-php-ext-configure imap --with-imap --with-imap-ssl --with-kerberos     && docker-php-ext-configure opcache --enable-opcache     && docker-php-ext-install imap intl mbstring mcrypt mysqli pdo_mysql zip opcache bcmath     && docker-php-ext-enable imap intl mbstring mcrypt mysqli pdo_mysql zip opcache bcmath" shape="box"];
  "sha256:fa79ac3bf59158ff8eda2b8909ff2a50cd2160ea150be70ea8b8fa6c96eeb852" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer" shape="box"];
  "sha256:e768f08ac5086d455cc26d31d553099fba0c85a6226364cb6e61e8663b1c41ed" [label="/bin/sh -c curl -o mautic.zip -SL https://github.com/mautic/mautic/releases/download/${MAUTIC_VERSION}/${MAUTIC_VERSION}.zip \t&& echo \"$MAUTIC_SHA1 *mautic.zip\" | sha1sum -c - \t&& mkdir /usr/src/mautic \t&& unzip mautic.zip -d /usr/src/mautic \t&& rm mautic.zip \t&& chown -R www-data:www-data /usr/src/mautic" shape="box"];
  "sha256:5495d32e15ed3d994ab98a21994a495e811d935951647db0453f25b183d86c21" [label="local://context" shape="ellipse"];
  "sha256:7cf229e4a907e5b5face84a5dc7a1b4adb5e78eea6e2103db34d0274fd14bf19" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:2fcee4d7f0c90224854bdc5763cf917a322f4d6d0c4e4d35ab165c05d17605df" [label="copy{src=/makeconfig.php, dest=/makeconfig.php}" shape="note"];
  "sha256:c9b3ce4feee19347dfcd8d4008c4ea88f69f0e2e66e87f450416c38470440e46" [label="copy{src=/makedb.php, dest=/makedb.php}" shape="note"];
  "sha256:6bd1e57d0b4d541809a66b6cfdd843e6937641455c4a14d1447f270c40c78193" [label="copy{src=/mautic.crontab, dest=/etc/cron.d/mautic}" shape="note"];
  "sha256:b3fc6abdb3fae0d69747ad7ac4ce25e3890526f57460009cdadc7d5067dff28c" [label="copy{src=/mautic-php.ini, dest=/usr/local/etc/php/conf.d/mautic-php.ini}" shape="note"];
  "sha256:0a7300272a89fdbcbfbc404e59201346cbdb6700283606e7170967918b6edfa3" [label="chmod +x /entrypoint.sh" shape="box"];
  "sha256:3635d27bee3660c110f29aab4b6b80be49d76d4e57c29ede247d048e689f381e" [label="sha256:3635d27bee3660c110f29aab4b6b80be49d76d4e57c29ede247d048e689f381e" shape="plaintext"];
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" -> "sha256:fe2ac6fafcbe29afa0c8b5c41f6de933ade48bbf83447d4e0f0fb4040b6feda3" [label=""];
  "sha256:fe2ac6fafcbe29afa0c8b5c41f6de933ade48bbf83447d4e0f0fb4040b6feda3" -> "sha256:ec3eee0b3c731ff2759170a1f1adc17139106e6d6f4d89ea645ad610309675be" [label=""];
  "sha256:ec3eee0b3c731ff2759170a1f1adc17139106e6d6f4d89ea645ad610309675be" -> "sha256:fa79ac3bf59158ff8eda2b8909ff2a50cd2160ea150be70ea8b8fa6c96eeb852" [label=""];
  "sha256:fa79ac3bf59158ff8eda2b8909ff2a50cd2160ea150be70ea8b8fa6c96eeb852" -> "sha256:e768f08ac5086d455cc26d31d553099fba0c85a6226364cb6e61e8663b1c41ed" [label=""];
  "sha256:e768f08ac5086d455cc26d31d553099fba0c85a6226364cb6e61e8663b1c41ed" -> "sha256:7cf229e4a907e5b5face84a5dc7a1b4adb5e78eea6e2103db34d0274fd14bf19" [label=""];
  "sha256:5495d32e15ed3d994ab98a21994a495e811d935951647db0453f25b183d86c21" -> "sha256:7cf229e4a907e5b5face84a5dc7a1b4adb5e78eea6e2103db34d0274fd14bf19" [label=""];
  "sha256:7cf229e4a907e5b5face84a5dc7a1b4adb5e78eea6e2103db34d0274fd14bf19" -> "sha256:2fcee4d7f0c90224854bdc5763cf917a322f4d6d0c4e4d35ab165c05d17605df" [label=""];
  "sha256:5495d32e15ed3d994ab98a21994a495e811d935951647db0453f25b183d86c21" -> "sha256:2fcee4d7f0c90224854bdc5763cf917a322f4d6d0c4e4d35ab165c05d17605df" [label=""];
  "sha256:2fcee4d7f0c90224854bdc5763cf917a322f4d6d0c4e4d35ab165c05d17605df" -> "sha256:c9b3ce4feee19347dfcd8d4008c4ea88f69f0e2e66e87f450416c38470440e46" [label=""];
  "sha256:5495d32e15ed3d994ab98a21994a495e811d935951647db0453f25b183d86c21" -> "sha256:c9b3ce4feee19347dfcd8d4008c4ea88f69f0e2e66e87f450416c38470440e46" [label=""];
  "sha256:c9b3ce4feee19347dfcd8d4008c4ea88f69f0e2e66e87f450416c38470440e46" -> "sha256:6bd1e57d0b4d541809a66b6cfdd843e6937641455c4a14d1447f270c40c78193" [label=""];
  "sha256:5495d32e15ed3d994ab98a21994a495e811d935951647db0453f25b183d86c21" -> "sha256:6bd1e57d0b4d541809a66b6cfdd843e6937641455c4a14d1447f270c40c78193" [label=""];
  "sha256:6bd1e57d0b4d541809a66b6cfdd843e6937641455c4a14d1447f270c40c78193" -> "sha256:b3fc6abdb3fae0d69747ad7ac4ce25e3890526f57460009cdadc7d5067dff28c" [label=""];
  "sha256:5495d32e15ed3d994ab98a21994a495e811d935951647db0453f25b183d86c21" -> "sha256:b3fc6abdb3fae0d69747ad7ac4ce25e3890526f57460009cdadc7d5067dff28c" [label=""];
  "sha256:b3fc6abdb3fae0d69747ad7ac4ce25e3890526f57460009cdadc7d5067dff28c" -> "sha256:0a7300272a89fdbcbfbc404e59201346cbdb6700283606e7170967918b6edfa3" [label=""];
  "sha256:0a7300272a89fdbcbfbc404e59201346cbdb6700283606e7170967918b6edfa3" -> "sha256:3635d27bee3660c110f29aab4b6b80be49d76d4e57c29ede247d048e689f381e" [label=""];
}

