[app/sources/281969539.Dockerfile]
digraph {
  "sha256:bfe233a4b41c99a547b31f245b888fcf6cb375158f735effacc1e3a483969d31" [label="local://context" shape="ellipse"];
  "sha256:6456e4b9339381232499e4d9278bf3c286cc6be870c85376fdbc4dbe21aac7fc" [label="docker-image://docker.io/library/ubuntu:16.10@sha256:8dc9652808dc091400d7d5983949043a9f9c7132b15c14814275d25f94bca18a" shape="ellipse"];
  "sha256:230ea9ccbd42f3f7360fe7602a4d384ab6afa6fc933a3465c9fd3812155eec85" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:5e226a8b3dbc538525e03c0fa8d06db954147dc7a979773a72209d9484cfea03" [label="/bin/sh -c echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections" shape="box"];
  "sha256:4f7c7ad5473fb6600afb48a622bfe0473c853fb3cf442960a812ab88c8a3212d" [label="/bin/sh -c apt-get -y update   && apt-get -y install   build-essential   gcc   apt-utils   pkg-config   software-properties-common   apt-transport-https   libssl-dev   sudo   bash   curl   tar   git   netcat   bind9   dnsutils   && apt-get -y update   && apt-get -y upgrade   && apt-get -y autoremove   && apt-get -y autoclean" shape="box"];
  "sha256:430d63e5294a1549a635bfb22b3623845a59c9ff0adc2aa0d05ab5cf5cb4e166" [label="/bin/sh -c rm -rf ${GOROOT}   && curl -s ${GO_DOWNLOAD_URL}/go${GO_VERSION}.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz   && mkdir -p ${GOPATH}/src ${GOPATH}/bin   && go version" shape="box"];
  "sha256:7c4ee6d0d3fd5558f60a8e1fff036eeb084ef75b784140816d2585289864d68e" [label="/bin/sh -c mkdir -p /var/bind /etc/bind" shape="box"];
  "sha256:5c7daa2c749aeaf83db18591f291df407aeddeb506dbe64449bae3113f16d90c" [label="/bin/sh -c chown root:bind /var/bind /etc/bind" shape="box"];
  "sha256:1aff61eb67ab368966897725858b51e984e2fc4b2abfe4e0e9b95644bdd28047" [label="copy{src=/Procfile, dest=/Procfile}" shape="note"];
  "sha256:196a783c7272f5a3ceb31ccadfa523fca42627f7e8e3673ca349299e1c14fde0" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:f0f00f9579dfe331b4316d3db0c8f890518324957fc6034e11aebd1125c79687" [label="copy{src=/named.conf, dest=/etc/bind/},copy{src=/etcd.zone, dest=/etc/bind/},copy{src=/rdns.zone, dest=/etc/bind/}" shape="note"];
  "sha256:4a096cbd17e801c34db8828e5cc8cda84ea413d181e029964740cd5c705a4b0d" [label="/bin/sh -c chown root:bind /etc/bind/named.conf /etc/bind/etcd.zone /etc/bind/rdns.zone" shape="box"];
  "sha256:88b19457fa8aabd010f3ef18491050b849f3c33111c46bde8f6e802a90332b25" [label="copy{src=/resolv.conf, dest=/etc/resolv.conf}" shape="note"];
  "sha256:24268c01159314217b80f728e466e353b8460f2d1ffeb21080541771a32e6861" [label="/bin/sh -c go get github.com/mattn/goreman" shape="box"];
  "sha256:dd98944a6dc8cafeb7aa7a5311edd3108a1fbe06051b5f389b09b0db5b2b1879" [label="sha256:dd98944a6dc8cafeb7aa7a5311edd3108a1fbe06051b5f389b09b0db5b2b1879" shape="plaintext"];
  "sha256:6456e4b9339381232499e4d9278bf3c286cc6be870c85376fdbc4dbe21aac7fc" -> "sha256:230ea9ccbd42f3f7360fe7602a4d384ab6afa6fc933a3465c9fd3812155eec85" [label=""];
  "sha256:230ea9ccbd42f3f7360fe7602a4d384ab6afa6fc933a3465c9fd3812155eec85" -> "sha256:5e226a8b3dbc538525e03c0fa8d06db954147dc7a979773a72209d9484cfea03" [label=""];
  "sha256:5e226a8b3dbc538525e03c0fa8d06db954147dc7a979773a72209d9484cfea03" -> "sha256:4f7c7ad5473fb6600afb48a622bfe0473c853fb3cf442960a812ab88c8a3212d" [label=""];
  "sha256:4f7c7ad5473fb6600afb48a622bfe0473c853fb3cf442960a812ab88c8a3212d" -> "sha256:430d63e5294a1549a635bfb22b3623845a59c9ff0adc2aa0d05ab5cf5cb4e166" [label=""];
  "sha256:430d63e5294a1549a635bfb22b3623845a59c9ff0adc2aa0d05ab5cf5cb4e166" -> "sha256:7c4ee6d0d3fd5558f60a8e1fff036eeb084ef75b784140816d2585289864d68e" [label=""];
  "sha256:7c4ee6d0d3fd5558f60a8e1fff036eeb084ef75b784140816d2585289864d68e" -> "sha256:5c7daa2c749aeaf83db18591f291df407aeddeb506dbe64449bae3113f16d90c" [label=""];
  "sha256:5c7daa2c749aeaf83db18591f291df407aeddeb506dbe64449bae3113f16d90c" -> "sha256:1aff61eb67ab368966897725858b51e984e2fc4b2abfe4e0e9b95644bdd28047" [label=""];
  "sha256:bfe233a4b41c99a547b31f245b888fcf6cb375158f735effacc1e3a483969d31" -> "sha256:1aff61eb67ab368966897725858b51e984e2fc4b2abfe4e0e9b95644bdd28047" [label=""];
  "sha256:1aff61eb67ab368966897725858b51e984e2fc4b2abfe4e0e9b95644bdd28047" -> "sha256:196a783c7272f5a3ceb31ccadfa523fca42627f7e8e3673ca349299e1c14fde0" [label=""];
  "sha256:bfe233a4b41c99a547b31f245b888fcf6cb375158f735effacc1e3a483969d31" -> "sha256:196a783c7272f5a3ceb31ccadfa523fca42627f7e8e3673ca349299e1c14fde0" [label=""];
  "sha256:196a783c7272f5a3ceb31ccadfa523fca42627f7e8e3673ca349299e1c14fde0" -> "sha256:f0f00f9579dfe331b4316d3db0c8f890518324957fc6034e11aebd1125c79687" [label=""];
  "sha256:bfe233a4b41c99a547b31f245b888fcf6cb375158f735effacc1e3a483969d31" -> "sha256:f0f00f9579dfe331b4316d3db0c8f890518324957fc6034e11aebd1125c79687" [label=""];
  "sha256:f0f00f9579dfe331b4316d3db0c8f890518324957fc6034e11aebd1125c79687" -> "sha256:4a096cbd17e801c34db8828e5cc8cda84ea413d181e029964740cd5c705a4b0d" [label=""];
  "sha256:4a096cbd17e801c34db8828e5cc8cda84ea413d181e029964740cd5c705a4b0d" -> "sha256:88b19457fa8aabd010f3ef18491050b849f3c33111c46bde8f6e802a90332b25" [label=""];
  "sha256:bfe233a4b41c99a547b31f245b888fcf6cb375158f735effacc1e3a483969d31" -> "sha256:88b19457fa8aabd010f3ef18491050b849f3c33111c46bde8f6e802a90332b25" [label=""];
  "sha256:88b19457fa8aabd010f3ef18491050b849f3c33111c46bde8f6e802a90332b25" -> "sha256:24268c01159314217b80f728e466e353b8460f2d1ffeb21080541771a32e6861" [label=""];
  "sha256:24268c01159314217b80f728e466e353b8460f2d1ffeb21080541771a32e6861" -> "sha256:dd98944a6dc8cafeb7aa7a5311edd3108a1fbe06051b5f389b09b0db5b2b1879" [label=""];
}

