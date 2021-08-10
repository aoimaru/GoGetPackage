[app/sources/362020444.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:2b3f0a0cc18bc5e2dd7d7a5d3deb8af822da8fd605b6eefb601e0f1628957192" [label="/bin/sh -c apt-get -y update && apt-get -y dist-upgrade" shape="box"];
  "sha256:0f395946b6d2e2e94557f315a3dd32a67ecfccfe46920713e6a3a4aaacdbfe73" [label="/bin/sh -c apt-get -y install wget" shape="box"];
  "sha256:3cfc0e137fa33490511439eefe8fa5b887e490ce99eca7c74f550b5019818b5f" [label="/bin/sh -c wget -O - http://lemonldap-ng.org/_media/rpm-gpg-key-ow2 | apt-key add -" shape="box"];
  "sha256:2d6331a7f754b42b83b1b821119143d68ddb542bfc5f4572671fe790bf27f726" [label="local://context" shape="ellipse"];
  "sha256:4b2ffb8d24453c405a21c4042d91e88704df768da32730f14390f4722c617352" [label="copy{src=/lemonldap-ng-oldstable.list, dest=/etc/apt/sources.list.d/}" shape="note"];
  "sha256:b1d4280b16e9eb22eeed048590ff369e3a9456570ec12afc77c8725888513e89" [label="/bin/sh -c apt-get -y update && apt-get -y install apache2 libapache2-mod-perl2 lemonldap-ng lemonldap-ng-fr-doc" shape="box"];
  "sha256:21166989adc774f0f132db482f3e46a264d18a20c3db1b311ca2cba0e7f5cce2" [label="/bin/sh -c sed -i \"s/example\\.com/${SSODOMAIN}/g\" /etc/lemonldap-ng/* /var/lib/lemonldap-ng/conf/lmConf-1 /var/lib/lemonldap-ng/test/index.pl" shape="box"];
  "sha256:93708be9e6070cd84907d6a07cf1fe97887dff5f6769e88cdbcc7c737ef0d473" [label="/bin/sh -c a2ensite handler-apache2.conf" shape="box"];
  "sha256:0ce8bc8cd38830fa27ac5f72b14713a6e77ad017a252b4e17558f0abc5cd6bff" [label="/bin/sh -c a2ensite portal-apache2.conf" shape="box"];
  "sha256:1ce9694ea678c807f375130b8fb7b598d7147e30b2c11daa2cbb7eff01194f57" [label="/bin/sh -c a2ensite manager-apache2.conf" shape="box"];
  "sha256:4b9424906c1d229c93a34a8ebed3fe73b1ed84e5d006b3bf74e2e0d9c4a89dbd" [label="/bin/sh -c a2ensite test-apache2.conf" shape="box"];
  "sha256:ae3be172447cf9129305a8ee8405a53c5a4d4e2788fe7542ac5ebf1e65fc9897" [label="/bin/sh -c a2enmod cgid perl alias rewrite" shape="box"];
  "sha256:e98d874a35505bdbbef2c4d80c2c82e9e3e5ee123ef914562da38552a889b825" [label="/bin/sh -c rm -rf /tmp/lemonldap-ng-config" shape="box"];
  "sha256:d4de27589229b22aac1fdaf489095ab03fe9f5ac1987b5adf1211a426a50872c" [label="sha256:d4de27589229b22aac1fdaf489095ab03fe9f5ac1987b5adf1211a426a50872c" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:2b3f0a0cc18bc5e2dd7d7a5d3deb8af822da8fd605b6eefb601e0f1628957192" [label=""];
  "sha256:2b3f0a0cc18bc5e2dd7d7a5d3deb8af822da8fd605b6eefb601e0f1628957192" -> "sha256:0f395946b6d2e2e94557f315a3dd32a67ecfccfe46920713e6a3a4aaacdbfe73" [label=""];
  "sha256:0f395946b6d2e2e94557f315a3dd32a67ecfccfe46920713e6a3a4aaacdbfe73" -> "sha256:3cfc0e137fa33490511439eefe8fa5b887e490ce99eca7c74f550b5019818b5f" [label=""];
  "sha256:3cfc0e137fa33490511439eefe8fa5b887e490ce99eca7c74f550b5019818b5f" -> "sha256:4b2ffb8d24453c405a21c4042d91e88704df768da32730f14390f4722c617352" [label=""];
  "sha256:2d6331a7f754b42b83b1b821119143d68ddb542bfc5f4572671fe790bf27f726" -> "sha256:4b2ffb8d24453c405a21c4042d91e88704df768da32730f14390f4722c617352" [label=""];
  "sha256:4b2ffb8d24453c405a21c4042d91e88704df768da32730f14390f4722c617352" -> "sha256:b1d4280b16e9eb22eeed048590ff369e3a9456570ec12afc77c8725888513e89" [label=""];
  "sha256:b1d4280b16e9eb22eeed048590ff369e3a9456570ec12afc77c8725888513e89" -> "sha256:21166989adc774f0f132db482f3e46a264d18a20c3db1b311ca2cba0e7f5cce2" [label=""];
  "sha256:21166989adc774f0f132db482f3e46a264d18a20c3db1b311ca2cba0e7f5cce2" -> "sha256:93708be9e6070cd84907d6a07cf1fe97887dff5f6769e88cdbcc7c737ef0d473" [label=""];
  "sha256:93708be9e6070cd84907d6a07cf1fe97887dff5f6769e88cdbcc7c737ef0d473" -> "sha256:0ce8bc8cd38830fa27ac5f72b14713a6e77ad017a252b4e17558f0abc5cd6bff" [label=""];
  "sha256:0ce8bc8cd38830fa27ac5f72b14713a6e77ad017a252b4e17558f0abc5cd6bff" -> "sha256:1ce9694ea678c807f375130b8fb7b598d7147e30b2c11daa2cbb7eff01194f57" [label=""];
  "sha256:1ce9694ea678c807f375130b8fb7b598d7147e30b2c11daa2cbb7eff01194f57" -> "sha256:4b9424906c1d229c93a34a8ebed3fe73b1ed84e5d006b3bf74e2e0d9c4a89dbd" [label=""];
  "sha256:4b9424906c1d229c93a34a8ebed3fe73b1ed84e5d006b3bf74e2e0d9c4a89dbd" -> "sha256:ae3be172447cf9129305a8ee8405a53c5a4d4e2788fe7542ac5ebf1e65fc9897" [label=""];
  "sha256:ae3be172447cf9129305a8ee8405a53c5a4d4e2788fe7542ac5ebf1e65fc9897" -> "sha256:e98d874a35505bdbbef2c4d80c2c82e9e3e5ee123ef914562da38552a889b825" [label=""];
  "sha256:e98d874a35505bdbbef2c4d80c2c82e9e3e5ee123ef914562da38552a889b825" -> "sha256:d4de27589229b22aac1fdaf489095ab03fe9f5ac1987b5adf1211a426a50872c" [label=""];
}

