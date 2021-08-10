[app/sources/332472617.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:536d747ed49448a272fcd086de5cc60eedecde8c5d19575165e6fe25f23f687a" [label="/bin/sh -c apt-get update &&     apt-get upgrade -y &&     apt-get install -y       mysql-client       inetutils-ping       net-tools       lsof       telnet &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:68d414ed5e25d9cdab04e930c78e7d688e90d7275711e34570006478f2bdccbf" [label="/bin/sh -c echo 'while true;do sleep 3600;done' > /wait" shape="box"];
  "sha256:09629e404d377b3f7077b2f0e275c02b9a33a0c8cc1ca82ea27ad640565688e8" [label="/bin/sh -c chmod +x /wait" shape="box"];
  "sha256:604f564e19f428dd9e7d99c57068693eca6e9a129526960e1045194aa553f6bb" [label="sha256:604f564e19f428dd9e7d99c57068693eca6e9a129526960e1045194aa553f6bb" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:536d747ed49448a272fcd086de5cc60eedecde8c5d19575165e6fe25f23f687a" [label=""];
  "sha256:536d747ed49448a272fcd086de5cc60eedecde8c5d19575165e6fe25f23f687a" -> "sha256:68d414ed5e25d9cdab04e930c78e7d688e90d7275711e34570006478f2bdccbf" [label=""];
  "sha256:68d414ed5e25d9cdab04e930c78e7d688e90d7275711e34570006478f2bdccbf" -> "sha256:09629e404d377b3f7077b2f0e275c02b9a33a0c8cc1ca82ea27ad640565688e8" [label=""];
  "sha256:09629e404d377b3f7077b2f0e275c02b9a33a0c8cc1ca82ea27ad640565688e8" -> "sha256:604f564e19f428dd9e7d99c57068693eca6e9a129526960e1045194aa553f6bb" [label=""];
}

