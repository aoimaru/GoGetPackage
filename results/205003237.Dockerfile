[app/sources/205003237.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:dc0ae8b110fc8d1954e1818d0f22c9e8559eacf31629eabe38bf59b85f975cf9" [label="/bin/sh -c yum -y install nginx apache2 openssh-server" shape="box"];
  "sha256:08bec063079f427ad2a3ebae69e2a62d5fce5f480638858f93de654b11b671b3" [label="sha256:08bec063079f427ad2a3ebae69e2a62d5fce5f480638858f93de654b11b671b3" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:dc0ae8b110fc8d1954e1818d0f22c9e8559eacf31629eabe38bf59b85f975cf9" [label=""];
  "sha256:dc0ae8b110fc8d1954e1818d0f22c9e8559eacf31629eabe38bf59b85f975cf9" -> "sha256:08bec063079f427ad2a3ebae69e2a62d5fce5f480638858f93de654b11b671b3" [label=""];
}

