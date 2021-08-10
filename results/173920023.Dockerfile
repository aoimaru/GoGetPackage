[app/sources/173920023.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:0cf269905ba366a63d045835e85fca22c5d1bb32ab10367d5e1537b30f5251ce" [label="/bin/sh -c apt-get update && apt-get install -y   ca-certificates   curl   software-properties-common   --no-install-recommends &&   curl -sSL https://www.virtualbox.org/download/oracle_vbox.asc | apt-key add - &&   echo \"deb http://download.virtualbox.org/virtualbox/debian jessie contrib\" >> /etc/apt/sources.list.d/virtualbox.list &&   apt-get update &&   apt-get install -y   virtualbox-5.0   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0daed01e809135aefea11a78220994be243492491530c896a8f38f4327506516" [label="sha256:0daed01e809135aefea11a78220994be243492491530c896a8f38f4327506516" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:0cf269905ba366a63d045835e85fca22c5d1bb32ab10367d5e1537b30f5251ce" [label=""];
  "sha256:0cf269905ba366a63d045835e85fca22c5d1bb32ab10367d5e1537b30f5251ce" -> "sha256:0daed01e809135aefea11a78220994be243492491530c896a8f38f4327506516" [label=""];
}

