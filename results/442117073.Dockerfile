[app/sources/442117073.Dockerfile]
digraph {
  "sha256:ad283e70fda04eb26f736b564e1ccc80431a9d32a33d5fc8517cae33bc8609f2" [label="docker-image://docker.io/library/rabbitmq:3.6.16-management" shape="ellipse"];
  "sha256:fe5605847a6b083f57b5f8cd70388df4b3707f5b68e46d2294d6c9f53208f3b5" [label="/bin/sh -c apt-get update && apt-get install -y gettext" shape="box"];
  "sha256:fef7f594d8528b8e9fae6bb720f8d4dbe6e027a50a32ad7fc857bb098b34b335" [label="sha256:fef7f594d8528b8e9fae6bb720f8d4dbe6e027a50a32ad7fc857bb098b34b335" shape="plaintext"];
  "sha256:ad283e70fda04eb26f736b564e1ccc80431a9d32a33d5fc8517cae33bc8609f2" -> "sha256:fe5605847a6b083f57b5f8cd70388df4b3707f5b68e46d2294d6c9f53208f3b5" [label=""];
  "sha256:fe5605847a6b083f57b5f8cd70388df4b3707f5b68e46d2294d6c9f53208f3b5" -> "sha256:fef7f594d8528b8e9fae6bb720f8d4dbe6e027a50a32ad7fc857bb098b34b335" [label=""];
}

