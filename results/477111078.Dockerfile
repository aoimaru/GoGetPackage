[app/sources/477111078.Dockerfile]
digraph {
  "sha256:315397ba26e7e259e194fd955aad96a74cb01528a1c9b63d08300fb7d527c2ae" [label="local://context" shape="ellipse"];
  "sha256:4dd68d9768067d2782a3a105ef74103e916c694bc99681a8772636fdfbe2ab60" [label="docker-image://docker.io/library/redis:alpine" shape="ellipse"];
  "sha256:18e3f5afbcaa51e4f76130a7cdf5050e95d224afd2747fa07ee2ad988714688a" [label="/bin/sh -c apk update && apk --update add ruby ruby-rdoc ruby-irb supervisor git" shape="box"];
  "sha256:d407131b1df14597a8c52be4c31d2238b97d3763431f7a4a6f4f8ea1b6bc391b" [label="/bin/sh -c /usr/bin/gem install redis" shape="box"];
  "sha256:b735fdf7ed587f5504965909a64f92092353c5aabd0e44c0c45a2df2f2db3bd5" [label="/bin/sh -c git clone -b 3.0.6 https://github.com/antirez/redis.git /redis" shape="box"];
  "sha256:48c4542844f25388f39a22c921ab0145af43c89695d321e295c5528488f41239" [label="/bin/sh -c mkdir /redis-data &&     mkdir /redis-data/7000 &&     mkdir /redis-data/7001 &&     mkdir /redis-data/7002 &&     mkdir /redis-data/7003 &&     mkdir /redis-data/7004 &&     mkdir /redis-data/7005 &&     mkdir /redis-data/7006 &&     mkdir /redis-data/7007 &&     mkdir -p /var/log/supervisor/ &&     mkdir -p /etc/supervisor.d" shape="box"];
  "sha256:c559e981b6ec3512069948ddf6ec4bfeebd63d90e5ba6dac68abf7ac7b498008" [label="copy{src=/docker-data/redis-conf, dest=/redis-conf}" shape="note"];
  "sha256:dab5417f02be5a19014170f24e05ad145deb4981a83d91fa4fb9e4967d8ed157" [label="copy{src=/docker-data/supervisord.conf, dest=/etc/supervisor.d/supervisord.ini}" shape="note"];
  "sha256:8c39de90d7ae21adf25f9588f4f45373a8b4b42bc50514a8816fa460d8e2f31c" [label="copy{src=/docker-data/start.sh, dest=/start.sh}" shape="note"];
  "sha256:0b49a6adafaf23a7b78b4cec2e259f246c9a8da393215f9e244c527b3a783a11" [label="/bin/sh -c chmod 755 /start.sh" shape="box"];
  "sha256:81ccabc51e995ce198f7e8c35ec608b1b60202272536f7df3315c9e13ed934ea" [label="sha256:81ccabc51e995ce198f7e8c35ec608b1b60202272536f7df3315c9e13ed934ea" shape="plaintext"];
  "sha256:4dd68d9768067d2782a3a105ef74103e916c694bc99681a8772636fdfbe2ab60" -> "sha256:18e3f5afbcaa51e4f76130a7cdf5050e95d224afd2747fa07ee2ad988714688a" [label=""];
  "sha256:18e3f5afbcaa51e4f76130a7cdf5050e95d224afd2747fa07ee2ad988714688a" -> "sha256:d407131b1df14597a8c52be4c31d2238b97d3763431f7a4a6f4f8ea1b6bc391b" [label=""];
  "sha256:d407131b1df14597a8c52be4c31d2238b97d3763431f7a4a6f4f8ea1b6bc391b" -> "sha256:b735fdf7ed587f5504965909a64f92092353c5aabd0e44c0c45a2df2f2db3bd5" [label=""];
  "sha256:b735fdf7ed587f5504965909a64f92092353c5aabd0e44c0c45a2df2f2db3bd5" -> "sha256:48c4542844f25388f39a22c921ab0145af43c89695d321e295c5528488f41239" [label=""];
  "sha256:48c4542844f25388f39a22c921ab0145af43c89695d321e295c5528488f41239" -> "sha256:c559e981b6ec3512069948ddf6ec4bfeebd63d90e5ba6dac68abf7ac7b498008" [label=""];
  "sha256:315397ba26e7e259e194fd955aad96a74cb01528a1c9b63d08300fb7d527c2ae" -> "sha256:c559e981b6ec3512069948ddf6ec4bfeebd63d90e5ba6dac68abf7ac7b498008" [label=""];
  "sha256:c559e981b6ec3512069948ddf6ec4bfeebd63d90e5ba6dac68abf7ac7b498008" -> "sha256:dab5417f02be5a19014170f24e05ad145deb4981a83d91fa4fb9e4967d8ed157" [label=""];
  "sha256:315397ba26e7e259e194fd955aad96a74cb01528a1c9b63d08300fb7d527c2ae" -> "sha256:dab5417f02be5a19014170f24e05ad145deb4981a83d91fa4fb9e4967d8ed157" [label=""];
  "sha256:dab5417f02be5a19014170f24e05ad145deb4981a83d91fa4fb9e4967d8ed157" -> "sha256:8c39de90d7ae21adf25f9588f4f45373a8b4b42bc50514a8816fa460d8e2f31c" [label=""];
  "sha256:315397ba26e7e259e194fd955aad96a74cb01528a1c9b63d08300fb7d527c2ae" -> "sha256:8c39de90d7ae21adf25f9588f4f45373a8b4b42bc50514a8816fa460d8e2f31c" [label=""];
  "sha256:8c39de90d7ae21adf25f9588f4f45373a8b4b42bc50514a8816fa460d8e2f31c" -> "sha256:0b49a6adafaf23a7b78b4cec2e259f246c9a8da393215f9e244c527b3a783a11" [label=""];
  "sha256:0b49a6adafaf23a7b78b4cec2e259f246c9a8da393215f9e244c527b3a783a11" -> "sha256:81ccabc51e995ce198f7e8c35ec608b1b60202272536f7df3315c9e13ed934ea" [label=""];
}

