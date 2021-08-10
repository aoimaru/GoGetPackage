[app/sources/319203406.Dockerfile]
digraph {
  "sha256:cf160f6adfb2e38429ab533600e2d3d9c7e5ad5959009aec49137e2c5aad538e" [label="local://context" shape="ellipse"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:256329f1ce4eb7484f011e86c746370e21e75b924e89d5b8a96e71321bdf3fdc" [label="mkdir{path=/app}" shape="note"];
  "sha256:2c5bfa7dc36696ce77050630c8453dc10903253f5dfd71632c90ee21e1f4f77f" [label="copy{src=/target/*.jar, dest=/app/app.jar}" shape="note"];
  "sha256:b3f5eea8d743a6e6dfc18d4d2c0c815e8084f5c80e4a060942291d4c8ef09238" [label="/bin/sh -c mkdir -p \"mount/logs\"" shape="box"];
  "sha256:23106d7bd0533604e0e2c42c420f086ba9447bcd10b10f85509c0be646453f6c" [label="/bin/sh -c mkdir -p \"mount/conf\"" shape="box"];
  "sha256:72e39c44e7ae6d9e9fe808e450267ef71577ca58dfef65041948f56e677db018" [label="copy{src=/src/main/resources/application.properties.sample, dest=/app/mount/conf/application.properties}" shape="note"];
  "sha256:155d3b2e1f08376448148fc264ac812a075b48e9fbc669b95a6ee5b218674d4f" [label="copy{src=/properties.yml, dest=/app/mount/conf/properties.yml}" shape="note"];
  "sha256:f849787186c5b717fdc69a470715d41366b5f93e453d8ea3224d757217f5760e" [label="sha256:f849787186c5b717fdc69a470715d41366b5f93e453d8ea3224d757217f5760e" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:256329f1ce4eb7484f011e86c746370e21e75b924e89d5b8a96e71321bdf3fdc" [label=""];
  "sha256:256329f1ce4eb7484f011e86c746370e21e75b924e89d5b8a96e71321bdf3fdc" -> "sha256:2c5bfa7dc36696ce77050630c8453dc10903253f5dfd71632c90ee21e1f4f77f" [label=""];
  "sha256:cf160f6adfb2e38429ab533600e2d3d9c7e5ad5959009aec49137e2c5aad538e" -> "sha256:2c5bfa7dc36696ce77050630c8453dc10903253f5dfd71632c90ee21e1f4f77f" [label=""];
  "sha256:2c5bfa7dc36696ce77050630c8453dc10903253f5dfd71632c90ee21e1f4f77f" -> "sha256:b3f5eea8d743a6e6dfc18d4d2c0c815e8084f5c80e4a060942291d4c8ef09238" [label=""];
  "sha256:b3f5eea8d743a6e6dfc18d4d2c0c815e8084f5c80e4a060942291d4c8ef09238" -> "sha256:23106d7bd0533604e0e2c42c420f086ba9447bcd10b10f85509c0be646453f6c" [label=""];
  "sha256:23106d7bd0533604e0e2c42c420f086ba9447bcd10b10f85509c0be646453f6c" -> "sha256:72e39c44e7ae6d9e9fe808e450267ef71577ca58dfef65041948f56e677db018" [label=""];
  "sha256:cf160f6adfb2e38429ab533600e2d3d9c7e5ad5959009aec49137e2c5aad538e" -> "sha256:72e39c44e7ae6d9e9fe808e450267ef71577ca58dfef65041948f56e677db018" [label=""];
  "sha256:72e39c44e7ae6d9e9fe808e450267ef71577ca58dfef65041948f56e677db018" -> "sha256:155d3b2e1f08376448148fc264ac812a075b48e9fbc669b95a6ee5b218674d4f" [label=""];
  "sha256:cf160f6adfb2e38429ab533600e2d3d9c7e5ad5959009aec49137e2c5aad538e" -> "sha256:155d3b2e1f08376448148fc264ac812a075b48e9fbc669b95a6ee5b218674d4f" [label=""];
  "sha256:155d3b2e1f08376448148fc264ac812a075b48e9fbc669b95a6ee5b218674d4f" -> "sha256:f849787186c5b717fdc69a470715d41366b5f93e453d8ea3224d757217f5760e" [label=""];
}

