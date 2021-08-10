[app/sources/252800818.Dockerfile]
digraph {
  "sha256:236ae56fc83254f4f61704bf1c3c0daed434f7cfcf9fe076ff5b5075c2839fef" [label="docker-image://docker.io/library/ubuntu:14.04.3" shape="ellipse"];
  "sha256:a545e2561ef6563d7c7de9b024e25bba05b59e943fbc13ca9f25546ec15cf057" [label="/bin/sh -c apt-get update && apt-get clean && apt-get install libnet1 libpcap0.8 && apt-get clean && apt-get install -y libnet1-dev libpcap0.8-dev && apt-get clean && apt-get install -y git squid3 && apt-get clean && mv /etc/squid3/squid.conf /etc/squid3/squid.conf.dist" shape="box"];
  "sha256:0f20ee59188497f7b79584503a19549f5b21b53d4ae4b54580cf9eda8cd8e29d" [label="local://context" shape="ellipse"];
  "sha256:7ca0d1b360bdec510c6e8d002abe90bd4dca888c7b5e79cf3c286b41931b8e3d" [label="copy{src=/squid.conf, dest=/etc/squid3/squid.conf}" shape="note"];
  "sha256:f67ed49abc0720c0d1d34921db330c7578176569f8f12a507e7f43e351315009" [label="/bin/sh -c mkdir /var/cache/squid" shape="box"];
  "sha256:c09556835bed8b48ee2887547e1d5f37800c21e8c5ec60af5aef3c0300ff921e" [label="/bin/sh -c chown -R proxy:proxy /var/cache/squid" shape="box"];
  "sha256:880a01d201b819534df2d581cfa40ca63e85682c9cd5d9c07cad27b52235113a" [label="/bin/sh -c /usr/sbin/squid3 -N -z -F" shape="box"];
  "sha256:e69274cba93924f8107a58492756e3283a6d4dc84d8100c4a6438055afd75166" [label="/bin/sh -c git clone https://github.com/snooda/net-speeder.git net-speeder" shape="box"];
  "sha256:c074f83f401ac0a05e74905c187d094e10cc30e524970fac8ee1904d74cf63ce" [label="mkdir{path=/net-speeder}" shape="note"];
  "sha256:b7954e1f488365ac2fb9f6ceb189c793fd463d39b88c91639264d824ece5a1ea" [label="/bin/sh -c sh build.sh" shape="box"];
  "sha256:fb5814734358727310029231b7b66fbc17348df40bc8ba47c3642b604b16cca7" [label="/bin/sh -c mv net_speeder /usr/local/bin/" shape="box"];
  "sha256:247f216b763444fb084a62916083b5a377aa2ebc4591f558c4f39333b4f13e49" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:7f5eaf1ad4ee7a9dfedc87b6576aaacc6492a4d8a0bd036421ad294aa180293d" [label="/bin/sh -c chmod +x /usr/local/bin/entrypoint.sh" shape="box"];
  "sha256:3c5f8ec16effae2f393d43d3b2b6b4cd590e951c457e69ce49cf215aa7cb4cb9" [label="/bin/sh -c chmod +x /usr/local/bin/net_speeder" shape="box"];
  "sha256:410e0814309fc344122a587bfbec75a6c4d24fb862518262c7c612d06fff64cd" [label="sha256:410e0814309fc344122a587bfbec75a6c4d24fb862518262c7c612d06fff64cd" shape="plaintext"];
  "sha256:236ae56fc83254f4f61704bf1c3c0daed434f7cfcf9fe076ff5b5075c2839fef" -> "sha256:a545e2561ef6563d7c7de9b024e25bba05b59e943fbc13ca9f25546ec15cf057" [label=""];
  "sha256:a545e2561ef6563d7c7de9b024e25bba05b59e943fbc13ca9f25546ec15cf057" -> "sha256:7ca0d1b360bdec510c6e8d002abe90bd4dca888c7b5e79cf3c286b41931b8e3d" [label=""];
  "sha256:0f20ee59188497f7b79584503a19549f5b21b53d4ae4b54580cf9eda8cd8e29d" -> "sha256:7ca0d1b360bdec510c6e8d002abe90bd4dca888c7b5e79cf3c286b41931b8e3d" [label=""];
  "sha256:7ca0d1b360bdec510c6e8d002abe90bd4dca888c7b5e79cf3c286b41931b8e3d" -> "sha256:f67ed49abc0720c0d1d34921db330c7578176569f8f12a507e7f43e351315009" [label=""];
  "sha256:f67ed49abc0720c0d1d34921db330c7578176569f8f12a507e7f43e351315009" -> "sha256:c09556835bed8b48ee2887547e1d5f37800c21e8c5ec60af5aef3c0300ff921e" [label=""];
  "sha256:c09556835bed8b48ee2887547e1d5f37800c21e8c5ec60af5aef3c0300ff921e" -> "sha256:880a01d201b819534df2d581cfa40ca63e85682c9cd5d9c07cad27b52235113a" [label=""];
  "sha256:880a01d201b819534df2d581cfa40ca63e85682c9cd5d9c07cad27b52235113a" -> "sha256:e69274cba93924f8107a58492756e3283a6d4dc84d8100c4a6438055afd75166" [label=""];
  "sha256:e69274cba93924f8107a58492756e3283a6d4dc84d8100c4a6438055afd75166" -> "sha256:c074f83f401ac0a05e74905c187d094e10cc30e524970fac8ee1904d74cf63ce" [label=""];
  "sha256:c074f83f401ac0a05e74905c187d094e10cc30e524970fac8ee1904d74cf63ce" -> "sha256:b7954e1f488365ac2fb9f6ceb189c793fd463d39b88c91639264d824ece5a1ea" [label=""];
  "sha256:b7954e1f488365ac2fb9f6ceb189c793fd463d39b88c91639264d824ece5a1ea" -> "sha256:fb5814734358727310029231b7b66fbc17348df40bc8ba47c3642b604b16cca7" [label=""];
  "sha256:fb5814734358727310029231b7b66fbc17348df40bc8ba47c3642b604b16cca7" -> "sha256:247f216b763444fb084a62916083b5a377aa2ebc4591f558c4f39333b4f13e49" [label=""];
  "sha256:0f20ee59188497f7b79584503a19549f5b21b53d4ae4b54580cf9eda8cd8e29d" -> "sha256:247f216b763444fb084a62916083b5a377aa2ebc4591f558c4f39333b4f13e49" [label=""];
  "sha256:247f216b763444fb084a62916083b5a377aa2ebc4591f558c4f39333b4f13e49" -> "sha256:7f5eaf1ad4ee7a9dfedc87b6576aaacc6492a4d8a0bd036421ad294aa180293d" [label=""];
  "sha256:7f5eaf1ad4ee7a9dfedc87b6576aaacc6492a4d8a0bd036421ad294aa180293d" -> "sha256:3c5f8ec16effae2f393d43d3b2b6b4cd590e951c457e69ce49cf215aa7cb4cb9" [label=""];
  "sha256:3c5f8ec16effae2f393d43d3b2b6b4cd590e951c457e69ce49cf215aa7cb4cb9" -> "sha256:410e0814309fc344122a587bfbec75a6c4d24fb862518262c7c612d06fff64cd" [label=""];
}

