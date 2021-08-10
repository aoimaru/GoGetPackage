[app/sources/252799540.Dockerfile]
digraph {
  "sha256:d2aa3427b6ed3e22a2756f32225d62ca4d9e59d9245d80bfec3cf1405bbe943f" [label="docker-image://docker.io/prom/graphite-exporter:latest" shape="ellipse"];
  "sha256:0f81027246537a45828b00dfa809d06a4c351f6563e3d956c054434c12edc634" [label="local://context" shape="ellipse"];
  "sha256:28477515048359144bd1e84afa9e4e81eee06ed7393c6260f19de5b47fa70f8c" [label="copy{src=/graphite_mapping.conf, dest=/tmp/graphite_mapping.conf}" shape="note"];
  "sha256:e8f0d5bee30ad96a7131fae4d1fad6530d5e30e22bd0560e87ecc998db4ffed8" [label="sha256:e8f0d5bee30ad96a7131fae4d1fad6530d5e30e22bd0560e87ecc998db4ffed8" shape="plaintext"];
  "sha256:d2aa3427b6ed3e22a2756f32225d62ca4d9e59d9245d80bfec3cf1405bbe943f" -> "sha256:28477515048359144bd1e84afa9e4e81eee06ed7393c6260f19de5b47fa70f8c" [label=""];
  "sha256:0f81027246537a45828b00dfa809d06a4c351f6563e3d956c054434c12edc634" -> "sha256:28477515048359144bd1e84afa9e4e81eee06ed7393c6260f19de5b47fa70f8c" [label=""];
  "sha256:28477515048359144bd1e84afa9e4e81eee06ed7393c6260f19de5b47fa70f8c" -> "sha256:e8f0d5bee30ad96a7131fae4d1fad6530d5e30e22bd0560e87ecc998db4ffed8" [label=""];
}

