[app/sources/223321534.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:30d1be4ecf975060ce216b4a4256233054b8d93e75cb3519d70b6a87325c90c5" [label="/bin/sh -c apt-get update     && apt-get install -y openvpn inetutils-traceroute inetutils-ping wget curl     && curl -L https://github.com/jwilder/dockerize/releases/download/v0.2.0/dockerize-linux-amd64-v0.2.0.tar.gz | tar -C /usr/local/bin -xzv     && rm -rfv dockerize-linux-amd64-v0.2.0.tar.gz     && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* RUN rm -f /etc/service/sshd/down" shape="box"];
  "sha256:5ed9991f039f75cebfa1d6e6068cce418aacd65d297f7ea30cc13628c456a49e" [label="/bin/sh -c /usr/sbin/enable_insecure_key" shape="box"];
  "sha256:8aa3d6f2ef365e76c8320668ef103fd77fa1c949d305c406ad43c563d015ac3c" [label="local://context" shape="ellipse"];
  "sha256:9f0ceb2c9833196785d9826c4ba74f9144d6de88e2e47db3c6b82365780d7f68" [label="copy{src=/bin, dest=/usr/local/bin/}" shape="note"];
  "sha256:4d377f5c44a81f03c18a39ef073325fa0dcbad1debf2039adfaac770ca74a6ce" [label="/bin/sh -c chmod +x /usr/local/bin/*" shape="box"];
  "sha256:be93e8aa695a4ade367d704101141c27564ed5e572dd8eced078039726fb852d" [label="copy{src=/openvpn, dest=/etc/openvpn}" shape="note"];
  "sha256:5b430a7a6058749b0f59731b1f1b9cace5114742fb990809761c398e9489ee26" [label="/bin/sh -c chmod +x /etc/openvpn/bin/*     && mkdir -p /etc/openvpn/up     && mkdir -p /etc/openvpn/down     && ln -s /usr/local/bin/ssh-restart /etc/openvpn/up/00-ssh-restart     && ln -s /usr/local/bin/my-public-ip-info /etc/openvpn/up/01-my-public-ip-info" shape="box"];
  "sha256:8420d1ac421588cc2ca13e204eeae1f7e908490ae439124ae1135429012def1b" [label="/bin/sh -c mkdir -p /etc/my_init.d     && ln -s /etc/openvpn/bin/openvpn-setup.sh /etc/my_init.d/openvpn-setup.sh     && chmod +x /etc/my_init.d/*" shape="box"];
  "sha256:e0367f4013a74ad9d3c6955958ca64d8968a46a058d0281bbc431ed89ef27b3a" [label="/bin/sh -c mkdir /etc/service/openvpn     && ln -s /etc/openvpn/bin/openvpn-run.sh /etc/service/openvpn/run     && ln -s /etc/openvpn/bin/openvpn-finish.sh /etc/service/openvpn/finish     && chmod +x /etc/service/openvpn/run     && chmod +x /etc/service/openvpn/finish" shape="box"];
  "sha256:a8304ed825eeec2eec6fa842c451cc7c5327dde6fb3ce8c089de618995b8e2f6" [label="sha256:a8304ed825eeec2eec6fa842c451cc7c5327dde6fb3ce8c089de618995b8e2f6" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:30d1be4ecf975060ce216b4a4256233054b8d93e75cb3519d70b6a87325c90c5" [label=""];
  "sha256:30d1be4ecf975060ce216b4a4256233054b8d93e75cb3519d70b6a87325c90c5" -> "sha256:5ed9991f039f75cebfa1d6e6068cce418aacd65d297f7ea30cc13628c456a49e" [label=""];
  "sha256:5ed9991f039f75cebfa1d6e6068cce418aacd65d297f7ea30cc13628c456a49e" -> "sha256:9f0ceb2c9833196785d9826c4ba74f9144d6de88e2e47db3c6b82365780d7f68" [label=""];
  "sha256:8aa3d6f2ef365e76c8320668ef103fd77fa1c949d305c406ad43c563d015ac3c" -> "sha256:9f0ceb2c9833196785d9826c4ba74f9144d6de88e2e47db3c6b82365780d7f68" [label=""];
  "sha256:9f0ceb2c9833196785d9826c4ba74f9144d6de88e2e47db3c6b82365780d7f68" -> "sha256:4d377f5c44a81f03c18a39ef073325fa0dcbad1debf2039adfaac770ca74a6ce" [label=""];
  "sha256:4d377f5c44a81f03c18a39ef073325fa0dcbad1debf2039adfaac770ca74a6ce" -> "sha256:be93e8aa695a4ade367d704101141c27564ed5e572dd8eced078039726fb852d" [label=""];
  "sha256:8aa3d6f2ef365e76c8320668ef103fd77fa1c949d305c406ad43c563d015ac3c" -> "sha256:be93e8aa695a4ade367d704101141c27564ed5e572dd8eced078039726fb852d" [label=""];
  "sha256:be93e8aa695a4ade367d704101141c27564ed5e572dd8eced078039726fb852d" -> "sha256:5b430a7a6058749b0f59731b1f1b9cace5114742fb990809761c398e9489ee26" [label=""];
  "sha256:5b430a7a6058749b0f59731b1f1b9cace5114742fb990809761c398e9489ee26" -> "sha256:8420d1ac421588cc2ca13e204eeae1f7e908490ae439124ae1135429012def1b" [label=""];
  "sha256:8420d1ac421588cc2ca13e204eeae1f7e908490ae439124ae1135429012def1b" -> "sha256:e0367f4013a74ad9d3c6955958ca64d8968a46a058d0281bbc431ed89ef27b3a" [label=""];
  "sha256:e0367f4013a74ad9d3c6955958ca64d8968a46a058d0281bbc431ed89ef27b3a" -> "sha256:a8304ed825eeec2eec6fa842c451cc7c5327dde6fb3ce8c089de618995b8e2f6" [label=""];
}

