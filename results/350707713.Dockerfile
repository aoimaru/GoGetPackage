[app/sources/350707713.Dockerfile]
digraph {
  "sha256:b12e5210915ab2a171b8cda73f1db037ecc61e191e6aaaa2135c4ee5b8690b79" [label="docker-image://docker.io/yoshz/php:5.6" shape="ellipse"];
  "sha256:4ebd307be5e0bf84f22e5dba73c91fec3a99185d7f3008f4225d7b4fd5291c5c" [label="/bin/sh -c export DEBIAN_FRONTEND=\"noninteractive\" &&     apt-get update &&     apt-get -yq install --no-install-recommends         php5.6-fpm &&     apt-get -y clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4c86c6958bb6c1cbe65fe3e7322e3538987e689c700e25c2aeb168aa7f1e21cf" [label="/bin/sh -c sed -i 's/^listen .*/listen = 0.0.0.0:9000/' /etc/php/5.6/fpm/pool.d/www.conf" shape="box"];
  "sha256:1da75249b538b6bc743ed5966f2d4dd3f2478f7301689f10da70c9d2dfb1ee60" [label="/bin/sh -c mkdir -p /etc/service/php-fpm /run/php" shape="box"];
  "sha256:54c2be3921a9945db231526f06aac1028c394895bda54d0d3d044337ea7456e0" [label="local://context" shape="ellipse"];
  "sha256:e2b57ee2cc7be810d0faae23cb671bf38e2288674cb1aedc8972e805a54f0c7d" [label="copy{src=/php-fpm.sh, dest=/etc/service/php-fpm/run}" shape="note"];
  "sha256:c70fad8b3a451af24cf5ff8b9b67a3a13e8dea368eed15afdc2b7362ffd0a983" [label="copy{src=/test.sh, dest=/test.sh}" shape="note"];
  "sha256:411a40e00ba60abc53d6dff6fdd4146f14921efaf4fbe0cdd4959f07387d556a" [label="/bin/sh -c /test.sh && rm /test.sh" shape="box"];
  "sha256:e8a9671b43943a36be396f8e3ea57e21a9d49ccb73b5d3771fcc110f166a57d1" [label="sha256:e8a9671b43943a36be396f8e3ea57e21a9d49ccb73b5d3771fcc110f166a57d1" shape="plaintext"];
  "sha256:b12e5210915ab2a171b8cda73f1db037ecc61e191e6aaaa2135c4ee5b8690b79" -> "sha256:4ebd307be5e0bf84f22e5dba73c91fec3a99185d7f3008f4225d7b4fd5291c5c" [label=""];
  "sha256:4ebd307be5e0bf84f22e5dba73c91fec3a99185d7f3008f4225d7b4fd5291c5c" -> "sha256:4c86c6958bb6c1cbe65fe3e7322e3538987e689c700e25c2aeb168aa7f1e21cf" [label=""];
  "sha256:4c86c6958bb6c1cbe65fe3e7322e3538987e689c700e25c2aeb168aa7f1e21cf" -> "sha256:1da75249b538b6bc743ed5966f2d4dd3f2478f7301689f10da70c9d2dfb1ee60" [label=""];
  "sha256:1da75249b538b6bc743ed5966f2d4dd3f2478f7301689f10da70c9d2dfb1ee60" -> "sha256:e2b57ee2cc7be810d0faae23cb671bf38e2288674cb1aedc8972e805a54f0c7d" [label=""];
  "sha256:54c2be3921a9945db231526f06aac1028c394895bda54d0d3d044337ea7456e0" -> "sha256:e2b57ee2cc7be810d0faae23cb671bf38e2288674cb1aedc8972e805a54f0c7d" [label=""];
  "sha256:e2b57ee2cc7be810d0faae23cb671bf38e2288674cb1aedc8972e805a54f0c7d" -> "sha256:c70fad8b3a451af24cf5ff8b9b67a3a13e8dea368eed15afdc2b7362ffd0a983" [label=""];
  "sha256:54c2be3921a9945db231526f06aac1028c394895bda54d0d3d044337ea7456e0" -> "sha256:c70fad8b3a451af24cf5ff8b9b67a3a13e8dea368eed15afdc2b7362ffd0a983" [label=""];
  "sha256:c70fad8b3a451af24cf5ff8b9b67a3a13e8dea368eed15afdc2b7362ffd0a983" -> "sha256:411a40e00ba60abc53d6dff6fdd4146f14921efaf4fbe0cdd4959f07387d556a" [label=""];
  "sha256:411a40e00ba60abc53d6dff6fdd4146f14921efaf4fbe0cdd4959f07387d556a" -> "sha256:e8a9671b43943a36be396f8e3ea57e21a9d49ccb73b5d3771fcc110f166a57d1" [label=""];
}

