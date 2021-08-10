[app/sources/282373348.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:2641b42f1f9eeae3084535d21f922fe5b6e90773b7b724f82620f0e2dc9e73f3" [label="/bin/sh -c echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/main' >>       /etc/apk/repositories &&     echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/community' >>       /etc/apk/repositories &&     apk --no-cache add --update       dnsmasq       openssl       proxychains-ng       s6       curl       nmap       nmap-scripts       nmap-doc       nmap-nping       nmap-ncat       tor@edge &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:ba1fd646f26209a150ec274b79464ef77abd53d8924099253870ef047e14ff4a" [label="local://context" shape="ellipse"];
  "sha256:693481e2c02a6a3b1463a833eb7eeccb1182c4e5f12fdcde0022a8326e5014cc" [label="copy{src=/etc, dest=/etc/}" shape="note"];
  "sha256:4d90e9bf0a57f82e76d72148229a5317888077169e6daa73fc3cf6c1f122c8d2" [label="copy{src=/run.sh, dest=/custom/bin/},copy{src=/bin, dest=/custom/bin/}" shape="note"];
  "sha256:567e1ad004e2846519748ff0277572c770bb6cb2dff0dd0aaaef54519d512986" [label="/bin/sh -c chmod +x /custom/bin/* &&     mkdir -p \"$TOR_LOG_DIR\" \"$DNSMASQ_LOG_DIR\" &&     chown tor $TOR_CONF &&     chmod 0644 $PROXYCHAINS_CONF &&     chmod 0755       /etc/s6/*/log/run       /etc/s6/*/run" shape="box"];
  "sha256:05c433b493aa8bf14f9c70e8237ad904fed9a5dcf455689a2307c7301452653a" [label="sha256:05c433b493aa8bf14f9c70e8237ad904fed9a5dcf455689a2307c7301452653a" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:2641b42f1f9eeae3084535d21f922fe5b6e90773b7b724f82620f0e2dc9e73f3" [label=""];
  "sha256:2641b42f1f9eeae3084535d21f922fe5b6e90773b7b724f82620f0e2dc9e73f3" -> "sha256:693481e2c02a6a3b1463a833eb7eeccb1182c4e5f12fdcde0022a8326e5014cc" [label=""];
  "sha256:ba1fd646f26209a150ec274b79464ef77abd53d8924099253870ef047e14ff4a" -> "sha256:693481e2c02a6a3b1463a833eb7eeccb1182c4e5f12fdcde0022a8326e5014cc" [label=""];
  "sha256:693481e2c02a6a3b1463a833eb7eeccb1182c4e5f12fdcde0022a8326e5014cc" -> "sha256:4d90e9bf0a57f82e76d72148229a5317888077169e6daa73fc3cf6c1f122c8d2" [label=""];
  "sha256:ba1fd646f26209a150ec274b79464ef77abd53d8924099253870ef047e14ff4a" -> "sha256:4d90e9bf0a57f82e76d72148229a5317888077169e6daa73fc3cf6c1f122c8d2" [label=""];
  "sha256:4d90e9bf0a57f82e76d72148229a5317888077169e6daa73fc3cf6c1f122c8d2" -> "sha256:567e1ad004e2846519748ff0277572c770bb6cb2dff0dd0aaaef54519d512986" [label=""];
  "sha256:567e1ad004e2846519748ff0277572c770bb6cb2dff0dd0aaaef54519d512986" -> "sha256:05c433b493aa8bf14f9c70e8237ad904fed9a5dcf455689a2307c7301452653a" [label=""];
}

