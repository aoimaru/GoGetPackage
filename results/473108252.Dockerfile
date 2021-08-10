[app/sources/473108252.Dockerfile]
digraph {
  "sha256:46e9b6ee62e0a6727cb6f8abbb6adbe3bbcc659b737fc89d745c6f1f102e9055" [label="docker-image://docker.io/pcic/geospatial-python:latest" shape="ellipse"];
  "sha256:5d1616fb1f60f7effd22b518aea15e4132bd248ad33d617d8b76f9dc31b7d94c" [label="/bin/sh -c apt-get update &&     apt-get -qq -y install     freetds-dev     git     gmt     libncurses-dev     postgresql-10     time     wget     imagemagick" shape="box"];
  "sha256:97092e47495062cb9bcb8687ce310b36365e6bea6ff4dc60cdf9ffdee90bcf1a" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:09911227ff43402d7515799e0f7149edda83b3841a0d72468546dfafa11b264b" [label="/bin/sh -c echo 'none /dev/shm tmpfs rw,nosuid,nodev,noexec 0 0' > /etc/fstab" shape="box"];
  "sha256:226bc0882312368b9ecc685179948f665b3216197cfb5c4cd22ccc18c82fa6ac" [label="/bin/sh -c cd /usr/bin/ &&    ln -fs python3 python &&    ln -fs python3-config python-config" shape="box"];
  "sha256:09b2b804a11afcf58755c451c7f318d3d44c198e850c295f55d02cc0ed663ed7" [label="mkdir{path=/srv}" shape="note"];
  "sha256:7ce32bb2a816a2407a680ee74ce52a0e49e1dcc2be3ec1f81b1724fa7c8061bb" [label="/bin/sh -c echo '/usr/local/lib' >> /etc/ld.so.conf" shape="box"];
  "sha256:d90913bbd173f9e8ae35a30ca8e29b149d244cafb1198878d1657c8af26a19a1" [label="/bin/sh -c wget -q -N http://download.osgeo.org/geos/geos-3.6.0.tar.bz2" shape="box"];
  "sha256:652c9f3193cdbede78fed4bbfba904093bed4b22c8d629faf3140ba0d8a785a3" [label="/bin/sh -c tar -xjf geos-3.6.0.tar.bz2" shape="box"];
  "sha256:e0aae7ebb4d112973c324da186087fbe2de54a30801f899d30fb1837de58cd6f" [label="/bin/sh -c cd geos-3.6.0 && ./configure && make -j 2 && make install && ldconfig && cd .." shape="box"];
  "sha256:4f890ec8932fc20f69da996f7ad44110abf0f5187d77d74e3ad7fa16e4ff556f" [label="local://context" shape="ellipse"];
  "sha256:10bad22ba52a8737d1708f5f68984e02a4d098d7dc406427e03717f1eee2ba52" [label="copy{src=/requirements, dest=/requirements}" shape="note"];
  "sha256:c37b0aff8f60fb3000155de893d6158661b78d74734a39f76335e6cf410eea8c" [label="/bin/sh -c pip3 install git+https://github.com/pymssql/pymssql" shape="box"];
  "sha256:3935f0fd99bd3ceaf2d077be5437c8e309344211e06c15af1b0d451c45078e22" [label="/bin/sh -c /bin/bash -c 'pip install -r /requirements/production.txt'" shape="box"];
  "sha256:ab8500793ede434311648c011416f8257ba82c8e09884586a2f6e5c4e3b0771e" [label="/bin/sh -c wget -q http://sourceforge.net/projects/matplotlib/files/matplotlib-toolkits/basemap-1.0.7/basemap-1.0.7.tar.gz" shape="box"];
  "sha256:b4b79fa1fce94c1da97fc53f3d4ac6b8faeb56978c3803725008ad936161fd46" [label="/bin/sh -c tar -xzf basemap-1.0.7.tar.gz" shape="box"];
  "sha256:3657ae366506a91bc9b48521657815fad2b27ac34c40e39388c60f9932b42fbf" [label="/bin/sh -c cd basemap-1.0.7 && GEOS_DIR=/usr/local python setup.py install && cd .." shape="box"];
  "sha256:5dc87fc417e0bc0d8f3f4535a5c944ed2a999ce1d080fefa9060eccb01936c52" [label="copy{src=/docker-stoqs-uwsgi.ini, dest=/etc/uwsgi/django-uwsgi.ini}" shape="note"];
  "sha256:f036507330929fd14e2038002d1a245bdf648a9638e4c7f63ad60969160ae78f" [label="sha256:f036507330929fd14e2038002d1a245bdf648a9638e4c7f63ad60969160ae78f" shape="plaintext"];
  "sha256:46e9b6ee62e0a6727cb6f8abbb6adbe3bbcc659b737fc89d745c6f1f102e9055" -> "sha256:5d1616fb1f60f7effd22b518aea15e4132bd248ad33d617d8b76f9dc31b7d94c" [label=""];
  "sha256:5d1616fb1f60f7effd22b518aea15e4132bd248ad33d617d8b76f9dc31b7d94c" -> "sha256:97092e47495062cb9bcb8687ce310b36365e6bea6ff4dc60cdf9ffdee90bcf1a" [label=""];
  "sha256:97092e47495062cb9bcb8687ce310b36365e6bea6ff4dc60cdf9ffdee90bcf1a" -> "sha256:09911227ff43402d7515799e0f7149edda83b3841a0d72468546dfafa11b264b" [label=""];
  "sha256:09911227ff43402d7515799e0f7149edda83b3841a0d72468546dfafa11b264b" -> "sha256:226bc0882312368b9ecc685179948f665b3216197cfb5c4cd22ccc18c82fa6ac" [label=""];
  "sha256:226bc0882312368b9ecc685179948f665b3216197cfb5c4cd22ccc18c82fa6ac" -> "sha256:09b2b804a11afcf58755c451c7f318d3d44c198e850c295f55d02cc0ed663ed7" [label=""];
  "sha256:09b2b804a11afcf58755c451c7f318d3d44c198e850c295f55d02cc0ed663ed7" -> "sha256:7ce32bb2a816a2407a680ee74ce52a0e49e1dcc2be3ec1f81b1724fa7c8061bb" [label=""];
  "sha256:7ce32bb2a816a2407a680ee74ce52a0e49e1dcc2be3ec1f81b1724fa7c8061bb" -> "sha256:d90913bbd173f9e8ae35a30ca8e29b149d244cafb1198878d1657c8af26a19a1" [label=""];
  "sha256:d90913bbd173f9e8ae35a30ca8e29b149d244cafb1198878d1657c8af26a19a1" -> "sha256:652c9f3193cdbede78fed4bbfba904093bed4b22c8d629faf3140ba0d8a785a3" [label=""];
  "sha256:652c9f3193cdbede78fed4bbfba904093bed4b22c8d629faf3140ba0d8a785a3" -> "sha256:e0aae7ebb4d112973c324da186087fbe2de54a30801f899d30fb1837de58cd6f" [label=""];
  "sha256:e0aae7ebb4d112973c324da186087fbe2de54a30801f899d30fb1837de58cd6f" -> "sha256:10bad22ba52a8737d1708f5f68984e02a4d098d7dc406427e03717f1eee2ba52" [label=""];
  "sha256:4f890ec8932fc20f69da996f7ad44110abf0f5187d77d74e3ad7fa16e4ff556f" -> "sha256:10bad22ba52a8737d1708f5f68984e02a4d098d7dc406427e03717f1eee2ba52" [label=""];
  "sha256:10bad22ba52a8737d1708f5f68984e02a4d098d7dc406427e03717f1eee2ba52" -> "sha256:c37b0aff8f60fb3000155de893d6158661b78d74734a39f76335e6cf410eea8c" [label=""];
  "sha256:c37b0aff8f60fb3000155de893d6158661b78d74734a39f76335e6cf410eea8c" -> "sha256:3935f0fd99bd3ceaf2d077be5437c8e309344211e06c15af1b0d451c45078e22" [label=""];
  "sha256:3935f0fd99bd3ceaf2d077be5437c8e309344211e06c15af1b0d451c45078e22" -> "sha256:ab8500793ede434311648c011416f8257ba82c8e09884586a2f6e5c4e3b0771e" [label=""];
  "sha256:ab8500793ede434311648c011416f8257ba82c8e09884586a2f6e5c4e3b0771e" -> "sha256:b4b79fa1fce94c1da97fc53f3d4ac6b8faeb56978c3803725008ad936161fd46" [label=""];
  "sha256:b4b79fa1fce94c1da97fc53f3d4ac6b8faeb56978c3803725008ad936161fd46" -> "sha256:3657ae366506a91bc9b48521657815fad2b27ac34c40e39388c60f9932b42fbf" [label=""];
  "sha256:3657ae366506a91bc9b48521657815fad2b27ac34c40e39388c60f9932b42fbf" -> "sha256:5dc87fc417e0bc0d8f3f4535a5c944ed2a999ce1d080fefa9060eccb01936c52" [label=""];
  "sha256:4f890ec8932fc20f69da996f7ad44110abf0f5187d77d74e3ad7fa16e4ff556f" -> "sha256:5dc87fc417e0bc0d8f3f4535a5c944ed2a999ce1d080fefa9060eccb01936c52" [label=""];
  "sha256:5dc87fc417e0bc0d8f3f4535a5c944ed2a999ce1d080fefa9060eccb01936c52" -> "sha256:f036507330929fd14e2038002d1a245bdf648a9638e4c7f63ad60969160ae78f" [label=""];
}

