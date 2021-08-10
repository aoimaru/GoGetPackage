[app/sources/282263206.Dockerfile]
digraph {
  "sha256:73e822cf569a993f92aac112f88c21c3f4c1cbe3b1b20134e4792ac8f42808bc" [label="docker-image://docker.io/webdevops/base:ubuntu-17.10@sha256:6eada4a79a6326ffde2854717e908c5eeb2ddd1ecc0d6b3df31eb9f343f3be2f" shape="ellipse"];
  "sha256:7d70ac1aab81c7979114e319fa3640553582e52e9425551698353eb9cb824967" [label="local://context" shape="ellipse"];
  "sha256:98f7ca92ee540d03fa66c1ad9f763ae3c0366bc8c4e87556ee9c0ab7b43b1850" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:b7cb913765ff03d28469cbb9132a71a53971fd2cd615a2c13ebf7e324e2aaa40" [label="/bin/sh -c set -x     && apt-install         zip         unzip         bzip2         moreutils         dnsutils         openssh-client         rsync         git         patch     && mkdir -p /var/lib/syslog-ng/     && /usr/local/bin/generate-locales     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:3408a55104dbce51cb7bc915a1df1d49fb891c3c34b287fbca15685d09d882ac" [label="sha256:3408a55104dbce51cb7bc915a1df1d49fb891c3c34b287fbca15685d09d882ac" shape="plaintext"];
  "sha256:73e822cf569a993f92aac112f88c21c3f4c1cbe3b1b20134e4792ac8f42808bc" -> "sha256:98f7ca92ee540d03fa66c1ad9f763ae3c0366bc8c4e87556ee9c0ab7b43b1850" [label=""];
  "sha256:7d70ac1aab81c7979114e319fa3640553582e52e9425551698353eb9cb824967" -> "sha256:98f7ca92ee540d03fa66c1ad9f763ae3c0366bc8c4e87556ee9c0ab7b43b1850" [label=""];
  "sha256:98f7ca92ee540d03fa66c1ad9f763ae3c0366bc8c4e87556ee9c0ab7b43b1850" -> "sha256:b7cb913765ff03d28469cbb9132a71a53971fd2cd615a2c13ebf7e324e2aaa40" [label=""];
  "sha256:b7cb913765ff03d28469cbb9132a71a53971fd2cd615a2c13ebf7e324e2aaa40" -> "sha256:3408a55104dbce51cb7bc915a1df1d49fb891c3c34b287fbca15685d09d882ac" [label=""];
}

