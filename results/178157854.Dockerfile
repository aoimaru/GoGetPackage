[app/sources/178157854.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:2241c868f4f00a5175386e3ab2ef363772acde32cd15ac02b2c543e464165ac5" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:47605a577304dc0258481df9bd4f975ff7d10aac98f8dc3f256479e2f741787f" [label="/bin/sh -c apt-get install -y nginx php5-fpm php5-mysqlnd php5-cli mysql-server supervisor" shape="box"];
  "sha256:02634f975958757fc7f3d1a14850c470b1446176b938713e0b6072220d82c17c" [label="/bin/sh -c sed -e 's/;daemonize = yes/daemonize = no/' -i /etc/php5/fpm/php-fpm.conf" shape="box"];
  "sha256:6bdf888ce3de6decf28c3f6add7d9bf378a3105e68a0e546b4e2976c575b7672" [label="/bin/sh -c sed -e 's/;listen\\.owner/listen.owner/' -i /etc/php5/fpm/pool.d/www.conf" shape="box"];
  "sha256:03cc72b3d159541424b47554891ebc7c91f33cf7283f403560dab9170fc71cf7" [label="/bin/sh -c sed -e 's/;listen\\.group/listen.group/' -i /etc/php5/fpm/pool.d/www.conf" shape="box"];
  "sha256:1a8b674bd2f6c47d031d520a8ed718d45de689c6be14c9a5eedc4385a358af9b" [label="/bin/sh -c echo \"\\ndaemon off;\" >> /etc/nginx/nginx.conf" shape="box"];
  "sha256:f5158b4688c181ddad489b3fa8ad2377d012691d623845654f6546c1a0b59042" [label="local://context" shape="ellipse"];
  "sha256:ab3d4f7a8cf072cf8f32b26b99b62f32729e4887c1a96625e11ddf126b938a8d" [label="copy{src=/vhost.conf, dest=/etc/nginx/sites-available/default}" shape="note"];
  "sha256:f31ebd6534926becef06440d981cf068b36ea93bf5531c38d36d0670a1296a50" [label="copy{src=/supervisor.conf, dest=/etc/supervisor/conf.d/supervisor.conf}" shape="note"];
  "sha256:a8e0e8c46963f10badf77c4d50b7bc869ffb68e95b6c1580fc440344c9644d68" [label="copy{src=/init.sh, dest=/init.sh}" shape="note"];
  "sha256:216c88e2d5c11ea1f7621b8463b70e363c207bf37af59caf0eab85382ecbc8ae" [label="mkdir{path=/srv}" shape="note"];
  "sha256:5d1a2fe27ed1cb83b0278702b62b66d21d22aa16de96d673bc2d08cded948783" [label="sha256:5d1a2fe27ed1cb83b0278702b62b66d21d22aa16de96d673bc2d08cded948783" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:2241c868f4f00a5175386e3ab2ef363772acde32cd15ac02b2c543e464165ac5" [label=""];
  "sha256:2241c868f4f00a5175386e3ab2ef363772acde32cd15ac02b2c543e464165ac5" -> "sha256:47605a577304dc0258481df9bd4f975ff7d10aac98f8dc3f256479e2f741787f" [label=""];
  "sha256:47605a577304dc0258481df9bd4f975ff7d10aac98f8dc3f256479e2f741787f" -> "sha256:02634f975958757fc7f3d1a14850c470b1446176b938713e0b6072220d82c17c" [label=""];
  "sha256:02634f975958757fc7f3d1a14850c470b1446176b938713e0b6072220d82c17c" -> "sha256:6bdf888ce3de6decf28c3f6add7d9bf378a3105e68a0e546b4e2976c575b7672" [label=""];
  "sha256:6bdf888ce3de6decf28c3f6add7d9bf378a3105e68a0e546b4e2976c575b7672" -> "sha256:03cc72b3d159541424b47554891ebc7c91f33cf7283f403560dab9170fc71cf7" [label=""];
  "sha256:03cc72b3d159541424b47554891ebc7c91f33cf7283f403560dab9170fc71cf7" -> "sha256:1a8b674bd2f6c47d031d520a8ed718d45de689c6be14c9a5eedc4385a358af9b" [label=""];
  "sha256:1a8b674bd2f6c47d031d520a8ed718d45de689c6be14c9a5eedc4385a358af9b" -> "sha256:ab3d4f7a8cf072cf8f32b26b99b62f32729e4887c1a96625e11ddf126b938a8d" [label=""];
  "sha256:f5158b4688c181ddad489b3fa8ad2377d012691d623845654f6546c1a0b59042" -> "sha256:ab3d4f7a8cf072cf8f32b26b99b62f32729e4887c1a96625e11ddf126b938a8d" [label=""];
  "sha256:ab3d4f7a8cf072cf8f32b26b99b62f32729e4887c1a96625e11ddf126b938a8d" -> "sha256:f31ebd6534926becef06440d981cf068b36ea93bf5531c38d36d0670a1296a50" [label=""];
  "sha256:f5158b4688c181ddad489b3fa8ad2377d012691d623845654f6546c1a0b59042" -> "sha256:f31ebd6534926becef06440d981cf068b36ea93bf5531c38d36d0670a1296a50" [label=""];
  "sha256:f31ebd6534926becef06440d981cf068b36ea93bf5531c38d36d0670a1296a50" -> "sha256:a8e0e8c46963f10badf77c4d50b7bc869ffb68e95b6c1580fc440344c9644d68" [label=""];
  "sha256:f5158b4688c181ddad489b3fa8ad2377d012691d623845654f6546c1a0b59042" -> "sha256:a8e0e8c46963f10badf77c4d50b7bc869ffb68e95b6c1580fc440344c9644d68" [label=""];
  "sha256:a8e0e8c46963f10badf77c4d50b7bc869ffb68e95b6c1580fc440344c9644d68" -> "sha256:216c88e2d5c11ea1f7621b8463b70e363c207bf37af59caf0eab85382ecbc8ae" [label=""];
  "sha256:216c88e2d5c11ea1f7621b8463b70e363c207bf37af59caf0eab85382ecbc8ae" -> "sha256:5d1a2fe27ed1cb83b0278702b62b66d21d22aa16de96d673bc2d08cded948783" [label=""];
}

