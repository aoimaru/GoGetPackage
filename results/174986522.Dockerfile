[app/sources/174986522.Dockerfile]
digraph {
  "sha256:67ca87eacda16dfedf0a605cc15deed25d6cece0d5397b5f244f751f6d913187" [label="docker-image://docker.io/easypi/alpine-arm:latest" shape="ellipse"];
  "sha256:bdcc9c0a84fea2e6b10cd7b20c5bfd87402cf37d47714092b962d7ea0023a662" [label="/bin/sh -c apk add --no-cache cmus" shape="box"];
  "sha256:098a7a366f69019d1960273ef61b8a7829aeb1dc22ce490de10fc4c96d63b5e0" [label="mkdir{path=/etc/cmus}" shape="note"];
  "sha256:429098e235e6c5a2bf70009dd4bdca1face7f8ec3bcb2c6fe1f4b859200ac2f4" [label="sha256:429098e235e6c5a2bf70009dd4bdca1face7f8ec3bcb2c6fe1f4b859200ac2f4" shape="plaintext"];
  "sha256:67ca87eacda16dfedf0a605cc15deed25d6cece0d5397b5f244f751f6d913187" -> "sha256:bdcc9c0a84fea2e6b10cd7b20c5bfd87402cf37d47714092b962d7ea0023a662" [label=""];
  "sha256:bdcc9c0a84fea2e6b10cd7b20c5bfd87402cf37d47714092b962d7ea0023a662" -> "sha256:098a7a366f69019d1960273ef61b8a7829aeb1dc22ce490de10fc4c96d63b5e0" [label=""];
  "sha256:098a7a366f69019d1960273ef61b8a7829aeb1dc22ce490de10fc4c96d63b5e0" -> "sha256:429098e235e6c5a2bf70009dd4bdca1face7f8ec3bcb2c6fe1f4b859200ac2f4" [label=""];
}

