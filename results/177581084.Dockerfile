[app/sources/177581084.Dockerfile]
digraph {
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" [label="docker-image://docker.io/library/java:7" shape="ellipse"];
  "sha256:9da4263bfcf05363e8d2be2bf41da588d484a977d8473ab435555960a0868303" [label="/bin/sh -c apt-get -yqq update &&   apt-get -yqq install curl wget runit netcat net-tools &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:65c18f19e6fd2c3183e0e48a032bd499e8ec38db943c383c8ea3dcc3c3d1c19a" [label="/bin/sh -c curl -sSL -o /usr/local/bin/confd https://github.com/kelseyhightower/confd/releases/download/v$CONFD/confd-$CONFD-linux-amd64   && chmod +x /usr/local/bin/confd" shape="box"];
  "sha256:cdd31c7e0e5277e8f3714c3252e2db4b3b715a3b925e40ec36c978a1bb6b9eb4" [label="/bin/sh -c cd /tmp &&   curl -sSL https://github.com/coreos/etcd/releases/download/$ETCD/etcd-$ETCD-linux-amd64.tar.gz | tar xzf - &&   cp etcd-$ETCD-linux-amd64/etcdctl /usr/bin/etcdctl && chmod +x /usr/bin/etcdctl && rm -rf /tmp/etcd*" shape="box"];
  "sha256:dd43ef29d1f63ca0559004436d23adc6d09625bed9cb685d24d5462190d7de76" [label="mkdir{path=/app}" shape="note"];
  "sha256:49b77926bde6e0701256e111020478c66413abd3571718efac1eb96dc5b87d6c" [label="/bin/sh -c cd /opt &&   curl -sSL https://download.elastic.co/elasticsearch/elasticsearch/$ELASTICSEARCH.tar.gz   | tar xzf - &&   cd - &&   ln -s /opt/$ELASTICSEARCH /opt/elasticsearch &&   mkdir /data" shape="box"];
  "sha256:4e3dbed441eaae6d2fcdcc958346382e6adb0669d3016d5769416e8a8757c2e3" [label="local://context" shape="ellipse"];
  "sha256:b44e3631bf0f72cc85fe34a103bccd59b024b73450658d5dc13e3b081883ab71" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:913e61e95537b0e385961e79c687cb00f0e8cfcae1bdef163210b7fcd73abd6c" [label="/bin/sh -c chmod +x /app/bin/*" shape="box"];
  "sha256:1af6931a32c099212cfe8fd478ae4695a8e6008b893dd596c0e60905cfcc8132" [label="sha256:1af6931a32c099212cfe8fd478ae4695a8e6008b893dd596c0e60905cfcc8132" shape="plaintext"];
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" -> "sha256:9da4263bfcf05363e8d2be2bf41da588d484a977d8473ab435555960a0868303" [label=""];
  "sha256:9da4263bfcf05363e8d2be2bf41da588d484a977d8473ab435555960a0868303" -> "sha256:65c18f19e6fd2c3183e0e48a032bd499e8ec38db943c383c8ea3dcc3c3d1c19a" [label=""];
  "sha256:65c18f19e6fd2c3183e0e48a032bd499e8ec38db943c383c8ea3dcc3c3d1c19a" -> "sha256:cdd31c7e0e5277e8f3714c3252e2db4b3b715a3b925e40ec36c978a1bb6b9eb4" [label=""];
  "sha256:cdd31c7e0e5277e8f3714c3252e2db4b3b715a3b925e40ec36c978a1bb6b9eb4" -> "sha256:dd43ef29d1f63ca0559004436d23adc6d09625bed9cb685d24d5462190d7de76" [label=""];
  "sha256:dd43ef29d1f63ca0559004436d23adc6d09625bed9cb685d24d5462190d7de76" -> "sha256:49b77926bde6e0701256e111020478c66413abd3571718efac1eb96dc5b87d6c" [label=""];
  "sha256:49b77926bde6e0701256e111020478c66413abd3571718efac1eb96dc5b87d6c" -> "sha256:b44e3631bf0f72cc85fe34a103bccd59b024b73450658d5dc13e3b081883ab71" [label=""];
  "sha256:4e3dbed441eaae6d2fcdcc958346382e6adb0669d3016d5769416e8a8757c2e3" -> "sha256:b44e3631bf0f72cc85fe34a103bccd59b024b73450658d5dc13e3b081883ab71" [label=""];
  "sha256:b44e3631bf0f72cc85fe34a103bccd59b024b73450658d5dc13e3b081883ab71" -> "sha256:913e61e95537b0e385961e79c687cb00f0e8cfcae1bdef163210b7fcd73abd6c" [label=""];
  "sha256:913e61e95537b0e385961e79c687cb00f0e8cfcae1bdef163210b7fcd73abd6c" -> "sha256:1af6931a32c099212cfe8fd478ae4695a8e6008b893dd596c0e60905cfcc8132" [label=""];
}

