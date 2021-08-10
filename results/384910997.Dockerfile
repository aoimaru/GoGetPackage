[app/sources/384910997.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:f393c52a51aae62102d1344d9679fd861aadd40c9a144870ab680e74f99900d1" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu trusty main\" > /etc/apt/sources.list &&     echo \"deb http://archive.ubuntu.com/ubuntu/ trusty-updates main\" >> /etc/apt/sources.list &&     echo \"deb http://security.ubuntu.com/ubuntu trusty-security main\" >> /etc/apt/sources.list &&     echo \"deb-src http://archive.ubuntu.com/ubuntu trusty main\" >> /etc/apt/sources.list &&     echo \"deb-src http://archive.ubuntu.com/ubuntu/ trusty-updates main\" >> /etc/apt/sources.list &&     echo \"deb-src http://security.ubuntu.com/ubuntu trusty-security main\" >> /etc/apt/sources.list &&     apt-get update &&     apt-get -y upgrade &&     apt-get install -qq                     apache2                     logrotate                     squid-langpack                     ca-certificates                     libgssapi-krb5-2                     libltdl7                     libecap2                     libnetfilter-conntrack3                     curl &&     apt-get clean" shape="box"];
  "sha256:9635451e5e69459e06a052c0d80e3fbd2373ff12f8c4b31d9d1b45578a54a7d3" [label="/bin/sh -c cd /tmp &&     curl -L https://github.com/fgrehm/squid3-ssl-docker/releases/download/v20140623/squid3-20140623.tgz | tar xvz &&     dpkg -i debs/*.deb &&     rm -rf /tmp/debs &&     apt-get clean" shape="box"];
  "sha256:39afee881d0010260de438c6ca5ab08233c0eb7aa27cd7c9c041d4cd959e7420" [label="/bin/sh -c /usr/lib/squid3/ssl_crtd -c -s /var/lib/ssl_db" shape="box"];
  "sha256:e698db6cd68931adc085465531f8452126596b7296d2b3405960aeb1417b8abf" [label="/bin/sh -c chown -R proxy:proxy /var/lib/ssl_db" shape="box"];
  "sha256:79c74cb8943e6a1f6142b941b8df9802a877878def0a62eaa0229fff7e4c4746" [label="local://context" shape="ellipse"];
  "sha256:0372b96639a3a15e43dc6d4cff8c022d5ac91687e728ffbd85ccbc1337b02fbc" [label="copy{src=/squid.conf, dest=/etc/squid3/squid.conf}" shape="note"];
  "sha256:06cf7de5ab11c40cd697b01f4f7bb684c8ef63e9a4afae5811fa99f6a2e2dea7" [label="copy{src=/openssl.cnf, dest=/etc/squid3/openssl.cnf}" shape="note"];
  "sha256:7ee0b092033142784244ba224b30ce701b4807847fa1cbf2b07dc1c930506a07" [label="copy{src=/mk-certs, dest=/usr/local/bin/mk-certs}" shape="note"];
  "sha256:e27648ae58ec29463eb5c3ba15f2484692e15f8a4bf2498f1f1bb5451e3dbff5" [label="copy{src=/run, dest=/usr/local/bin/run}" shape="note"];
  "sha256:f205ef65e8504599d0915feb1a1e9d9a1ba7d1181a100aef20d829db51ba3e5b" [label="/bin/sh -c chmod +x /usr/local/bin/run" shape="box"];
  "sha256:66af36f5402911034e6f0f1bf986a7eda1ce7bc4d43498b47352482d7cd7d930" [label="sha256:66af36f5402911034e6f0f1bf986a7eda1ce7bc4d43498b47352482d7cd7d930" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:f393c52a51aae62102d1344d9679fd861aadd40c9a144870ab680e74f99900d1" [label=""];
  "sha256:f393c52a51aae62102d1344d9679fd861aadd40c9a144870ab680e74f99900d1" -> "sha256:9635451e5e69459e06a052c0d80e3fbd2373ff12f8c4b31d9d1b45578a54a7d3" [label=""];
  "sha256:9635451e5e69459e06a052c0d80e3fbd2373ff12f8c4b31d9d1b45578a54a7d3" -> "sha256:39afee881d0010260de438c6ca5ab08233c0eb7aa27cd7c9c041d4cd959e7420" [label=""];
  "sha256:39afee881d0010260de438c6ca5ab08233c0eb7aa27cd7c9c041d4cd959e7420" -> "sha256:e698db6cd68931adc085465531f8452126596b7296d2b3405960aeb1417b8abf" [label=""];
  "sha256:e698db6cd68931adc085465531f8452126596b7296d2b3405960aeb1417b8abf" -> "sha256:0372b96639a3a15e43dc6d4cff8c022d5ac91687e728ffbd85ccbc1337b02fbc" [label=""];
  "sha256:79c74cb8943e6a1f6142b941b8df9802a877878def0a62eaa0229fff7e4c4746" -> "sha256:0372b96639a3a15e43dc6d4cff8c022d5ac91687e728ffbd85ccbc1337b02fbc" [label=""];
  "sha256:0372b96639a3a15e43dc6d4cff8c022d5ac91687e728ffbd85ccbc1337b02fbc" -> "sha256:06cf7de5ab11c40cd697b01f4f7bb684c8ef63e9a4afae5811fa99f6a2e2dea7" [label=""];
  "sha256:79c74cb8943e6a1f6142b941b8df9802a877878def0a62eaa0229fff7e4c4746" -> "sha256:06cf7de5ab11c40cd697b01f4f7bb684c8ef63e9a4afae5811fa99f6a2e2dea7" [label=""];
  "sha256:06cf7de5ab11c40cd697b01f4f7bb684c8ef63e9a4afae5811fa99f6a2e2dea7" -> "sha256:7ee0b092033142784244ba224b30ce701b4807847fa1cbf2b07dc1c930506a07" [label=""];
  "sha256:79c74cb8943e6a1f6142b941b8df9802a877878def0a62eaa0229fff7e4c4746" -> "sha256:7ee0b092033142784244ba224b30ce701b4807847fa1cbf2b07dc1c930506a07" [label=""];
  "sha256:7ee0b092033142784244ba224b30ce701b4807847fa1cbf2b07dc1c930506a07" -> "sha256:e27648ae58ec29463eb5c3ba15f2484692e15f8a4bf2498f1f1bb5451e3dbff5" [label=""];
  "sha256:79c74cb8943e6a1f6142b941b8df9802a877878def0a62eaa0229fff7e4c4746" -> "sha256:e27648ae58ec29463eb5c3ba15f2484692e15f8a4bf2498f1f1bb5451e3dbff5" [label=""];
  "sha256:e27648ae58ec29463eb5c3ba15f2484692e15f8a4bf2498f1f1bb5451e3dbff5" -> "sha256:f205ef65e8504599d0915feb1a1e9d9a1ba7d1181a100aef20d829db51ba3e5b" [label=""];
  "sha256:f205ef65e8504599d0915feb1a1e9d9a1ba7d1181a100aef20d829db51ba3e5b" -> "sha256:66af36f5402911034e6f0f1bf986a7eda1ce7bc4d43498b47352482d7cd7d930" [label=""];
}

