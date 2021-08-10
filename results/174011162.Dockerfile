[app/sources/174011162.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:cb391c9dafaa74427d9826808cdcf69fef6acffdf46fefb58d5637d5e4589540" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:bb40054b8fc86e0e74c301124ca3e77126286c7fa0734b21a82ac9aba88bd735" [label="/bin/sh -c apt-get install -y software-properties-common python-software-properties python g++ make" shape="box"];
  "sha256:e08ec9196ced2a30914da8a0f9dd58b515304c2744ecfd73d8a21bce40aa4f01" [label="/bin/sh -c apt-add-repository ppa:brightbox/ruby-ng" shape="box"];
  "sha256:72abaa108019a9385bf2cd6ec26e5126b7e93543df09f83c176a7883e361d90e" [label="/bin/sh -c add-apt-repository ppa:chris-lea/node.js" shape="box"];
  "sha256:c2f4784b02b6e64174f34f22391324528fb344432486f8ef696ed0209011d6b3" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c8f2f871156ff0570a8bc6baf62db63a92425ebf7987af50141e7afb31d12bbc" [label="/bin/sh -c apt-get install -y ruby1.9.3   zlib1g-dev libxml2-dev libmysqlclient-dev libxslt1-dev   imagemagick libpq-dev libxmlsec1-dev libcurl4-gnutls-dev   libxmlsec1 build-essential openjdk-7-jre unzip nodejs   passenger-common1.9.1 libapache2-mod-passenger apache2   libsqlite3-dev git   && apt-get purge -y" shape="box"];
  "sha256:ed97e6634274e413c29fc1bab5b91156c501c4f0196b2148465a3294c2dea5f8" [label="/bin/sh -c a2enmod rewrite" shape="box"];
  "sha256:64b1e6cbef0b9107784ca5270830d06c084add506505828cffbcebb9c8f9c4c4" [label="/bin/sh -c a2enmod passenger" shape="box"];
  "sha256:8763942961774b60f0f22e2ae64005e02d76ee3996fbc6e3f83bbc74bddf306f" [label="/bin/sh -c gem install bundler --version 1.7.2" shape="box"];
  "sha256:dbdfb3a1695a9ce7af69b4ff5433d2749f76741d90da59c6e86eb6b3e0362a08" [label="/bin/sh -c gem install rake" shape="box"];
  "sha256:5410c9341264769f8243216a673210532d3e481b35bfa7ed3288d8d65ef4ca6e" [label="/bin/sh -c locale-gen en_US en_US.UTF-8" shape="box"];
  "sha256:88e0300e5f57a91f0483e34081bac353a176a9708b1f507eadc39dfc00064107" [label="/bin/sh -c dpkg-reconfigure locales" shape="box"];
  "sha256:858fd5cdb68495aa28c755108749f2f231650458d3efebf5e5313b94ae117d65" [label="/bin/sh -c adduser --disabled-password --gecos canvas canvasuser" shape="box"];
  "sha256:b70077434650d52f71bfb58361cd17e5ed3131dddd214a82904955f6afa1be7d" [label="/bin/sh -c chown -R canvasuser /usr/lib/node_modules" shape="box"];
  "sha256:f603949e269505e0ce1c1ab92d47728b2716929ca882908de029548aa6aa8430" [label="local://context" shape="ellipse"];
  "sha256:4855194b94b224963b1a6e0cf24dcc29aa6176fcb94a64771fb9c80f29b8b19b" [label="copy{src=/canvas, dest=/usr/bin/canvas}" shape="note"];
  "sha256:1b60e3665c15a9078d09d178000f6f0db186e3f025762a260f5f63d7e4c62549" [label="/bin/sh -c chmod 755 /usr/bin/canvas" shape="box"];
  "sha256:33a5abc832eb57a445a2f0c4e7128386719c6efd60ee31d5c5fd6bb7f12a6d4c" [label="sha256:33a5abc832eb57a445a2f0c4e7128386719c6efd60ee31d5c5fd6bb7f12a6d4c" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:cb391c9dafaa74427d9826808cdcf69fef6acffdf46fefb58d5637d5e4589540" [label=""];
  "sha256:cb391c9dafaa74427d9826808cdcf69fef6acffdf46fefb58d5637d5e4589540" -> "sha256:bb40054b8fc86e0e74c301124ca3e77126286c7fa0734b21a82ac9aba88bd735" [label=""];
  "sha256:bb40054b8fc86e0e74c301124ca3e77126286c7fa0734b21a82ac9aba88bd735" -> "sha256:e08ec9196ced2a30914da8a0f9dd58b515304c2744ecfd73d8a21bce40aa4f01" [label=""];
  "sha256:e08ec9196ced2a30914da8a0f9dd58b515304c2744ecfd73d8a21bce40aa4f01" -> "sha256:72abaa108019a9385bf2cd6ec26e5126b7e93543df09f83c176a7883e361d90e" [label=""];
  "sha256:72abaa108019a9385bf2cd6ec26e5126b7e93543df09f83c176a7883e361d90e" -> "sha256:c2f4784b02b6e64174f34f22391324528fb344432486f8ef696ed0209011d6b3" [label=""];
  "sha256:c2f4784b02b6e64174f34f22391324528fb344432486f8ef696ed0209011d6b3" -> "sha256:c8f2f871156ff0570a8bc6baf62db63a92425ebf7987af50141e7afb31d12bbc" [label=""];
  "sha256:c8f2f871156ff0570a8bc6baf62db63a92425ebf7987af50141e7afb31d12bbc" -> "sha256:ed97e6634274e413c29fc1bab5b91156c501c4f0196b2148465a3294c2dea5f8" [label=""];
  "sha256:ed97e6634274e413c29fc1bab5b91156c501c4f0196b2148465a3294c2dea5f8" -> "sha256:64b1e6cbef0b9107784ca5270830d06c084add506505828cffbcebb9c8f9c4c4" [label=""];
  "sha256:64b1e6cbef0b9107784ca5270830d06c084add506505828cffbcebb9c8f9c4c4" -> "sha256:8763942961774b60f0f22e2ae64005e02d76ee3996fbc6e3f83bbc74bddf306f" [label=""];
  "sha256:8763942961774b60f0f22e2ae64005e02d76ee3996fbc6e3f83bbc74bddf306f" -> "sha256:dbdfb3a1695a9ce7af69b4ff5433d2749f76741d90da59c6e86eb6b3e0362a08" [label=""];
  "sha256:dbdfb3a1695a9ce7af69b4ff5433d2749f76741d90da59c6e86eb6b3e0362a08" -> "sha256:5410c9341264769f8243216a673210532d3e481b35bfa7ed3288d8d65ef4ca6e" [label=""];
  "sha256:5410c9341264769f8243216a673210532d3e481b35bfa7ed3288d8d65ef4ca6e" -> "sha256:88e0300e5f57a91f0483e34081bac353a176a9708b1f507eadc39dfc00064107" [label=""];
  "sha256:88e0300e5f57a91f0483e34081bac353a176a9708b1f507eadc39dfc00064107" -> "sha256:858fd5cdb68495aa28c755108749f2f231650458d3efebf5e5313b94ae117d65" [label=""];
  "sha256:858fd5cdb68495aa28c755108749f2f231650458d3efebf5e5313b94ae117d65" -> "sha256:b70077434650d52f71bfb58361cd17e5ed3131dddd214a82904955f6afa1be7d" [label=""];
  "sha256:b70077434650d52f71bfb58361cd17e5ed3131dddd214a82904955f6afa1be7d" -> "sha256:4855194b94b224963b1a6e0cf24dcc29aa6176fcb94a64771fb9c80f29b8b19b" [label=""];
  "sha256:f603949e269505e0ce1c1ab92d47728b2716929ca882908de029548aa6aa8430" -> "sha256:4855194b94b224963b1a6e0cf24dcc29aa6176fcb94a64771fb9c80f29b8b19b" [label=""];
  "sha256:4855194b94b224963b1a6e0cf24dcc29aa6176fcb94a64771fb9c80f29b8b19b" -> "sha256:1b60e3665c15a9078d09d178000f6f0db186e3f025762a260f5f63d7e4c62549" [label=""];
  "sha256:1b60e3665c15a9078d09d178000f6f0db186e3f025762a260f5f63d7e4c62549" -> "sha256:33a5abc832eb57a445a2f0c4e7128386719c6efd60ee31d5c5fd6bb7f12a6d4c" [label=""];
}

