[app/sources/282282419.Dockerfile]
digraph {
  "sha256:d8f92e78817a57ae084fb2685ba91b94bf7b588c0bcf6b2870a4d4352cf979d1" [label="docker-image://docker.io/openzipkin/jre-full:1.8.0_152" shape="ellipse"];
  "sha256:cbd2fc582c57ded02631340e94dce0ec69f78a2448932399f50a1c5dbb550963" [label="mkdir{path=/elasticsearch}" shape="note"];
  "sha256:dc2b810e11f5fcb074c15ae241fba9c585fc1c702e5b8bdb92746db3ecf5b5de" [label="/bin/sh -c curl -SL https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/$ELASTICSEARCH_VERSION/elasticsearch-$ELASTICSEARCH_VERSION.tar.gz| tar xz &&     mv elasticsearch-$ELASTICSEARCH_VERSION/* /elasticsearch/ &&     adduser -S elasticsearch &&     chown -R elasticsearch /elasticsearch" shape="box"];
  "sha256:03c4b5907ee34fcccda6c63f8bc91d1a94a6ebc6d2f47eee361efc9078178c6c" [label="sha256:03c4b5907ee34fcccda6c63f8bc91d1a94a6ebc6d2f47eee361efc9078178c6c" shape="plaintext"];
  "sha256:d8f92e78817a57ae084fb2685ba91b94bf7b588c0bcf6b2870a4d4352cf979d1" -> "sha256:cbd2fc582c57ded02631340e94dce0ec69f78a2448932399f50a1c5dbb550963" [label=""];
  "sha256:cbd2fc582c57ded02631340e94dce0ec69f78a2448932399f50a1c5dbb550963" -> "sha256:dc2b810e11f5fcb074c15ae241fba9c585fc1c702e5b8bdb92746db3ecf5b5de" [label=""];
  "sha256:dc2b810e11f5fcb074c15ae241fba9c585fc1c702e5b8bdb92746db3ecf5b5de" -> "sha256:03c4b5907ee34fcccda6c63f8bc91d1a94a6ebc6d2f47eee361efc9078178c6c" [label=""];
}

