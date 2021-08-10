[app/sources/341200450.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:7448894f73472451f2c0726198fe6f984ba54eb81a911f0b75fc6b7c5cf8ce50" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y curl make mysql-server         postgresql sqlite3 supervisor &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:1b8869355e3b2fa2ba0edd562929bd659c08d2c366b1c73841e87021b4db87ad" [label="/bin/sh -c curl  https://bootstrap.pypa.io/get-pip.py | python3" shape="box"];
  "sha256:96f1e9ce8d495546a88e136f330e222bed143c4584febb70a22b849b1ad41930" [label="/bin/sh -c pip3 install 'Click>=7.0,<8.0' 'sqlparse>=0.2.4,<0.3.0' 'nose>=1.3.7,<1.4.0'     'PyMySQL>=0.9.2,<0.10.0' 'pg8000>=1.12.3,<1.13.0'" shape="box"];
  "sha256:b6de1fe5d351dfd9c562047b1041bda762b8d219ef8d353c753a7bbdd485b6ea" [label="/bin/sh -c pip3 install coveralls sphinx sphinx_rtd_theme" shape="box"];
  "sha256:966f3d4f0ee91077f30cdb9655ae51f9964a9c36fd0d61dbce69726f8d997563" [label="local://context" shape="ellipse"];
  "sha256:a85f640ba680c10a90b570f9886f73e0a189a0f7dc0e8a62ef757f6d77daea98" [label="copy{src=/supervisor.conf, dest=/etc/supervisor/conf.d/agnostic-tests.conf}" shape="note"];
  "sha256:cec1aa59ff383ebeaf6f702a56eb1d457ea065283fe11b9a753a8ada16aed202" [label="/bin/sh -c mkdir -p /var/log/supervisor" shape="box"];
  "sha256:c93361dd7cc868ae90ec7a0d1f800b69dc4995553ee9815c88dba94f37bcca25" [label="/bin/sh -c /etc/init.d/mysql start &&     mysql -u root -e \"SET PASSWORD FOR 'root'@'localhost' = PASSWORD('root')\"" shape="box"];
  "sha256:4c74906e148d030441c08f91cfd25c31f9fafd03d668a77cff1475fa74403ec8" [label="/bin/sh -c sed --in-place 's:#fsync = on:fsync = off:'        /etc/postgresql/9.5/main/postgresql.conf" shape="box"];
  "sha256:333aedbbbcf7ab7300f5bcc12baa6095b489c5e1919fef00088f499b88b5e607" [label="/bin/sh -c /etc/init.d/postgresql start &&     su postgres -c \"echo CREATE USER root WITH SUPERUSER PASSWORD \\\\'root\\\\' | psql\"" shape="box"];
  "sha256:56f9de3ea724af8e6489eaf5be8bc3f53c4efadadb1f87a7a4c8d8f271f6225e" [label="sha256:56f9de3ea724af8e6489eaf5be8bc3f53c4efadadb1f87a7a4c8d8f271f6225e" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:7448894f73472451f2c0726198fe6f984ba54eb81a911f0b75fc6b7c5cf8ce50" [label=""];
  "sha256:7448894f73472451f2c0726198fe6f984ba54eb81a911f0b75fc6b7c5cf8ce50" -> "sha256:1b8869355e3b2fa2ba0edd562929bd659c08d2c366b1c73841e87021b4db87ad" [label=""];
  "sha256:1b8869355e3b2fa2ba0edd562929bd659c08d2c366b1c73841e87021b4db87ad" -> "sha256:96f1e9ce8d495546a88e136f330e222bed143c4584febb70a22b849b1ad41930" [label=""];
  "sha256:96f1e9ce8d495546a88e136f330e222bed143c4584febb70a22b849b1ad41930" -> "sha256:b6de1fe5d351dfd9c562047b1041bda762b8d219ef8d353c753a7bbdd485b6ea" [label=""];
  "sha256:b6de1fe5d351dfd9c562047b1041bda762b8d219ef8d353c753a7bbdd485b6ea" -> "sha256:a85f640ba680c10a90b570f9886f73e0a189a0f7dc0e8a62ef757f6d77daea98" [label=""];
  "sha256:966f3d4f0ee91077f30cdb9655ae51f9964a9c36fd0d61dbce69726f8d997563" -> "sha256:a85f640ba680c10a90b570f9886f73e0a189a0f7dc0e8a62ef757f6d77daea98" [label=""];
  "sha256:a85f640ba680c10a90b570f9886f73e0a189a0f7dc0e8a62ef757f6d77daea98" -> "sha256:cec1aa59ff383ebeaf6f702a56eb1d457ea065283fe11b9a753a8ada16aed202" [label=""];
  "sha256:cec1aa59ff383ebeaf6f702a56eb1d457ea065283fe11b9a753a8ada16aed202" -> "sha256:c93361dd7cc868ae90ec7a0d1f800b69dc4995553ee9815c88dba94f37bcca25" [label=""];
  "sha256:c93361dd7cc868ae90ec7a0d1f800b69dc4995553ee9815c88dba94f37bcca25" -> "sha256:4c74906e148d030441c08f91cfd25c31f9fafd03d668a77cff1475fa74403ec8" [label=""];
  "sha256:4c74906e148d030441c08f91cfd25c31f9fafd03d668a77cff1475fa74403ec8" -> "sha256:333aedbbbcf7ab7300f5bcc12baa6095b489c5e1919fef00088f499b88b5e607" [label=""];
  "sha256:333aedbbbcf7ab7300f5bcc12baa6095b489c5e1919fef00088f499b88b5e607" -> "sha256:56f9de3ea724af8e6489eaf5be8bc3f53c4efadadb1f87a7a4c8d8f271f6225e" [label=""];
}

