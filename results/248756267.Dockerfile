[app/sources/248756267.Dockerfile]
digraph {
  "sha256:738e6fe0db88457b2a67d165d947cf85429495067760278073cef85d618ee4ae" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:223547cd91b80d133aa5000490e2f31ea225eef48f61381bed8f5be02eaf89d7" [label="/bin/sh -c apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get -y upgrade     && DEBIAN_FRONTEND=noninteractive apt-get -y install strongswan strongswan-plugin-eap-mschapv2 iptables uuid-runtime ndppd openssl     && rm -rf /var/lib/apt/lists/* # cache busted 20160406.1" shape="box"];
  "sha256:94b8637d8debc944db21cd7e24a3f58aacde0abdc7ebebee2e6650eefe1ead5b" [label="/bin/sh -c rm /etc/ipsec.secrets" shape="box"];
  "sha256:85afe8068515ca3309e43c415485bebc0075929847266411850f2396d50aa76e" [label="copy{src=/etc/*, dest=/etc/}" shape="note"];
  "sha256:e50ef344ba52116e0c38dff0676ae0cf7fb5d9fc7d462a26accd78189cd4001f" [label="copy{src=/bin/*, dest=/usr/bin/}" shape="note"];
  "sha256:7b6aa89968af7cf974663269c7e80e2f18746b791b0246d0f860629206685635" [label="sha256:7b6aa89968af7cf974663269c7e80e2f18746b791b0246d0f860629206685635" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:223547cd91b80d133aa5000490e2f31ea225eef48f61381bed8f5be02eaf89d7" [label=""];
  "sha256:223547cd91b80d133aa5000490e2f31ea225eef48f61381bed8f5be02eaf89d7" -> "sha256:94b8637d8debc944db21cd7e24a3f58aacde0abdc7ebebee2e6650eefe1ead5b" [label=""];
  "sha256:94b8637d8debc944db21cd7e24a3f58aacde0abdc7ebebee2e6650eefe1ead5b" -> "sha256:85afe8068515ca3309e43c415485bebc0075929847266411850f2396d50aa76e" [label=""];
  "sha256:738e6fe0db88457b2a67d165d947cf85429495067760278073cef85d618ee4ae" -> "sha256:85afe8068515ca3309e43c415485bebc0075929847266411850f2396d50aa76e" [label=""];
  "sha256:85afe8068515ca3309e43c415485bebc0075929847266411850f2396d50aa76e" -> "sha256:e50ef344ba52116e0c38dff0676ae0cf7fb5d9fc7d462a26accd78189cd4001f" [label=""];
  "sha256:738e6fe0db88457b2a67d165d947cf85429495067760278073cef85d618ee4ae" -> "sha256:e50ef344ba52116e0c38dff0676ae0cf7fb5d9fc7d462a26accd78189cd4001f" [label=""];
  "sha256:e50ef344ba52116e0c38dff0676ae0cf7fb5d9fc7d462a26accd78189cd4001f" -> "sha256:7b6aa89968af7cf974663269c7e80e2f18746b791b0246d0f860629206685635" [label=""];
}

