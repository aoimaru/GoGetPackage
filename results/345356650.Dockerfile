[app/sources/345356650.Dockerfile]
digraph {
  "sha256:2bb04f37b9adc6e8d2da5136e6de50ae71d2b562402efd9fa64b3ed750083b8f" [label="docker-image://docker.io/balenalib/rpi-debian:stretch-run" shape="ellipse"];
  "sha256:8eec35f1e31a180e9b13a7a1e596afcda767dc1b24970232060ce7a8b31a64a2" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ef68a8a59f94e9e29069c05190a8290caaa340d57ef0d65808aee3b70149af33" [label="sha256:ef68a8a59f94e9e29069c05190a8290caaa340d57ef0d65808aee3b70149af33" shape="plaintext"];
  "sha256:2bb04f37b9adc6e8d2da5136e6de50ae71d2b562402efd9fa64b3ed750083b8f" -> "sha256:8eec35f1e31a180e9b13a7a1e596afcda767dc1b24970232060ce7a8b31a64a2" [label=""];
  "sha256:8eec35f1e31a180e9b13a7a1e596afcda767dc1b24970232060ce7a8b31a64a2" -> "sha256:ef68a8a59f94e9e29069c05190a8290caaa340d57ef0d65808aee3b70149af33" [label=""];
}

