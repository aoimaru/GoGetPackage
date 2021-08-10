[app/sources/225452666.Dockerfile]
digraph {
  "sha256:3f4dbb644d55b8432a0be3a0ee13d22ab1d5f2a5e5fd9f2d4f7c02e96d8130ce" [label="docker-image://docker.io/library/java:openjdk-7-jre" shape="ellipse"];
  "sha256:5e9eb57f359e0ec1789a2e68fbaa35258e01283448adf0ed6c89f3831e3bc33d" [label="/bin/sh -c apt-get update &&     apt-get install -y curl &&     apt-get clean" shape="box"];
  "sha256:c92ebd94a8dc746537fead0f8ef03962cb65824997e244ed5ffec2d2e3992c5e" [label="/bin/sh -c cd / &&     curl -O https://download.elastic.co/kibana/kibana/kibana-4.0.2-linux-x64.tar.gz &&     tar xf kibana-4.0.2-linux-x64.tar.gz &&     rm kibana-4.0.2-linux-x64.tar.gz" shape="box"];
  "sha256:0e3c151f390098c040176cd155ad7e7fc6eead6ee0e952d08c7245ec335043cd" [label="local://context" shape="ellipse"];
  "sha256:b7af87f62c885876311b3fff20f8ffd0493496ac8135f449699e0c1fec4f76fa" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:4565e8370ff7001ca153feffdcaa10314cc45617939c506dd2cb0e5635bfb165" [label="sha256:4565e8370ff7001ca153feffdcaa10314cc45617939c506dd2cb0e5635bfb165" shape="plaintext"];
  "sha256:3f4dbb644d55b8432a0be3a0ee13d22ab1d5f2a5e5fd9f2d4f7c02e96d8130ce" -> "sha256:5e9eb57f359e0ec1789a2e68fbaa35258e01283448adf0ed6c89f3831e3bc33d" [label=""];
  "sha256:5e9eb57f359e0ec1789a2e68fbaa35258e01283448adf0ed6c89f3831e3bc33d" -> "sha256:c92ebd94a8dc746537fead0f8ef03962cb65824997e244ed5ffec2d2e3992c5e" [label=""];
  "sha256:c92ebd94a8dc746537fead0f8ef03962cb65824997e244ed5ffec2d2e3992c5e" -> "sha256:b7af87f62c885876311b3fff20f8ffd0493496ac8135f449699e0c1fec4f76fa" [label=""];
  "sha256:0e3c151f390098c040176cd155ad7e7fc6eead6ee0e952d08c7245ec335043cd" -> "sha256:b7af87f62c885876311b3fff20f8ffd0493496ac8135f449699e0c1fec4f76fa" [label=""];
  "sha256:b7af87f62c885876311b3fff20f8ffd0493496ac8135f449699e0c1fec4f76fa" -> "sha256:4565e8370ff7001ca153feffdcaa10314cc45617939c506dd2cb0e5635bfb165" [label=""];
}

