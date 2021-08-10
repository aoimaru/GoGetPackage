[app/sources/472022352.Dockerfile]
digraph {
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:aa15aa6494a8f145d283e6538bba30f885856935beba46ba6a42ac4cd7cfa8b7" [label="/bin/sh -c apk add --no-cache ca-certificates tzdata make git bash" shape="box"];
  "sha256:f984d670278fe68502fc529abc994f8f1f1283e8bad64854ddc6c60ecae96330" [label="/bin/sh -c mkdir -p $PROJECT_PATH" shape="box"];
  "sha256:8df9cc029163aa839ca9beba29e0276e4b82eff7f06597f6272a10295dba4b4c" [label="local://context" shape="ellipse"];
  "sha256:f1dcb79abb0d39d479e25f9d7957a18e7f6070f4c50182d6a38dadceee04fe28" [label="copy{src=/, dest=/lora-packet-multiplexer}" shape="note"];
  "sha256:12130e795e3e835d3e4dd3a53d0c6bbf2e1c8db0a8688559ebe6191f912f35fc" [label="mkdir{path=/lora-packet-multiplexer}" shape="note"];
  "sha256:41d3caebd49a86877ca7596d3a446de840a787a1e750a4ff8b1a353eb3081ecf" [label="/bin/sh -c make dev-requirements" shape="box"];
  "sha256:ae524fcce01447dc07d299309c0e5034ecbd0e47159052944daaaf4b0c3e1988" [label="sha256:ae524fcce01447dc07d299309c0e5034ecbd0e47159052944daaaf4b0c3e1988" shape="plaintext"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:aa15aa6494a8f145d283e6538bba30f885856935beba46ba6a42ac4cd7cfa8b7" [label=""];
  "sha256:aa15aa6494a8f145d283e6538bba30f885856935beba46ba6a42ac4cd7cfa8b7" -> "sha256:f984d670278fe68502fc529abc994f8f1f1283e8bad64854ddc6c60ecae96330" [label=""];
  "sha256:f984d670278fe68502fc529abc994f8f1f1283e8bad64854ddc6c60ecae96330" -> "sha256:f1dcb79abb0d39d479e25f9d7957a18e7f6070f4c50182d6a38dadceee04fe28" [label=""];
  "sha256:8df9cc029163aa839ca9beba29e0276e4b82eff7f06597f6272a10295dba4b4c" -> "sha256:f1dcb79abb0d39d479e25f9d7957a18e7f6070f4c50182d6a38dadceee04fe28" [label=""];
  "sha256:f1dcb79abb0d39d479e25f9d7957a18e7f6070f4c50182d6a38dadceee04fe28" -> "sha256:12130e795e3e835d3e4dd3a53d0c6bbf2e1c8db0a8688559ebe6191f912f35fc" [label=""];
  "sha256:12130e795e3e835d3e4dd3a53d0c6bbf2e1c8db0a8688559ebe6191f912f35fc" -> "sha256:41d3caebd49a86877ca7596d3a446de840a787a1e750a4ff8b1a353eb3081ecf" [label=""];
  "sha256:41d3caebd49a86877ca7596d3a446de840a787a1e750a4ff8b1a353eb3081ecf" -> "sha256:ae524fcce01447dc07d299309c0e5034ecbd0e47159052944daaaf4b0c3e1988" [label=""];
}

