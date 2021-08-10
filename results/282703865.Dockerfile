[app/sources/282703865.Dockerfile]
digraph {
  "sha256:b53c6b5ff1ff1067f1e827277c62b1497e7a88eebaffc000b48684e8d45be2e7" [label="docker-image://docker.io/library/python:3.7.2-slim-stretch" shape="ellipse"];
  "sha256:390ef7fa4059879ae5052a62b7c98c56a049c760fcabdab221e4c331f4065d46" [label="/bin/sh -c apt update && apt install -y python3-dev build-essential wget libxml2-dev libproj-dev libgeos-dev libsqlite3-dev zlib1g-dev pkg-config git  && apt clean" shape="box"];
  "sha256:81e6698b0efb7fae2afa678f28407a154c4ae502c40798d0a4602aa924e99038" [label="/bin/sh -c wget \"https://www.sqlite.org/2018/sqlite-autoconf-3260000.tar.gz\" && tar xzf sqlite-autoconf-3260000.tar.gz     && cd sqlite-autoconf-3260000 && ./configure --disable-static --enable-fts5 --enable-json1 CFLAGS=\"-g -O2 -DSQLITE_ENABLE_FTS3=1 -DSQLITE_ENABLE_FTS4=1 -DSQLITE_ENABLE_RTREE=1 -DSQLITE_ENABLE_JSON1\"     && make && make install" shape="box"];
  "sha256:8fbfc2eadca754e3c8eac31af7eabab289b3d2a5afe793445fb7d5e076f020dc" [label="/bin/sh -c wget \"https://www.gaia-gis.it/gaia-sins/freexl-1.0.5.tar.gz\" && tar zxf freexl-1.0.5.tar.gz     && cd freexl-1.0.5 && ./configure && make && make install" shape="box"];
  "sha256:ab056905af3d47d7490ccbc74179c74b9641c6ea57eca6cfab157d8067994a88" [label="/bin/sh -c wget \"https://www.gaia-gis.it/gaia-sins/libspatialite-4.4.0-RC0.tar.gz\" && tar zxf libspatialite-4.4.0-RC0.tar.gz     && cd libspatialite-4.4.0-RC0 && ./configure && make && make install" shape="box"];
  "sha256:a8557fdb3fc9b01e9b4322100a9fe2e204a02071b2505353bf1403b219296bf1" [label="/bin/sh -c wget \"https://www.gaia-gis.it/gaia-sins/readosm-1.1.0.tar.gz\" && tar zxf readosm-1.1.0.tar.gz && cd readosm-1.1.0 && ./configure && make && make install" shape="box"];
  "sha256:eeeb3d07e9e1b053e989507b68f9ffd772942d09aa0de48fccb97cff88b346d6" [label="/bin/sh -c wget \"https://www.gaia-gis.it/gaia-sins/spatialite-tools-4.4.0-RC0.tar.gz\" && tar zxf spatialite-tools-4.4.0-RC0.tar.gz     && cd spatialite-tools-4.4.0-RC0 && ./configure && make && make install" shape="box"];
  "sha256:d50397d96b2cd1c2f0e4ba2ae3a2fb4dbae3aa251fdc05985cac4f1dbe21b1fa" [label="local://context" shape="ellipse"];
  "sha256:f195049b7c449047e4b9d5cae1260d26a929a402bbd2c609b9ee4c26b2204549" [label="copy{src=/, dest=/datasette}" shape="note"];
  "sha256:7e9a9efdd213603ee5bd243e0a02611a82647dccfe2527dd8f8f0a5178db6ee2" [label="/bin/sh -c pip install /datasette" shape="box"];
  "sha256:225621f101d791a93b5e1762bf4726c72d7000de2e9cba7aa3e94f997362204d" [label="copy{src=/usr/local/lib, dest=/usr/local/lib/}" shape="note"];
  "sha256:521c2871942abd860ac4674a1b121d180e0895b7ae4c595458f9b26d80e40bdb" [label="copy{src=/usr/local/bin, dest=/usr/local/bin}" shape="note"];
  "sha256:0339f74ffbd0ec0bdd2c1bc551fe8fbabbe071e30ceb263c32fcaf4db6314896" [label="copy{src=/usr/lib/x86_64-linux-gnu, dest=/usr/lib/x86_64-linux-gnu}" shape="note"];
  "sha256:dd313017bc2b0a79e170019e7dcd6623a80ea08d0d24e1e1ecf943f96b18a616" [label="sha256:dd313017bc2b0a79e170019e7dcd6623a80ea08d0d24e1e1ecf943f96b18a616" shape="plaintext"];
  "sha256:b53c6b5ff1ff1067f1e827277c62b1497e7a88eebaffc000b48684e8d45be2e7" -> "sha256:390ef7fa4059879ae5052a62b7c98c56a049c760fcabdab221e4c331f4065d46" [label=""];
  "sha256:390ef7fa4059879ae5052a62b7c98c56a049c760fcabdab221e4c331f4065d46" -> "sha256:81e6698b0efb7fae2afa678f28407a154c4ae502c40798d0a4602aa924e99038" [label=""];
  "sha256:81e6698b0efb7fae2afa678f28407a154c4ae502c40798d0a4602aa924e99038" -> "sha256:8fbfc2eadca754e3c8eac31af7eabab289b3d2a5afe793445fb7d5e076f020dc" [label=""];
  "sha256:8fbfc2eadca754e3c8eac31af7eabab289b3d2a5afe793445fb7d5e076f020dc" -> "sha256:ab056905af3d47d7490ccbc74179c74b9641c6ea57eca6cfab157d8067994a88" [label=""];
  "sha256:ab056905af3d47d7490ccbc74179c74b9641c6ea57eca6cfab157d8067994a88" -> "sha256:a8557fdb3fc9b01e9b4322100a9fe2e204a02071b2505353bf1403b219296bf1" [label=""];
  "sha256:a8557fdb3fc9b01e9b4322100a9fe2e204a02071b2505353bf1403b219296bf1" -> "sha256:eeeb3d07e9e1b053e989507b68f9ffd772942d09aa0de48fccb97cff88b346d6" [label=""];
  "sha256:eeeb3d07e9e1b053e989507b68f9ffd772942d09aa0de48fccb97cff88b346d6" -> "sha256:f195049b7c449047e4b9d5cae1260d26a929a402bbd2c609b9ee4c26b2204549" [label=""];
  "sha256:d50397d96b2cd1c2f0e4ba2ae3a2fb4dbae3aa251fdc05985cac4f1dbe21b1fa" -> "sha256:f195049b7c449047e4b9d5cae1260d26a929a402bbd2c609b9ee4c26b2204549" [label=""];
  "sha256:f195049b7c449047e4b9d5cae1260d26a929a402bbd2c609b9ee4c26b2204549" -> "sha256:7e9a9efdd213603ee5bd243e0a02611a82647dccfe2527dd8f8f0a5178db6ee2" [label=""];
  "sha256:b53c6b5ff1ff1067f1e827277c62b1497e7a88eebaffc000b48684e8d45be2e7" -> "sha256:225621f101d791a93b5e1762bf4726c72d7000de2e9cba7aa3e94f997362204d" [label=""];
  "sha256:7e9a9efdd213603ee5bd243e0a02611a82647dccfe2527dd8f8f0a5178db6ee2" -> "sha256:225621f101d791a93b5e1762bf4726c72d7000de2e9cba7aa3e94f997362204d" [label=""];
  "sha256:225621f101d791a93b5e1762bf4726c72d7000de2e9cba7aa3e94f997362204d" -> "sha256:521c2871942abd860ac4674a1b121d180e0895b7ae4c595458f9b26d80e40bdb" [label=""];
  "sha256:7e9a9efdd213603ee5bd243e0a02611a82647dccfe2527dd8f8f0a5178db6ee2" -> "sha256:521c2871942abd860ac4674a1b121d180e0895b7ae4c595458f9b26d80e40bdb" [label=""];
  "sha256:521c2871942abd860ac4674a1b121d180e0895b7ae4c595458f9b26d80e40bdb" -> "sha256:0339f74ffbd0ec0bdd2c1bc551fe8fbabbe071e30ceb263c32fcaf4db6314896" [label=""];
  "sha256:7e9a9efdd213603ee5bd243e0a02611a82647dccfe2527dd8f8f0a5178db6ee2" -> "sha256:0339f74ffbd0ec0bdd2c1bc551fe8fbabbe071e30ceb263c32fcaf4db6314896" [label=""];
  "sha256:0339f74ffbd0ec0bdd2c1bc551fe8fbabbe071e30ceb263c32fcaf4db6314896" -> "sha256:dd313017bc2b0a79e170019e7dcd6623a80ea08d0d24e1e1ecf943f96b18a616" [label=""];
}

