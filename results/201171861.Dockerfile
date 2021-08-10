[app/sources/201171861.Dockerfile]
digraph {
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:627a9c4af988e7e5f238ced5e47e5743edbe19a4b34f303859f1893b407aa831" [label="/bin/sh -c set -x &&     mkdir -p /var/tmp &&     wget -qO /var/tmp/logstash.deb $DEB_URL &&     apt-get update -y &&     apt-get install -y logrotate git &&     dpkg -i /var/tmp/logstash.deb &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f80f56587e71a9ea78a98d3911fa90de6afc0e25bf16fed004264a5cf7a874c9" [label="/bin/sh -c plugin install logstash-input-beats" shape="box"];
  "sha256:e15f2815290451d17330d7aa7408a4e7258644bfcb30bd1f3df0560119d01fff" [label="local://context" shape="ellipse"];
  "sha256:d9a73515c6ae8f162ccb66bdc7413839a6d6bf1d6ea39d187dad874ab430cf9d" [label="copy{src=/logstash.conf.1.5.tmpl, dest=/logstash.conf.1.5.tmpl}" shape="note"];
  "sha256:a5b3a65316c99482e3e56b8b0d328a81b77eca90c3410723977c35b85e3dfe5f" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:6f5ae3eeb2aa25409fab0e0eabe23eacd1c4d3a0bb1043c8f25c14412a993ef5" [label="copy{src=/pki, dest=/etc/pki}" shape="note"];
  "sha256:1c2ac87d079b09d32430864afa38867e2ad2f2f0311137c953d8022e2c5ce9c1" [label="sha256:1c2ac87d079b09d32430864afa38867e2ad2f2f0311137c953d8022e2c5ce9c1" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:627a9c4af988e7e5f238ced5e47e5743edbe19a4b34f303859f1893b407aa831" [label=""];
  "sha256:627a9c4af988e7e5f238ced5e47e5743edbe19a4b34f303859f1893b407aa831" -> "sha256:f80f56587e71a9ea78a98d3911fa90de6afc0e25bf16fed004264a5cf7a874c9" [label=""];
  "sha256:f80f56587e71a9ea78a98d3911fa90de6afc0e25bf16fed004264a5cf7a874c9" -> "sha256:d9a73515c6ae8f162ccb66bdc7413839a6d6bf1d6ea39d187dad874ab430cf9d" [label=""];
  "sha256:e15f2815290451d17330d7aa7408a4e7258644bfcb30bd1f3df0560119d01fff" -> "sha256:d9a73515c6ae8f162ccb66bdc7413839a6d6bf1d6ea39d187dad874ab430cf9d" [label=""];
  "sha256:d9a73515c6ae8f162ccb66bdc7413839a6d6bf1d6ea39d187dad874ab430cf9d" -> "sha256:a5b3a65316c99482e3e56b8b0d328a81b77eca90c3410723977c35b85e3dfe5f" [label=""];
  "sha256:e15f2815290451d17330d7aa7408a4e7258644bfcb30bd1f3df0560119d01fff" -> "sha256:a5b3a65316c99482e3e56b8b0d328a81b77eca90c3410723977c35b85e3dfe5f" [label=""];
  "sha256:a5b3a65316c99482e3e56b8b0d328a81b77eca90c3410723977c35b85e3dfe5f" -> "sha256:6f5ae3eeb2aa25409fab0e0eabe23eacd1c4d3a0bb1043c8f25c14412a993ef5" [label=""];
  "sha256:e15f2815290451d17330d7aa7408a4e7258644bfcb30bd1f3df0560119d01fff" -> "sha256:6f5ae3eeb2aa25409fab0e0eabe23eacd1c4d3a0bb1043c8f25c14412a993ef5" [label=""];
  "sha256:6f5ae3eeb2aa25409fab0e0eabe23eacd1c4d3a0bb1043c8f25c14412a993ef5" -> "sha256:1c2ac87d079b09d32430864afa38867e2ad2f2f0311137c953d8022e2c5ce9c1" [label=""];
}

