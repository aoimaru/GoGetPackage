[app/sources/284257390.Dockerfile]
digraph {
  "sha256:17e92b0ab90b5aa4eadb08969cc941371fca8ab24f83d8e6adc6ce480a110ff3" [label="docker-image://docker.io/jboss/keycloak:4.8.1.Final" shape="ellipse"];
  "sha256:23e4d94b18f29beb324226e079f626e55fc3389abf7eb8795bdfef6b4edc226b" [label="local://context" shape="ellipse"];
  "sha256:eea7c75bb138eefdfc8c291086a28ff4c22721cf69e33efc28bfe91cd52e7b40" [label="copy{src=/standalone.xml, dest=/opt/jboss/keycloak/standalone/configuration/standalone.xml}" shape="note"];
  "sha256:0e8695c8ce4ab2ffed22fe3fc70bb9e9caf651a8633ea356bb5f8efc6e088d7e" [label="sha256:0e8695c8ce4ab2ffed22fe3fc70bb9e9caf651a8633ea356bb5f8efc6e088d7e" shape="plaintext"];
  "sha256:17e92b0ab90b5aa4eadb08969cc941371fca8ab24f83d8e6adc6ce480a110ff3" -> "sha256:eea7c75bb138eefdfc8c291086a28ff4c22721cf69e33efc28bfe91cd52e7b40" [label=""];
  "sha256:23e4d94b18f29beb324226e079f626e55fc3389abf7eb8795bdfef6b4edc226b" -> "sha256:eea7c75bb138eefdfc8c291086a28ff4c22721cf69e33efc28bfe91cd52e7b40" [label=""];
  "sha256:eea7c75bb138eefdfc8c291086a28ff4c22721cf69e33efc28bfe91cd52e7b40" -> "sha256:0e8695c8ce4ab2ffed22fe3fc70bb9e9caf651a8633ea356bb5f8efc6e088d7e" [label=""];
}

