[app/sources/317005577.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:74f0723272ca34ccb4a86a892114445a21d8b0e340e54eab45b5c833bb8e4a3e" [label="/bin/sh -c apt update && export DEBIAN_FRONTEND=noninteractive && apt install -y php-cli wget pkg-config cmake git php-cli php-dev checkinstall" shape="box"];
  "sha256:0aeff24bd85de406c5df5d80ebc085663ce63f902b992afb61ad9b30bcf9cf11" [label="/bin/sh -c echo 1" shape="box"];
  "sha256:c2bd4220aa2d3381b7e4610e7bac5f18b69432a1c16f75a8405f6d3af186877a" [label="/bin/sh -c wget https://raw.githubusercontent.com/php-opencv/php-opencv-packages/master/opencv_3.4_amd64.deb && dpkg -i opencv_3.4_amd64.deb && rm opencv_3.4_amd64.deb" shape="box"];
  "sha256:a72062ac95acb905cad4ff294390b2276b22d3d694ca087f7f2852bc7894f4f4" [label="/bin/sh -c git clone https://github.com/php-opencv/php-opencv.git" shape="box"];
  "sha256:1d63089ff6b17f12bfc785257e565d0b634f8d4591108fd78a50e9359252d07d" [label="/bin/sh -c cd php-opencv && phpize && ./configure --with-php-config=/usr/bin/php-config && make && make install" shape="box"];
  "sha256:99e25152f9f8e6507733335ad9548b336dc8909299beed3dd9311f7f537e2886" [label="/bin/sh -c echo \"extension=opencv.so\" > /etc/php/7.2/cli/conf.d/opencv.ini" shape="box"];
  "sha256:ed34a9658860fcda0fccbe761fb1dfd8463983a40b5b011850dbc9c6f5ee7a39" [label="/bin/sh -c cd php-opencv && checkinstall --default --type debian --install=no --pkgname php-opencv --pkgversion \"7.2-3.4\" --pkglicense \"Apache 2.0\" --pakdir ~ --maintainer \"php-opencv\" --addso --autodoinst make install" shape="box"];
  "sha256:78ad3b9d8fa74e4eb62461e8747dc618c65fdebad3a18df5ed28dd004107b82d" [label="sha256:78ad3b9d8fa74e4eb62461e8747dc618c65fdebad3a18df5ed28dd004107b82d" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:74f0723272ca34ccb4a86a892114445a21d8b0e340e54eab45b5c833bb8e4a3e" [label=""];
  "sha256:74f0723272ca34ccb4a86a892114445a21d8b0e340e54eab45b5c833bb8e4a3e" -> "sha256:0aeff24bd85de406c5df5d80ebc085663ce63f902b992afb61ad9b30bcf9cf11" [label=""];
  "sha256:0aeff24bd85de406c5df5d80ebc085663ce63f902b992afb61ad9b30bcf9cf11" -> "sha256:c2bd4220aa2d3381b7e4610e7bac5f18b69432a1c16f75a8405f6d3af186877a" [label=""];
  "sha256:c2bd4220aa2d3381b7e4610e7bac5f18b69432a1c16f75a8405f6d3af186877a" -> "sha256:a72062ac95acb905cad4ff294390b2276b22d3d694ca087f7f2852bc7894f4f4" [label=""];
  "sha256:a72062ac95acb905cad4ff294390b2276b22d3d694ca087f7f2852bc7894f4f4" -> "sha256:1d63089ff6b17f12bfc785257e565d0b634f8d4591108fd78a50e9359252d07d" [label=""];
  "sha256:1d63089ff6b17f12bfc785257e565d0b634f8d4591108fd78a50e9359252d07d" -> "sha256:99e25152f9f8e6507733335ad9548b336dc8909299beed3dd9311f7f537e2886" [label=""];
  "sha256:99e25152f9f8e6507733335ad9548b336dc8909299beed3dd9311f7f537e2886" -> "sha256:ed34a9658860fcda0fccbe761fb1dfd8463983a40b5b011850dbc9c6f5ee7a39" [label=""];
  "sha256:ed34a9658860fcda0fccbe761fb1dfd8463983a40b5b011850dbc9c6f5ee7a39" -> "sha256:78ad3b9d8fa74e4eb62461e8747dc618c65fdebad3a18df5ed28dd004107b82d" [label=""];
}

