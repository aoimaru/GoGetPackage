[app/sources/354679825.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:5940e1468598dbed0cf29ef9e3d415b3f6d873c74e4086934c8a03e57c91a29d" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive" shape="box"];
  "sha256:ff43e9842110e99bc4d3d982b28ea6e6a78de9d5a72cf45539d9ce7f44f74ff7" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:026405d2eef5a7215b109c4d8d0d8bbcc03e89186434f74296aa70df85064ea3" [label="/bin/sh -c apt-get install -y software-properties-common &&     add-apt-repository -y ppa:ondrej/php" shape="box"];
  "sha256:6e28f69f0e1059b0215b2c8a3efb51a323166805ee9b62aade348ccaa56bcfc9" [label="/bin/sh -c apt-get update &&     apt-get upgrade -y &&     apt-get install -y --allow-downgrades --allow-remove-essential         --allow-change-held-packages         php5.6-cli         php5.6-common         php5.6-curl         php5.6-intl         php5.6-json         php5.6-xml         php5.6-mbstring         php5.6-mcrypt         php5.6-mysql         php5.6-pgsql         php5.6-sqlite         php5.6-sqlite3         php5.6-zip         php5.6-bcmath         php5.6-memcached         php5.6-gd         php5.6-dev         pkg-config         libcurl4-openssl-dev         libedit-dev         libssl-dev         libxml2-dev         xz-utils         libsqlite3-dev         sqlite3         git         curl         vim         nano         postgresql-client     && apt-get clean" shape="box"];
  "sha256:2b0a954bf25358c5df74d0d153d2314d2a1b729f877a61214af229b2dd346cab" [label="/bin/sh -c curl -s http://getcomposer.org/installer | php &&     echo \"export PATH=${PATH}:/var/www/vendor/bin\" >> ~/.bashrc &&     mv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:49d656f0f41dac7c16168d70b42cc0f84d69d7a30acef0b3528cd0b8e0a048a3" [label="/bin/sh -c . ~/.bashrc" shape="box"];
  "sha256:7dff8c6a0b19c1729f5e70c50db16b188ce3d3bd6171b29933607d868c480ff1" [label="sha256:7dff8c6a0b19c1729f5e70c50db16b188ce3d3bd6171b29933607d868c480ff1" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:5940e1468598dbed0cf29ef9e3d415b3f6d873c74e4086934c8a03e57c91a29d" [label=""];
  "sha256:5940e1468598dbed0cf29ef9e3d415b3f6d873c74e4086934c8a03e57c91a29d" -> "sha256:ff43e9842110e99bc4d3d982b28ea6e6a78de9d5a72cf45539d9ce7f44f74ff7" [label=""];
  "sha256:ff43e9842110e99bc4d3d982b28ea6e6a78de9d5a72cf45539d9ce7f44f74ff7" -> "sha256:026405d2eef5a7215b109c4d8d0d8bbcc03e89186434f74296aa70df85064ea3" [label=""];
  "sha256:026405d2eef5a7215b109c4d8d0d8bbcc03e89186434f74296aa70df85064ea3" -> "sha256:6e28f69f0e1059b0215b2c8a3efb51a323166805ee9b62aade348ccaa56bcfc9" [label=""];
  "sha256:6e28f69f0e1059b0215b2c8a3efb51a323166805ee9b62aade348ccaa56bcfc9" -> "sha256:2b0a954bf25358c5df74d0d153d2314d2a1b729f877a61214af229b2dd346cab" [label=""];
  "sha256:2b0a954bf25358c5df74d0d153d2314d2a1b729f877a61214af229b2dd346cab" -> "sha256:49d656f0f41dac7c16168d70b42cc0f84d69d7a30acef0b3528cd0b8e0a048a3" [label=""];
  "sha256:49d656f0f41dac7c16168d70b42cc0f84d69d7a30acef0b3528cd0b8e0a048a3" -> "sha256:7dff8c6a0b19c1729f5e70c50db16b188ce3d3bd6171b29933607d868c480ff1" [label=""];
}

