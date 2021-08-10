[app/sources/282676730.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:8bd53c9529d5197a8a86fb4fb42a93abaad68f99dd293a62c6dab75dc0a3e9b3" [label="/bin/sh -c curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -" shape="box"];
  "sha256:16b82a044645b2817d6a54a774262afdbba4d230000276bbe257a9a3f65da1e9" [label="/bin/sh -c yum -y install nodejs vim" shape="box"];
  "sha256:bfde9520da17176135aa51525150ec1b2201d664bc8becae9baadb0b0d4265f6" [label="sha256:bfde9520da17176135aa51525150ec1b2201d664bc8becae9baadb0b0d4265f6" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:8bd53c9529d5197a8a86fb4fb42a93abaad68f99dd293a62c6dab75dc0a3e9b3" [label=""];
  "sha256:8bd53c9529d5197a8a86fb4fb42a93abaad68f99dd293a62c6dab75dc0a3e9b3" -> "sha256:16b82a044645b2817d6a54a774262afdbba4d230000276bbe257a9a3f65da1e9" [label=""];
  "sha256:16b82a044645b2817d6a54a774262afdbba4d230000276bbe257a9a3f65da1e9" -> "sha256:bfde9520da17176135aa51525150ec1b2201d664bc8becae9baadb0b0d4265f6" [label=""];
}

