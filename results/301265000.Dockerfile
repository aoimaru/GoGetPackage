[app/sources/301265000.Dockerfile]
digraph {
  "sha256:c12183a886e93bec35e4dccbfcd43d4526dc79ffe763aabfbf27c59786cc55da" [label="docker-image://index.tenxcloud.com/jimmy/jdk:8u45" shape="ellipse"];
  "sha256:d677ba8a13fec61ace80ff997b8fa9cd777585fa452169ea5ac55a56fa21d400" [label="/bin/sh -c cd /usr/local &&     curl -L -O \"https://artifacts.elastic.co/downloads/logstash/logstash-5.3.0.tar.gz\" &&     tar xvf logstash-5.3.0.tar.gz &&     rm -f logstash-5.3.0.tar.gz &&     ln -s /usr/local/logstash-5.3.0 /usr/local/logstash &&     mkdir -p /usr/local/logstash/agent/" shape="box"];
  "sha256:0d829ae954d29b14e52cee1e949448a235fb0a7bd27f907df2f9c1fbc051f1be" [label="local://context" shape="ellipse"];
  "sha256:ee1072a925e0bbef068e3054487fb6d92e4db213e9d130ed2f2af72f2452b4de" [label="copy{src=/node.conf, dest=/usr/local/logstash/agent/}" shape="note"];
  "sha256:631b9859d4b7bdd7019888651681e9e2c11e3a3f404c72dc3f9fca8fadcb4d15" [label="copy{src=/docker-entrypoint.sh, dest=/usr/bin/}" shape="note"];
  "sha256:cc47e71666ec1f0ae77165803e6ef0416cd5604997b4e50e7e40eba4bf102d0d" [label="sha256:cc47e71666ec1f0ae77165803e6ef0416cd5604997b4e50e7e40eba4bf102d0d" shape="plaintext"];
  "sha256:c12183a886e93bec35e4dccbfcd43d4526dc79ffe763aabfbf27c59786cc55da" -> "sha256:d677ba8a13fec61ace80ff997b8fa9cd777585fa452169ea5ac55a56fa21d400" [label=""];
  "sha256:d677ba8a13fec61ace80ff997b8fa9cd777585fa452169ea5ac55a56fa21d400" -> "sha256:ee1072a925e0bbef068e3054487fb6d92e4db213e9d130ed2f2af72f2452b4de" [label=""];
  "sha256:0d829ae954d29b14e52cee1e949448a235fb0a7bd27f907df2f9c1fbc051f1be" -> "sha256:ee1072a925e0bbef068e3054487fb6d92e4db213e9d130ed2f2af72f2452b4de" [label=""];
  "sha256:ee1072a925e0bbef068e3054487fb6d92e4db213e9d130ed2f2af72f2452b4de" -> "sha256:631b9859d4b7bdd7019888651681e9e2c11e3a3f404c72dc3f9fca8fadcb4d15" [label=""];
  "sha256:0d829ae954d29b14e52cee1e949448a235fb0a7bd27f907df2f9c1fbc051f1be" -> "sha256:631b9859d4b7bdd7019888651681e9e2c11e3a3f404c72dc3f9fca8fadcb4d15" [label=""];
  "sha256:631b9859d4b7bdd7019888651681e9e2c11e3a3f404c72dc3f9fca8fadcb4d15" -> "sha256:cc47e71666ec1f0ae77165803e6ef0416cd5604997b4e50e7e40eba4bf102d0d" [label=""];
}

