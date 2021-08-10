[app/sources/314861479.Dockerfile]
digraph {
  "sha256:ca012536e8459aa12a0aa94b1d763825fcf378611458aabfd4ac2c8227f8a817" [label="docker-image://docker.io/vitess/base@sha256:f9b23583904123c0b07a9ee3cd94ef46f59b6b244b05d9cd177b3e911bc07b10" shape="ellipse"];
  "sha256:7027f0b41df5ae591fcedc26587f891bc125afc5c72c90c5901028a4ccf5704e" [label="docker-image://docker.io/library/debian:stretch-slim@sha256:570dd3f7c2b1db4e34f54b3aa89c50cb7cbbf610a412844fbe961060800bfdd1" shape="ellipse"];
  "sha256:7b4157eeb1c03b5557059925442b9b091ffa0744d1f4bbc4090f895004b06928" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/ca-certificates.crt}" shape="note"];
  "sha256:649160810d0e7d6039b8935cf0a481275da93e6cbd68e99c2356259605ff4640" [label="/bin/sh -c apt-get update &&     apt-get upgrade -qq &&     apt-get install wget -qq --no-install-recommends &&     wget https://www.percona.com/redir/downloads/pmm-client/1.10.0/binary/debian/stretch/x86_64/pmm-client_1.10.0-1.stretch_amd64.deb &&     dpkg -i pmm-client_1.10.0-1.stretch_amd64.deb &&     rm pmm-client_1.10.0-1.stretch_amd64.deb &&     apt-get purge wget -qq &&     apt-get autoremove -qq &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cef3973f14ca9c4d6b387945c402adeb033a8f623df121bcff5c126d9f7ddc46" [label="sha256:cef3973f14ca9c4d6b387945c402adeb033a8f623df121bcff5c126d9f7ddc46" shape="plaintext"];
  "sha256:7027f0b41df5ae591fcedc26587f891bc125afc5c72c90c5901028a4ccf5704e" -> "sha256:7b4157eeb1c03b5557059925442b9b091ffa0744d1f4bbc4090f895004b06928" [label=""];
  "sha256:ca012536e8459aa12a0aa94b1d763825fcf378611458aabfd4ac2c8227f8a817" -> "sha256:7b4157eeb1c03b5557059925442b9b091ffa0744d1f4bbc4090f895004b06928" [label=""];
  "sha256:7b4157eeb1c03b5557059925442b9b091ffa0744d1f4bbc4090f895004b06928" -> "sha256:649160810d0e7d6039b8935cf0a481275da93e6cbd68e99c2356259605ff4640" [label=""];
  "sha256:649160810d0e7d6039b8935cf0a481275da93e6cbd68e99c2356259605ff4640" -> "sha256:cef3973f14ca9c4d6b387945c402adeb033a8f623df121bcff5c126d9f7ddc46" [label=""];
}

