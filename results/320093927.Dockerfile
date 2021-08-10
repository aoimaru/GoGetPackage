[app/sources/320093927.Dockerfile]
digraph {
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:17f027ea2a87994babd8e8bbcde802fdfa252515904489db5d0aefc9b520b6c5" [label="/bin/sh -c apk add --update nodejs curl &&     mkdir /opt &&     ln -sf /opt/kibana-${KIBANA_VERSION} /opt/kibana &&     curl -sL https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}.tar.gz | tar xz -C /opt &&     rm -rf /opt/kibana/node &&     mkdir -p /opt/kibana/node/bin &&     ln -sf /usr/bin/node /opt/kibana/node/bin/node &&     apk del curl &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:e6295e4da338c30d21c54d9825d80bae91b5f74b823114ed5e1fcdafb393ef10" [label="local://context" shape="ellipse"];
  "sha256:3a01379dfe4729181bcf8322bd73fd6bc9ff71b0e99d405d1bf047e135c1d48f" [label="copy{src=/run.sh, dest=/opt/kibana/}" shape="note"];
  "sha256:dcaea8030d86f6b034cf1bf23e87551c895b684f356cb574e0f81418fc5d9b70" [label="sha256:dcaea8030d86f6b034cf1bf23e87551c895b684f356cb574e0f81418fc5d9b70" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:17f027ea2a87994babd8e8bbcde802fdfa252515904489db5d0aefc9b520b6c5" [label=""];
  "sha256:17f027ea2a87994babd8e8bbcde802fdfa252515904489db5d0aefc9b520b6c5" -> "sha256:3a01379dfe4729181bcf8322bd73fd6bc9ff71b0e99d405d1bf047e135c1d48f" [label=""];
  "sha256:e6295e4da338c30d21c54d9825d80bae91b5f74b823114ed5e1fcdafb393ef10" -> "sha256:3a01379dfe4729181bcf8322bd73fd6bc9ff71b0e99d405d1bf047e135c1d48f" [label=""];
  "sha256:3a01379dfe4729181bcf8322bd73fd6bc9ff71b0e99d405d1bf047e135c1d48f" -> "sha256:dcaea8030d86f6b034cf1bf23e87551c895b684f356cb574e0f81418fc5d9b70" [label=""];
}

