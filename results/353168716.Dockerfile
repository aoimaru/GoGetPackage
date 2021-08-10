[app/sources/353168716.Dockerfile]
digraph {
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:e911bae6bbaf4c18bec694cafb38f1b47b0516bae4f018eac0b7ac72a55a1264" [label="/bin/sh -c apk add --update ca-certificates wget nodejs     && mkdir -p /opt     && wget -O /tmp/$KIBANA_PKG.tar.gz $KIBANA_URL     && tar -xvzf /tmp/$KIBANA_PKG.tar.gz -C /opt/     && ln -s /opt/$KIBANA_PKG /opt/$PKG_NAME     && sed -i \"s/localhost/$ELASTICSEARCH_HOST/\" $KIBANA_CONFIG     && rm -rf /tmp/*.tar.gz /var/cache/apk/* /opt/$KIBANA_PKG/node/     && mkdir -p /opt/$KIBANA_PKG/node/bin/     && ln -s $(which node) /opt/$PKG_NAME/node/bin/node" shape="box"];
  "sha256:fa9b736af44cc24128333edc6fb756ffb927ca71f0c42a3d42bed4534e6cfa17" [label="mkdir{path=/[/opt/kibana]}" shape="note"];
  "sha256:69ed69f15a0a70285557a4f4b7a2b58dffb6285f982218e6e5855529bb24bf56" [label="sha256:69ed69f15a0a70285557a4f4b7a2b58dffb6285f982218e6e5855529bb24bf56" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:e911bae6bbaf4c18bec694cafb38f1b47b0516bae4f018eac0b7ac72a55a1264" [label=""];
  "sha256:e911bae6bbaf4c18bec694cafb38f1b47b0516bae4f018eac0b7ac72a55a1264" -> "sha256:fa9b736af44cc24128333edc6fb756ffb927ca71f0c42a3d42bed4534e6cfa17" [label=""];
  "sha256:fa9b736af44cc24128333edc6fb756ffb927ca71f0c42a3d42bed4534e6cfa17" -> "sha256:69ed69f15a0a70285557a4f4b7a2b58dffb6285f982218e6e5855529bb24bf56" [label=""];
}

