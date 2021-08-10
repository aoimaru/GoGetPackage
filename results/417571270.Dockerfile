[app/sources/417571270.Dockerfile]
digraph {
  "sha256:988db15202e49fb50827986d193524a32758485e945c9859b0c04e44e8c2b71c" [label="docker-image://docker.io/library/rabbitmq:3-management-alpine" shape="ellipse"];
  "sha256:7bf018dd75fa90522814f91010fcb0cc1cbeaf1ec7fb72c05ab7dbd56e655988" [label="/bin/sh -c mkdir -p /certs" shape="box"];
  "sha256:59cc9a795f12e18272caf63246f1cf598ab1091ed5e8c221f96ceb497dcdce20" [label="local://context" shape="ellipse"];
  "sha256:f3b6e6229d71057dfe048e0acd082fef292ae5b0d3cfa1e99ad9aa13c444ccef" [label="copy{src=/tests/certs/ca.pem, dest=/certs/}" shape="note"];
  "sha256:8636fbe2bf1937568c1073e75ef38a765c90c3b8ca90f37c75aca2008764703e" [label="copy{src=/tests/certs/server.key, dest=/certs/}" shape="note"];
  "sha256:d4b6ed46387b235e543dcdc937450b42fff0c311bdc9b94e054bf71dabf16ade" [label="copy{src=/tests/certs/server.pem, dest=/certs/}" shape="note"];
  "sha256:b000cc23bac39a3d70d78f9f1fe4e7a94e3f9f29b35b83cc46fc65b5be41cb90" [label="sha256:b000cc23bac39a3d70d78f9f1fe4e7a94e3f9f29b35b83cc46fc65b5be41cb90" shape="plaintext"];
  "sha256:988db15202e49fb50827986d193524a32758485e945c9859b0c04e44e8c2b71c" -> "sha256:7bf018dd75fa90522814f91010fcb0cc1cbeaf1ec7fb72c05ab7dbd56e655988" [label=""];
  "sha256:7bf018dd75fa90522814f91010fcb0cc1cbeaf1ec7fb72c05ab7dbd56e655988" -> "sha256:f3b6e6229d71057dfe048e0acd082fef292ae5b0d3cfa1e99ad9aa13c444ccef" [label=""];
  "sha256:59cc9a795f12e18272caf63246f1cf598ab1091ed5e8c221f96ceb497dcdce20" -> "sha256:f3b6e6229d71057dfe048e0acd082fef292ae5b0d3cfa1e99ad9aa13c444ccef" [label=""];
  "sha256:f3b6e6229d71057dfe048e0acd082fef292ae5b0d3cfa1e99ad9aa13c444ccef" -> "sha256:8636fbe2bf1937568c1073e75ef38a765c90c3b8ca90f37c75aca2008764703e" [label=""];
  "sha256:59cc9a795f12e18272caf63246f1cf598ab1091ed5e8c221f96ceb497dcdce20" -> "sha256:8636fbe2bf1937568c1073e75ef38a765c90c3b8ca90f37c75aca2008764703e" [label=""];
  "sha256:8636fbe2bf1937568c1073e75ef38a765c90c3b8ca90f37c75aca2008764703e" -> "sha256:d4b6ed46387b235e543dcdc937450b42fff0c311bdc9b94e054bf71dabf16ade" [label=""];
  "sha256:59cc9a795f12e18272caf63246f1cf598ab1091ed5e8c221f96ceb497dcdce20" -> "sha256:d4b6ed46387b235e543dcdc937450b42fff0c311bdc9b94e054bf71dabf16ade" [label=""];
  "sha256:d4b6ed46387b235e543dcdc937450b42fff0c311bdc9b94e054bf71dabf16ade" -> "sha256:b000cc23bac39a3d70d78f9f1fe4e7a94e3f9f29b35b83cc46fc65b5be41cb90" [label=""];
}

