[app/sources/235654516.Dockerfile]
digraph {
  "sha256:5ff79685c68f317a47e8c620988a56aa7254b6e1575d7053bfd8d1598504b1e3" [label="docker-image://docker.io/vulhub/elasticsearch:1.4.4" shape="ellipse"];
  "sha256:cc837e257b748174e33cbdac30677c673311ba0144b5ffda3bc78dfe97ec68d6" [label="/bin/sh -c set -ex     && plugin -install mobz/elasticsearch-head/1.x" shape="box"];
  "sha256:48899c252d36f6fc2e01518e3d62a14e7af59894aa459a4900fa45398c246d44" [label="sha256:48899c252d36f6fc2e01518e3d62a14e7af59894aa459a4900fa45398c246d44" shape="plaintext"];
  "sha256:5ff79685c68f317a47e8c620988a56aa7254b6e1575d7053bfd8d1598504b1e3" -> "sha256:cc837e257b748174e33cbdac30677c673311ba0144b5ffda3bc78dfe97ec68d6" [label=""];
  "sha256:cc837e257b748174e33cbdac30677c673311ba0144b5ffda3bc78dfe97ec68d6" -> "sha256:48899c252d36f6fc2e01518e3d62a14e7af59894aa459a4900fa45398c246d44" [label=""];
}

