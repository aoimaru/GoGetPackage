[app/sources/252780073.Dockerfile]
digraph {
  "sha256:3aea2fc5cd95eacde831b36f454bfff3ea124601064e18beec6aa94bf92acc05" [label="docker-image://docker.io/library/postgres:9.6.5-alpine" shape="ellipse"];
  "sha256:c0c11094449a510b2bcac4e2e767d6328f2ccbce4d3332572eca58cee0ce45bd" [label="local://context" shape="ellipse"];
  "sha256:b08dc49f0c6be119120ba12a83ea517b4dab4a2a39680dd964b6d9f8b37999f0" [label="copy{src=/init.sh, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:cbdc55f27e03ca9f9613df03df70cea0bf7723f85c48ceb46a11b6f8b5a92fa7" [label="/bin/sh -c chmod 755 /docker-entrypoint-initdb.d/init.sh" shape="box"];
  "sha256:f58d184254522c8960455a28537da297f95b5370f22dd339796de736243be736" [label="sha256:f58d184254522c8960455a28537da297f95b5370f22dd339796de736243be736" shape="plaintext"];
  "sha256:3aea2fc5cd95eacde831b36f454bfff3ea124601064e18beec6aa94bf92acc05" -> "sha256:b08dc49f0c6be119120ba12a83ea517b4dab4a2a39680dd964b6d9f8b37999f0" [label=""];
  "sha256:c0c11094449a510b2bcac4e2e767d6328f2ccbce4d3332572eca58cee0ce45bd" -> "sha256:b08dc49f0c6be119120ba12a83ea517b4dab4a2a39680dd964b6d9f8b37999f0" [label=""];
  "sha256:b08dc49f0c6be119120ba12a83ea517b4dab4a2a39680dd964b6d9f8b37999f0" -> "sha256:cbdc55f27e03ca9f9613df03df70cea0bf7723f85c48ceb46a11b6f8b5a92fa7" [label=""];
  "sha256:cbdc55f27e03ca9f9613df03df70cea0bf7723f85c48ceb46a11b6f8b5a92fa7" -> "sha256:f58d184254522c8960455a28537da297f95b5370f22dd339796de736243be736" [label=""];
}

