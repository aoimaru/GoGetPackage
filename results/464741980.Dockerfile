[app/sources/464741980.Dockerfile]
digraph {
  "sha256:82431c5e8ccdce9cdf62aeed33b318d39a46d8a81e8e500da5bf3785f1ff759a" [label="local://context" shape="ellipse"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:941a77a3099f8042c119edf214e6f7f34709bd5c1e5bde8f9a0fee6c8214fe64" [label="/bin/sh -c sed -i -e \"s/\\/\\/archive\\.ubuntu/\\/\\/mirror\\.kakao/\" /etc/apt/sources.list" shape="box"];
  "sha256:9c47f99d203fe865799ba06a79ce7cee521dec8c353b3c0a1854d54ba4d571f0" [label="/bin/sh -c apt-get update --fix-missing && apt-get install --no-install-recommends -y     software-properties-common     wget     php7.2     php7.2-cli     php7.2-curl     php7.2-mbstring     php7.2-mysql     php7.2-apcu     php7.2-zip     php7.2-xml     php7.2-xdebug     apache2     libapache2-mod-php7.2" shape="box"];
  "sha256:0f613c35ec51bc3be7213e74ef5bf8de05c4b45e0b7ebb29f350386ccfd4d402" [label="/bin/sh -c sed -i \"s/;date.timezone =/date.timezone = Asia\\/Seoul/\" /etc/php/7.2/apache2/php.ini &&     sed -i \"s/;date.timezone =/date.timezone = Asia\\/Seoul/\" /etc/php/7.2/cli/php.ini" shape="box"];
  "sha256:ca03b4f67630e07f8c957b6865d660a684e0acc3bfc361c233bd30be12e35f6e" [label="/bin/sh -c a2enmod rewrite" shape="box"];
  "sha256:6ad92849f68a83a35b2dbd1c257a4f2e89921bd3e0a29a567a6dccc44e5911f4" [label="/bin/sh -c a2dissite 000-default && rm /etc/apache2/sites-available/000-default.conf" shape="box"];
  "sha256:96e6ad867b43afb4c6a2497e5d07a822a2d4b5cb3bb85f023dbb903048c138a4" [label="copy{src=/config/apache/override.conf, dest=/etc/apache2/conf-available/override.conf}" shape="note"];
  "sha256:35671c5d70d4847eb3e1663477ca6607e7f8fa16b88779bf4142a567500fd9b1" [label="/bin/sh -c a2enconf override" shape="box"];
  "sha256:3dd5edcdd15341f60efbbf0832b0339325c6d5ff978a1f15818def95fd950c53" [label="copy{src=/config/apache/ridi-pay.conf, dest=/etc/apache2/sites-available/ridi-pay.conf}" shape="note"];
  "sha256:a9ddbf133d73504fa70c2e454cc62ff18c1ebc79ebeec5e1ef200b63f6eeb7cb" [label="/bin/sh -c a2ensite ridi-pay" shape="box"];
  "sha256:0e34d05423c2beccaf4154a3df1cd24a3c9e9bfd4e9f22bea706aa5b0d04be5e" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:99bcb4e8e32330d8ed190f5c232bc75abfa1efa9c756dd184fed9b398e151e60" [label="/bin/sh -c sh /app/bin/composer_installation.sh && mv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:a6ece599d8f384552cd7bdf441d275f9541c8eee6a7e425202ec67fe77515da0" [label="/bin/sh -c mkdir -p /app/var && chmod -R 777 /app/var" shape="box"];
  "sha256:1b1c79d8f8b47e7fd95383a491fa045d5ad32778860bf675d827a96e641fd689" [label="mkdir{path=/app}" shape="note"];
  "sha256:335ab17d90e37b4b4ed6f7f87f43a76d0faedf878958d490fc73f5df42016fbc" [label="/bin/sh -c composer install --no-dev --optimize-autoloader" shape="box"];
  "sha256:f6128e20160fc163dbfa1878ffa0bcf30922ed4813202ba93c6a7bf5c7d5de08" [label="sha256:f6128e20160fc163dbfa1878ffa0bcf30922ed4813202ba93c6a7bf5c7d5de08" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:941a77a3099f8042c119edf214e6f7f34709bd5c1e5bde8f9a0fee6c8214fe64" [label=""];
  "sha256:941a77a3099f8042c119edf214e6f7f34709bd5c1e5bde8f9a0fee6c8214fe64" -> "sha256:9c47f99d203fe865799ba06a79ce7cee521dec8c353b3c0a1854d54ba4d571f0" [label=""];
  "sha256:9c47f99d203fe865799ba06a79ce7cee521dec8c353b3c0a1854d54ba4d571f0" -> "sha256:0f613c35ec51bc3be7213e74ef5bf8de05c4b45e0b7ebb29f350386ccfd4d402" [label=""];
  "sha256:0f613c35ec51bc3be7213e74ef5bf8de05c4b45e0b7ebb29f350386ccfd4d402" -> "sha256:ca03b4f67630e07f8c957b6865d660a684e0acc3bfc361c233bd30be12e35f6e" [label=""];
  "sha256:ca03b4f67630e07f8c957b6865d660a684e0acc3bfc361c233bd30be12e35f6e" -> "sha256:6ad92849f68a83a35b2dbd1c257a4f2e89921bd3e0a29a567a6dccc44e5911f4" [label=""];
  "sha256:6ad92849f68a83a35b2dbd1c257a4f2e89921bd3e0a29a567a6dccc44e5911f4" -> "sha256:96e6ad867b43afb4c6a2497e5d07a822a2d4b5cb3bb85f023dbb903048c138a4" [label=""];
  "sha256:82431c5e8ccdce9cdf62aeed33b318d39a46d8a81e8e500da5bf3785f1ff759a" -> "sha256:96e6ad867b43afb4c6a2497e5d07a822a2d4b5cb3bb85f023dbb903048c138a4" [label=""];
  "sha256:96e6ad867b43afb4c6a2497e5d07a822a2d4b5cb3bb85f023dbb903048c138a4" -> "sha256:35671c5d70d4847eb3e1663477ca6607e7f8fa16b88779bf4142a567500fd9b1" [label=""];
  "sha256:35671c5d70d4847eb3e1663477ca6607e7f8fa16b88779bf4142a567500fd9b1" -> "sha256:3dd5edcdd15341f60efbbf0832b0339325c6d5ff978a1f15818def95fd950c53" [label=""];
  "sha256:82431c5e8ccdce9cdf62aeed33b318d39a46d8a81e8e500da5bf3785f1ff759a" -> "sha256:3dd5edcdd15341f60efbbf0832b0339325c6d5ff978a1f15818def95fd950c53" [label=""];
  "sha256:3dd5edcdd15341f60efbbf0832b0339325c6d5ff978a1f15818def95fd950c53" -> "sha256:a9ddbf133d73504fa70c2e454cc62ff18c1ebc79ebeec5e1ef200b63f6eeb7cb" [label=""];
  "sha256:a9ddbf133d73504fa70c2e454cc62ff18c1ebc79ebeec5e1ef200b63f6eeb7cb" -> "sha256:0e34d05423c2beccaf4154a3df1cd24a3c9e9bfd4e9f22bea706aa5b0d04be5e" [label=""];
  "sha256:82431c5e8ccdce9cdf62aeed33b318d39a46d8a81e8e500da5bf3785f1ff759a" -> "sha256:0e34d05423c2beccaf4154a3df1cd24a3c9e9bfd4e9f22bea706aa5b0d04be5e" [label=""];
  "sha256:0e34d05423c2beccaf4154a3df1cd24a3c9e9bfd4e9f22bea706aa5b0d04be5e" -> "sha256:99bcb4e8e32330d8ed190f5c232bc75abfa1efa9c756dd184fed9b398e151e60" [label=""];
  "sha256:99bcb4e8e32330d8ed190f5c232bc75abfa1efa9c756dd184fed9b398e151e60" -> "sha256:a6ece599d8f384552cd7bdf441d275f9541c8eee6a7e425202ec67fe77515da0" [label=""];
  "sha256:a6ece599d8f384552cd7bdf441d275f9541c8eee6a7e425202ec67fe77515da0" -> "sha256:1b1c79d8f8b47e7fd95383a491fa045d5ad32778860bf675d827a96e641fd689" [label=""];
  "sha256:1b1c79d8f8b47e7fd95383a491fa045d5ad32778860bf675d827a96e641fd689" -> "sha256:335ab17d90e37b4b4ed6f7f87f43a76d0faedf878958d490fc73f5df42016fbc" [label=""];
  "sha256:335ab17d90e37b4b4ed6f7f87f43a76d0faedf878958d490fc73f5df42016fbc" -> "sha256:f6128e20160fc163dbfa1878ffa0bcf30922ed4813202ba93c6a7bf5c7d5de08" [label=""];
}

