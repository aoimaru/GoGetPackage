[app/sources/164025580.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:9e5c313933ad5e2d6acdc87dd4b65992373c7cdb6f45498d7c4e3cd7c3b4d511" [label="/bin/sh -c mkdir -p /opt/data" shape="box"];
  "sha256:57a10707569f41424ee916221565dfc337fc64d0cbc252890e8d37be49d754e7" [label="/bin/sh -c apt-get -qq -y update     && apt-get -qq -y install build-essential git locales ca-certificates         postgresql-client         python3-pip python3-dev python3-pil         libxslt1-dev libpq-dev libldap2-dev libsasl2-dev         zlib1g-dev libicu-dev libxml2-dev         unrar p7zip-full unzip         libmediainfo-dev         imagemagick-common imagemagick mdbtools djvulibre-bin         libtiff5-dev libjpeg-dev libfreetype6-dev libwebp-dev         libtiff-tools         poppler-utils poppler-data pst-utils     && apt-get -qq -y autoremove     && apt-get clean     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:a4975d03bc2ff970b702fc11718dc0085727aec4e3877a26ade621276fab5791" [label="/bin/sh -c sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen &&     sed -i -e 's/# en_GB.ISO-8859-15 ISO-8859-15/en_GB.ISO-8859-15 ISO-8859-15/' /etc/locale.gen &&     locale-gen" shape="box"];
  "sha256:6153eb0d4c2f139d55d095f68b427b15d0e6216be5ccef84c9273fd23a704d00" [label="/bin/sh -c curl -s -o /tmp/allCountries.zip https://download.geonames.org/export/dump/allCountries.zip     && unzip -p /tmp/allCountries.zip | grep \"ADM1\\|PCLI\\|PCLD\\|PPLC\\|PPLA\" >${ALEPH_GEONAMES_DATA}     && rm /tmp/allCountries.zip" shape="box"];
  "sha256:6d5c29f017170c7b008bf32ca929b260a80a20524a569dd22519be9666ddc98e" [label="/bin/sh -c pip3 install -q --upgrade pip setuptools six" shape="box"];
  "sha256:2459a2f9936db259c03e2202b33b47219707ea3d966a3188d36be7243773bedd" [label="sha256:2459a2f9936db259c03e2202b33b47219707ea3d966a3188d36be7243773bedd" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:9e5c313933ad5e2d6acdc87dd4b65992373c7cdb6f45498d7c4e3cd7c3b4d511" [label=""];
  "sha256:9e5c313933ad5e2d6acdc87dd4b65992373c7cdb6f45498d7c4e3cd7c3b4d511" -> "sha256:57a10707569f41424ee916221565dfc337fc64d0cbc252890e8d37be49d754e7" [label=""];
  "sha256:57a10707569f41424ee916221565dfc337fc64d0cbc252890e8d37be49d754e7" -> "sha256:a4975d03bc2ff970b702fc11718dc0085727aec4e3877a26ade621276fab5791" [label=""];
  "sha256:a4975d03bc2ff970b702fc11718dc0085727aec4e3877a26ade621276fab5791" -> "sha256:6153eb0d4c2f139d55d095f68b427b15d0e6216be5ccef84c9273fd23a704d00" [label=""];
  "sha256:6153eb0d4c2f139d55d095f68b427b15d0e6216be5ccef84c9273fd23a704d00" -> "sha256:6d5c29f017170c7b008bf32ca929b260a80a20524a569dd22519be9666ddc98e" [label=""];
  "sha256:6d5c29f017170c7b008bf32ca929b260a80a20524a569dd22519be9666ddc98e" -> "sha256:2459a2f9936db259c03e2202b33b47219707ea3d966a3188d36be7243773bedd" [label=""];
}

