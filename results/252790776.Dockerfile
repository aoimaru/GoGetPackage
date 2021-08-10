[app/sources/252790776.Dockerfile]
digraph {
  "sha256:9b01c9ffed52f6acb67f4b8d2eb7671a8b848be67b13e8a54f97a8b2506d5ab3" [label="docker-image://docker.elastic.co/logstash/logstash:6.2.3@sha256:8ecad293adecddea875db6e509866d49cb84eb51e72415f82289ffa711a394b8" shape="ellipse"];
  "sha256:93d850fa3c98e413909bc427c8aa7d954db2de2e824262bbb9868f35040d3b7a" [label="/bin/sh -c rm -f /usr/share/logstash/pipeline/logstash.conf" shape="box"];
  "sha256:20067af281e1e7ce04ed7d3388a1577257c8f8b9815b68fa219bf7c6cf52b3ca" [label="local://context" shape="ellipse"];
  "sha256:00b56b3347e8caaf35ca1b116f6233d82e902f44bdc7a2b0ccc2f0ce528b6890" [label="copy{src=/pipeline, dest=/usr/share/logstash/pipeline/}" shape="note"];
  "sha256:53f8e613a3829c34ea7a059d97801a51e4e0c836e1dbbb4858b69b4a19e855d4" [label="/bin/sh -c logstash-plugin install logstash-input-redis" shape="box"];
  "sha256:3dae8bdecb5b88ff9f40a7d5768fc006c45ad294486a57cf75cf8529319facdd" [label="sha256:3dae8bdecb5b88ff9f40a7d5768fc006c45ad294486a57cf75cf8529319facdd" shape="plaintext"];
  "sha256:9b01c9ffed52f6acb67f4b8d2eb7671a8b848be67b13e8a54f97a8b2506d5ab3" -> "sha256:93d850fa3c98e413909bc427c8aa7d954db2de2e824262bbb9868f35040d3b7a" [label=""];
  "sha256:93d850fa3c98e413909bc427c8aa7d954db2de2e824262bbb9868f35040d3b7a" -> "sha256:00b56b3347e8caaf35ca1b116f6233d82e902f44bdc7a2b0ccc2f0ce528b6890" [label=""];
  "sha256:20067af281e1e7ce04ed7d3388a1577257c8f8b9815b68fa219bf7c6cf52b3ca" -> "sha256:00b56b3347e8caaf35ca1b116f6233d82e902f44bdc7a2b0ccc2f0ce528b6890" [label=""];
  "sha256:00b56b3347e8caaf35ca1b116f6233d82e902f44bdc7a2b0ccc2f0ce528b6890" -> "sha256:53f8e613a3829c34ea7a059d97801a51e4e0c836e1dbbb4858b69b4a19e855d4" [label=""];
  "sha256:53f8e613a3829c34ea7a059d97801a51e4e0c836e1dbbb4858b69b4a19e855d4" -> "sha256:3dae8bdecb5b88ff9f40a7d5768fc006c45ad294486a57cf75cf8529319facdd" [label=""];
}

