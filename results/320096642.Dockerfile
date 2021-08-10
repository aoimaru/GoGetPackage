[app/sources/320096642.Dockerfile]
digraph {
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:a630cff7faf8cc74fcd3c85f59ff9740c6dfae2b6a5b7024d6cf907efe4e3100" [label="/bin/sh -c apk update &&     apk upgrade &&     adduser -D -u $USER_UID $USER_NAME &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:fed7122912b968da56ce5edef37bc11aec17c484d3a9f93436c3e662a1af4002" [label="sha256:fed7122912b968da56ce5edef37bc11aec17c484d3a9f93436c3e662a1af4002" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:a630cff7faf8cc74fcd3c85f59ff9740c6dfae2b6a5b7024d6cf907efe4e3100" [label=""];
  "sha256:a630cff7faf8cc74fcd3c85f59ff9740c6dfae2b6a5b7024d6cf907efe4e3100" -> "sha256:fed7122912b968da56ce5edef37bc11aec17c484d3a9f93436c3e662a1af4002" [label=""];
}

