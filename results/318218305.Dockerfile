[app/sources/318218305.Dockerfile]
digraph {
  "sha256:872ac5d96c8ffbca60d84e10dc597b48fa1efcb89a63e0a3685cff131a51c25f" [label="docker-image://docker.io/library/postgres:10.4-alpine" shape="ellipse"];
  "sha256:207cc4c86002c9e65c1f792a3e142941b38e3f28cbe022f2964f21286ded93c2" [label="local://context" shape="ellipse"];
  "sha256:8a57aba609ba11e91cb67433199be4caf823fb568b8d280d915284983dc7ad28" [label="copy{src=/create.sql, dest=/docker-entrypoint-initdb.d}" shape="note"];
  "sha256:33b29c0ce2d8073bd577851d8a18301f126224b8cd5ce19e58ec302889bcd3a6" [label="sha256:33b29c0ce2d8073bd577851d8a18301f126224b8cd5ce19e58ec302889bcd3a6" shape="plaintext"];
  "sha256:872ac5d96c8ffbca60d84e10dc597b48fa1efcb89a63e0a3685cff131a51c25f" -> "sha256:8a57aba609ba11e91cb67433199be4caf823fb568b8d280d915284983dc7ad28" [label=""];
  "sha256:207cc4c86002c9e65c1f792a3e142941b38e3f28cbe022f2964f21286ded93c2" -> "sha256:8a57aba609ba11e91cb67433199be4caf823fb568b8d280d915284983dc7ad28" [label=""];
  "sha256:8a57aba609ba11e91cb67433199be4caf823fb568b8d280d915284983dc7ad28" -> "sha256:33b29c0ce2d8073bd577851d8a18301f126224b8cd5ce19e58ec302889bcd3a6" [label=""];
}

