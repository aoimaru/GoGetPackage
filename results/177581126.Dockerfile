[app/sources/177581126.Dockerfile]
digraph {
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" [label="docker-image://docker.io/library/java:7" shape="ellipse"];
  "sha256:9da4263bfcf05363e8d2be2bf41da588d484a977d8473ab435555960a0868303" [label="/bin/sh -c apt-get -yqq update &&   apt-get -yqq install curl wget runit netcat net-tools &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:65c18f19e6fd2c3183e0e48a032bd499e8ec38db943c383c8ea3dcc3c3d1c19a" [label="/bin/sh -c curl -sSL -o /usr/local/bin/confd https://github.com/kelseyhightower/confd/releases/download/v$CONFD/confd-$CONFD-linux-amd64   && chmod +x /usr/local/bin/confd" shape="box"];
  "sha256:cdd31c7e0e5277e8f3714c3252e2db4b3b715a3b925e40ec36c978a1bb6b9eb4" [label="/bin/sh -c cd /tmp &&   curl -sSL https://github.com/coreos/etcd/releases/download/$ETCD/etcd-$ETCD-linux-amd64.tar.gz | tar xzf - &&   cp etcd-$ETCD-linux-amd64/etcdctl /usr/bin/etcdctl && chmod +x /usr/bin/etcdctl && rm -rf /tmp/etcd*" shape="box"];
  "sha256:dd43ef29d1f63ca0559004436d23adc6d09625bed9cb685d24d5462190d7de76" [label="mkdir{path=/app}" shape="note"];
  "sha256:2d46fe9c6f6465518543da4406f10470b3d3fbe5738bf09ea6855234fc976d5e" [label="/bin/sh -c cd /opt &&   curl -sSL http://download.elastic.co/logstash/logstash/$LOGSTASH.tar.gz   | tar xzf - &&   cd - &&   ln -s /opt/$LOGSTASH /opt/logstash &&   mkdir /opt/logstash/conf.d" shape="box"];
  "sha256:c809eb9aa8120b6bb3ce42f32682e9e9bdce8f0435f92893b0ab37b537d59d13" [label="local://context" shape="ellipse"];
  "sha256:31b7de3584d707d8ce295bce5c8fdffa5728be01132a9dcbe913dc34d515e6cd" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:c809072fcfc803497379bfa20f741caf16b7a4c953d6ff12cecf411280a92861" [label="/bin/sh -c chmod +x /app/bin/*" shape="box"];
  "sha256:12f7e08202b962348dc91c84ce1f997d3d1f1aa976f03760bea9b349dd6ce889" [label="sha256:12f7e08202b962348dc91c84ce1f997d3d1f1aa976f03760bea9b349dd6ce889" shape="plaintext"];
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" -> "sha256:9da4263bfcf05363e8d2be2bf41da588d484a977d8473ab435555960a0868303" [label=""];
  "sha256:9da4263bfcf05363e8d2be2bf41da588d484a977d8473ab435555960a0868303" -> "sha256:65c18f19e6fd2c3183e0e48a032bd499e8ec38db943c383c8ea3dcc3c3d1c19a" [label=""];
  "sha256:65c18f19e6fd2c3183e0e48a032bd499e8ec38db943c383c8ea3dcc3c3d1c19a" -> "sha256:cdd31c7e0e5277e8f3714c3252e2db4b3b715a3b925e40ec36c978a1bb6b9eb4" [label=""];
  "sha256:cdd31c7e0e5277e8f3714c3252e2db4b3b715a3b925e40ec36c978a1bb6b9eb4" -> "sha256:dd43ef29d1f63ca0559004436d23adc6d09625bed9cb685d24d5462190d7de76" [label=""];
  "sha256:dd43ef29d1f63ca0559004436d23adc6d09625bed9cb685d24d5462190d7de76" -> "sha256:2d46fe9c6f6465518543da4406f10470b3d3fbe5738bf09ea6855234fc976d5e" [label=""];
  "sha256:2d46fe9c6f6465518543da4406f10470b3d3fbe5738bf09ea6855234fc976d5e" -> "sha256:31b7de3584d707d8ce295bce5c8fdffa5728be01132a9dcbe913dc34d515e6cd" [label=""];
  "sha256:c809eb9aa8120b6bb3ce42f32682e9e9bdce8f0435f92893b0ab37b537d59d13" -> "sha256:31b7de3584d707d8ce295bce5c8fdffa5728be01132a9dcbe913dc34d515e6cd" [label=""];
  "sha256:31b7de3584d707d8ce295bce5c8fdffa5728be01132a9dcbe913dc34d515e6cd" -> "sha256:c809072fcfc803497379bfa20f741caf16b7a4c953d6ff12cecf411280a92861" [label=""];
  "sha256:c809072fcfc803497379bfa20f741caf16b7a4c953d6ff12cecf411280a92861" -> "sha256:12f7e08202b962348dc91c84ce1f997d3d1f1aa976f03760bea9b349dd6ce889" [label=""];
}

