[app/sources/413315545.Dockerfile]
digraph {
  "sha256:49d82328a0ce396c529035389e331afbc25d5111932a3e0276b100e4ef059659" [label="docker-image://docker.io/i386/debian:stretch" shape="ellipse"];
  "sha256:d97f3e31b10adcd7e7e908b4bba7b20a2382eb96d26273f9ef25e5b595faa2b5" [label="/bin/sh -c env DEBIAN_FRONTEND=noninteractive apt-get update" shape="box"];
  "sha256:5f3fc011d0ea2cf21b231d68299903cc4d9cfe5e0c45861a8f15e0e7e1aa70d1" [label="/bin/sh -c env DEBIAN_FRONTEND=noninteractive apt-get install -y cmake" shape="box"];
  "sha256:e2c7cb122faa44b6387144a38b346b410044d4c6d41361db33d907b06d4d50c8" [label="/bin/sh -c env DEBIAN_FRONTEND=noninteractive apt-get install -y g++" shape="box"];
  "sha256:0a2a76a06cd165f1fe371c669fe311b07108dc9762f441e738c678bd3b3618c9" [label="/bin/sh -c env DEBIAN_FRONTEND=noninteractive apt-get install -y zlib1g-dev" shape="box"];
  "sha256:b31cfb4225ddf82b1599253f8499b15ce34c9282475961ca419a3e41e48b4c68" [label="/bin/sh -c env DEBIAN_FRONTEND=noninteractive apt-get install -y liblzma-dev" shape="box"];
  "sha256:50b13462d6554233c5d9669b25eee9b9b881dc2ac505c8aeea277ac59b243a70" [label="/bin/sh -c env DEBIAN_FRONTEND=noninteractive apt-get install -y python-dev" shape="box"];
  "sha256:4b528a423739e750da22c6eae20923ac45c82e09e84523cdf49a968d7a26448d" [label="/bin/sh -c env DEBIAN_FRONTEND=noninteractive apt-get install -y git-core" shape="box"];
  "sha256:cb4df35f2b110050f22d83e8a14950f7261c341c84925bf2ce3cd4fb01b61b3d" [label="mkdir{path=/src/docker/full-32bit}" shape="note"];
  "sha256:c723f8cf9529c1c205ec6514d3f3e4899f4caad9e0ff908337e0f9fe98e5c816" [label="sha256:c723f8cf9529c1c205ec6514d3f3e4899f4caad9e0ff908337e0f9fe98e5c816" shape="plaintext"];
  "sha256:49d82328a0ce396c529035389e331afbc25d5111932a3e0276b100e4ef059659" -> "sha256:d97f3e31b10adcd7e7e908b4bba7b20a2382eb96d26273f9ef25e5b595faa2b5" [label=""];
  "sha256:d97f3e31b10adcd7e7e908b4bba7b20a2382eb96d26273f9ef25e5b595faa2b5" -> "sha256:5f3fc011d0ea2cf21b231d68299903cc4d9cfe5e0c45861a8f15e0e7e1aa70d1" [label=""];
  "sha256:5f3fc011d0ea2cf21b231d68299903cc4d9cfe5e0c45861a8f15e0e7e1aa70d1" -> "sha256:e2c7cb122faa44b6387144a38b346b410044d4c6d41361db33d907b06d4d50c8" [label=""];
  "sha256:e2c7cb122faa44b6387144a38b346b410044d4c6d41361db33d907b06d4d50c8" -> "sha256:0a2a76a06cd165f1fe371c669fe311b07108dc9762f441e738c678bd3b3618c9" [label=""];
  "sha256:0a2a76a06cd165f1fe371c669fe311b07108dc9762f441e738c678bd3b3618c9" -> "sha256:b31cfb4225ddf82b1599253f8499b15ce34c9282475961ca419a3e41e48b4c68" [label=""];
  "sha256:b31cfb4225ddf82b1599253f8499b15ce34c9282475961ca419a3e41e48b4c68" -> "sha256:50b13462d6554233c5d9669b25eee9b9b881dc2ac505c8aeea277ac59b243a70" [label=""];
  "sha256:50b13462d6554233c5d9669b25eee9b9b881dc2ac505c8aeea277ac59b243a70" -> "sha256:4b528a423739e750da22c6eae20923ac45c82e09e84523cdf49a968d7a26448d" [label=""];
  "sha256:4b528a423739e750da22c6eae20923ac45c82e09e84523cdf49a968d7a26448d" -> "sha256:cb4df35f2b110050f22d83e8a14950f7261c341c84925bf2ce3cd4fb01b61b3d" [label=""];
  "sha256:cb4df35f2b110050f22d83e8a14950f7261c341c84925bf2ce3cd4fb01b61b3d" -> "sha256:c723f8cf9529c1c205ec6514d3f3e4899f4caad9e0ff908337e0f9fe98e5c816" [label=""];
}

