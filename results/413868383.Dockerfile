[app/sources/413868383.Dockerfile]
digraph {
  "sha256:a5d39839c39cd4bd7fb960856a647e2bb12c7b06ec949f6bf97790e3436e389c" [label="docker-image://docker.io/library/mysql:latest" shape="ellipse"];
  "sha256:9998b7d960518f8978728ea802add5fcae6aeedfa106a16d27cc65b81881192d" [label="local://context" shape="ellipse"];
  "sha256:773923accca7918ae2f925cf5279f915dd7962c4ab18497b51b6ed1511043e89" [label="copy{src=/schema.sql, dest=/docker-entrypoint-initdb.d/schema.sql}" shape="note"];
  "sha256:cf9417d05fc7565e00ffaa259fe9e781d1e78527c30a372479cfcea4f4426741" [label="sha256:cf9417d05fc7565e00ffaa259fe9e781d1e78527c30a372479cfcea4f4426741" shape="plaintext"];
  "sha256:a5d39839c39cd4bd7fb960856a647e2bb12c7b06ec949f6bf97790e3436e389c" -> "sha256:773923accca7918ae2f925cf5279f915dd7962c4ab18497b51b6ed1511043e89" [label=""];
  "sha256:9998b7d960518f8978728ea802add5fcae6aeedfa106a16d27cc65b81881192d" -> "sha256:773923accca7918ae2f925cf5279f915dd7962c4ab18497b51b6ed1511043e89" [label=""];
  "sha256:773923accca7918ae2f925cf5279f915dd7962c4ab18497b51b6ed1511043e89" -> "sha256:cf9417d05fc7565e00ffaa259fe9e781d1e78527c30a372479cfcea4f4426741" [label=""];
}

