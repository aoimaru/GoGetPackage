[app/sources/361027719.Dockerfile]
digraph {
  "sha256:c0e0146339899ec74bcb9f3a8cae212ca522620469a14699fff667cce8e51523" [label="docker-image://docker.io/library/kibana:4.6" shape="ellipse"];
  "sha256:ffc6b848249c8c6b8877cdc83fbbea626c9281e04ecead9a91cb105703442b81" [label="/bin/sh -c /opt/kibana/bin/kibana plugin -i kibana/timelion" shape="box"];
  "sha256:b411bba7d55cc851c992d185cc3137c6c4b519172849e099862777e40526c611" [label="/bin/sh -c chown -R kibana.kibana /opt/kibana/optimize/" shape="box"];
  "sha256:93ef57c9a61b12e5d6937d6f753c381ad29229297c2a7a6491dd26c7733e0290" [label="sha256:93ef57c9a61b12e5d6937d6f753c381ad29229297c2a7a6491dd26c7733e0290" shape="plaintext"];
  "sha256:c0e0146339899ec74bcb9f3a8cae212ca522620469a14699fff667cce8e51523" -> "sha256:ffc6b848249c8c6b8877cdc83fbbea626c9281e04ecead9a91cb105703442b81" [label=""];
  "sha256:ffc6b848249c8c6b8877cdc83fbbea626c9281e04ecead9a91cb105703442b81" -> "sha256:b411bba7d55cc851c992d185cc3137c6c4b519172849e099862777e40526c611" [label=""];
  "sha256:b411bba7d55cc851c992d185cc3137c6c4b519172849e099862777e40526c611" -> "sha256:93ef57c9a61b12e5d6937d6f753c381ad29229297c2a7a6491dd26c7733e0290" [label=""];
}

