[app/sources/389449627.Dockerfile]
digraph {
  "sha256:23379ae0b37f8ffaec85d21f4e2bc5fc3af0887489152c845034e0e2e0a1094f" [label="docker-image://docker.io/phundament/php-one:5.6-fpm-5.1.1" shape="ellipse"];
  "sha256:5a7e2603c6c45168f7df82d3ae3539022273ea2c8a4f352876a328e94258b448" [label="/bin/sh -c rm -rf /app/src /app/web /app-src" shape="box"];
  "sha256:b7c1234f237bdfa87af78b9e1d67c69c88a6b3050e8a4ab77850fb456bec71e2" [label="local://context" shape="ellipse"];
  "sha256:d15c472e63f958f6650996235ee33d08538e77e2178c2e563eaedd47a86994f9" [label="copy{src=/build/container-files, dest=/}" shape="note"];
  "sha256:8365e07f884e872153f775fb660ff6ae24da522edaff4d645d02c14ed9f02298" [label="copy{src=/composer.lock, dest=/app/},copy{src=/composer.json, dest=/app/}" shape="note"];
  "sha256:544b4f3745ea6791c9a90c19f39e21250c2d3aeac6c369315d1bfab7e43b3e96" [label="/bin/sh -c /usr/local/bin/composer install --prefer-dist --optimize-autoloader" shape="box"];
  "sha256:c10aee2af9f6d6d414965e611e9b13a3871a5d108e0eb1cfb97ae07660f7472c" [label="copy{src=/.env-dist, dest=/app/.env}" shape="note"];
  "sha256:8692cb1d34acf6fb5fed2b5494f55e3ee9f2e34b7542d15bfa7cbba9710871b2" [label="copy{src=/yii, dest=/app/}" shape="note"];
  "sha256:b0beee2195483dbc80464977e627a5b9c27cd2eb3079948bce84615d486eecbd" [label="copy{src=/web, dest=/app/web}" shape="note"];
  "sha256:06e1c108b13cdf60f2975cf471d667e8c44c1da2fff002f298b6a58dc821fb25" [label="copy{src=/src, dest=/app/src}" shape="note"];
  "sha256:39b506d94b6c286651c99c0af7f2f77e59b1a37437efb3729b4bf63430ca8d2a" [label="/bin/sh -c mkdir -p /app/runtime /app/web/assets &&     chown -R 1000:33 /app/runtime /app/web/assets" shape="box"];
  "sha256:aeef5915435cbded8b7b1ab61cbc3705b6266b808a5049e1dfe99be1e1d71192" [label="/bin/sh -c chmod -R u+x /app/src/bin" shape="box"];
  "sha256:bfb066b36de360261c1e85c5072dbb7f00a2aa30b44115ec99e0c99a5b4c83ea" [label="sha256:bfb066b36de360261c1e85c5072dbb7f00a2aa30b44115ec99e0c99a5b4c83ea" shape="plaintext"];
  "sha256:23379ae0b37f8ffaec85d21f4e2bc5fc3af0887489152c845034e0e2e0a1094f" -> "sha256:5a7e2603c6c45168f7df82d3ae3539022273ea2c8a4f352876a328e94258b448" [label=""];
  "sha256:5a7e2603c6c45168f7df82d3ae3539022273ea2c8a4f352876a328e94258b448" -> "sha256:d15c472e63f958f6650996235ee33d08538e77e2178c2e563eaedd47a86994f9" [label=""];
  "sha256:b7c1234f237bdfa87af78b9e1d67c69c88a6b3050e8a4ab77850fb456bec71e2" -> "sha256:d15c472e63f958f6650996235ee33d08538e77e2178c2e563eaedd47a86994f9" [label=""];
  "sha256:d15c472e63f958f6650996235ee33d08538e77e2178c2e563eaedd47a86994f9" -> "sha256:8365e07f884e872153f775fb660ff6ae24da522edaff4d645d02c14ed9f02298" [label=""];
  "sha256:b7c1234f237bdfa87af78b9e1d67c69c88a6b3050e8a4ab77850fb456bec71e2" -> "sha256:8365e07f884e872153f775fb660ff6ae24da522edaff4d645d02c14ed9f02298" [label=""];
  "sha256:8365e07f884e872153f775fb660ff6ae24da522edaff4d645d02c14ed9f02298" -> "sha256:544b4f3745ea6791c9a90c19f39e21250c2d3aeac6c369315d1bfab7e43b3e96" [label=""];
  "sha256:544b4f3745ea6791c9a90c19f39e21250c2d3aeac6c369315d1bfab7e43b3e96" -> "sha256:c10aee2af9f6d6d414965e611e9b13a3871a5d108e0eb1cfb97ae07660f7472c" [label=""];
  "sha256:b7c1234f237bdfa87af78b9e1d67c69c88a6b3050e8a4ab77850fb456bec71e2" -> "sha256:c10aee2af9f6d6d414965e611e9b13a3871a5d108e0eb1cfb97ae07660f7472c" [label=""];
  "sha256:c10aee2af9f6d6d414965e611e9b13a3871a5d108e0eb1cfb97ae07660f7472c" -> "sha256:8692cb1d34acf6fb5fed2b5494f55e3ee9f2e34b7542d15bfa7cbba9710871b2" [label=""];
  "sha256:b7c1234f237bdfa87af78b9e1d67c69c88a6b3050e8a4ab77850fb456bec71e2" -> "sha256:8692cb1d34acf6fb5fed2b5494f55e3ee9f2e34b7542d15bfa7cbba9710871b2" [label=""];
  "sha256:8692cb1d34acf6fb5fed2b5494f55e3ee9f2e34b7542d15bfa7cbba9710871b2" -> "sha256:b0beee2195483dbc80464977e627a5b9c27cd2eb3079948bce84615d486eecbd" [label=""];
  "sha256:b7c1234f237bdfa87af78b9e1d67c69c88a6b3050e8a4ab77850fb456bec71e2" -> "sha256:b0beee2195483dbc80464977e627a5b9c27cd2eb3079948bce84615d486eecbd" [label=""];
  "sha256:b0beee2195483dbc80464977e627a5b9c27cd2eb3079948bce84615d486eecbd" -> "sha256:06e1c108b13cdf60f2975cf471d667e8c44c1da2fff002f298b6a58dc821fb25" [label=""];
  "sha256:b7c1234f237bdfa87af78b9e1d67c69c88a6b3050e8a4ab77850fb456bec71e2" -> "sha256:06e1c108b13cdf60f2975cf471d667e8c44c1da2fff002f298b6a58dc821fb25" [label=""];
  "sha256:06e1c108b13cdf60f2975cf471d667e8c44c1da2fff002f298b6a58dc821fb25" -> "sha256:39b506d94b6c286651c99c0af7f2f77e59b1a37437efb3729b4bf63430ca8d2a" [label=""];
  "sha256:39b506d94b6c286651c99c0af7f2f77e59b1a37437efb3729b4bf63430ca8d2a" -> "sha256:aeef5915435cbded8b7b1ab61cbc3705b6266b808a5049e1dfe99be1e1d71192" [label=""];
  "sha256:aeef5915435cbded8b7b1ab61cbc3705b6266b808a5049e1dfe99be1e1d71192" -> "sha256:bfb066b36de360261c1e85c5072dbb7f00a2aa30b44115ec99e0c99a5b4c83ea" [label=""];
}

