[app/sources/252775703.Dockerfile]
digraph {
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:75d13bd65d2dbbb4470028d8cd0ee5757d12515fd88f359426ae7f04ab282924" [label="/bin/sh -c apk --update add py-pip py-yaml &&pip install -U docker-compose==${DOCKER_COMPOSE_VERSION} &&rm -rf `find / -regex '.*\\\\.py[co]' -or -name apk`" shape="box"];
  "sha256:6ace973c65a3ecf6a88094ef8b09a07e87f125436e0b61a537a43cf6f55190c5" [label="sha256:6ace973c65a3ecf6a88094ef8b09a07e87f125436e0b61a537a43cf6f55190c5" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:75d13bd65d2dbbb4470028d8cd0ee5757d12515fd88f359426ae7f04ab282924" [label=""];
  "sha256:75d13bd65d2dbbb4470028d8cd0ee5757d12515fd88f359426ae7f04ab282924" -> "sha256:6ace973c65a3ecf6a88094ef8b09a07e87f125436e0b61a537a43cf6f55190c5" [label=""];
}

