[app/sources/194390717.Dockerfile]
digraph {
  "sha256:07d223b948ce0b451882131e566e3ece6b5980fd3d0d9d35b5efd789334154ec" [label="docker-image://docker.io/mhart/alpine-node:10" shape="ellipse"];
  "sha256:dfdabb595d7293dc2cdcd0219a0276ad80089ac09c2653c8157bd409f92bd5a3" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:f546a378bde2c1c156094c1a9d70e5832165bdc8ee95f565976c8cdffbb3b91f" [label="local://context" shape="ellipse"];
  "sha256:aa63c2da72de3707a0b0cdcd7d3801600e5816817bbd22af7853a72e48bb4293" [label="copy{src=/package.json, dest=/usr/src/},copy{src=/yarn.lock, dest=/usr/src/}" shape="note"];
  "sha256:d04aead96534d7eb995efa48d2ce11b9ecae1eef95eae423423dcf3af444bb56" [label="/bin/sh -c yarn" shape="box"];
  "sha256:6c96e05ea8accc5bae91cab4feff32b216d8d94fc57a89c985071db29ceaa470" [label="copy{src=/, dest=/usr/src/}" shape="note"];
  "sha256:3d6bb46cd537fb9b80be6feb1d483d4b01a9dd38bdb2b7cc5866d8023805c927" [label="/bin/sh -c yarn build && yarn export -- -o /public" shape="box"];
  "sha256:dba07ab3636d77ae166010cbc5b48f350698cee8fe4da4d7b3c8e177f11588d2" [label="sha256:dba07ab3636d77ae166010cbc5b48f350698cee8fe4da4d7b3c8e177f11588d2" shape="plaintext"];
  "sha256:07d223b948ce0b451882131e566e3ece6b5980fd3d0d9d35b5efd789334154ec" -> "sha256:dfdabb595d7293dc2cdcd0219a0276ad80089ac09c2653c8157bd409f92bd5a3" [label=""];
  "sha256:dfdabb595d7293dc2cdcd0219a0276ad80089ac09c2653c8157bd409f92bd5a3" -> "sha256:aa63c2da72de3707a0b0cdcd7d3801600e5816817bbd22af7853a72e48bb4293" [label=""];
  "sha256:f546a378bde2c1c156094c1a9d70e5832165bdc8ee95f565976c8cdffbb3b91f" -> "sha256:aa63c2da72de3707a0b0cdcd7d3801600e5816817bbd22af7853a72e48bb4293" [label=""];
  "sha256:aa63c2da72de3707a0b0cdcd7d3801600e5816817bbd22af7853a72e48bb4293" -> "sha256:d04aead96534d7eb995efa48d2ce11b9ecae1eef95eae423423dcf3af444bb56" [label=""];
  "sha256:d04aead96534d7eb995efa48d2ce11b9ecae1eef95eae423423dcf3af444bb56" -> "sha256:6c96e05ea8accc5bae91cab4feff32b216d8d94fc57a89c985071db29ceaa470" [label=""];
  "sha256:f546a378bde2c1c156094c1a9d70e5832165bdc8ee95f565976c8cdffbb3b91f" -> "sha256:6c96e05ea8accc5bae91cab4feff32b216d8d94fc57a89c985071db29ceaa470" [label=""];
  "sha256:6c96e05ea8accc5bae91cab4feff32b216d8d94fc57a89c985071db29ceaa470" -> "sha256:3d6bb46cd537fb9b80be6feb1d483d4b01a9dd38bdb2b7cc5866d8023805c927" [label=""];
  "sha256:3d6bb46cd537fb9b80be6feb1d483d4b01a9dd38bdb2b7cc5866d8023805c927" -> "sha256:dba07ab3636d77ae166010cbc5b48f350698cee8fe4da4d7b3c8e177f11588d2" [label=""];
}

