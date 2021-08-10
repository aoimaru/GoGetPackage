[app/sources/252784184.Dockerfile]
digraph {
  "sha256:97877f0228b4d37f4437431b5a80928cceebec0528ad95cf8807084f5a0d3e95" [label="docker-image://docker.io/library/node:6.9" shape="ellipse"];
  "sha256:073d3316ca382f244d486abc477ffba5aefb1f0525b64f31d0046003a88a72d1" [label="/bin/sh -c useradd --user-group --create-home --shell /bin/false app" shape="box"];
  "sha256:c44b89d12b5670bbb5e9ad98aae553d261f16d53370834c17eb29b4b850fdc70" [label="mkdir{path=/home/app}" shape="note"];
  "sha256:06af8ccc69775ff4362ffcbdae41e6dd33e640000443b259bd49e57b9ee9cfe0" [label="/bin/sh -c npm install -g @angular/cli yarn && npm cache clean" shape="box"];
  "sha256:54e9d21a5f5fb974c1f1b014c6c5958e08c58758f0e765ebd8d843668e55c7a8" [label="sha256:54e9d21a5f5fb974c1f1b014c6c5958e08c58758f0e765ebd8d843668e55c7a8" shape="plaintext"];
  "sha256:97877f0228b4d37f4437431b5a80928cceebec0528ad95cf8807084f5a0d3e95" -> "sha256:073d3316ca382f244d486abc477ffba5aefb1f0525b64f31d0046003a88a72d1" [label=""];
  "sha256:073d3316ca382f244d486abc477ffba5aefb1f0525b64f31d0046003a88a72d1" -> "sha256:c44b89d12b5670bbb5e9ad98aae553d261f16d53370834c17eb29b4b850fdc70" [label=""];
  "sha256:c44b89d12b5670bbb5e9ad98aae553d261f16d53370834c17eb29b4b850fdc70" -> "sha256:06af8ccc69775ff4362ffcbdae41e6dd33e640000443b259bd49e57b9ee9cfe0" [label=""];
  "sha256:06af8ccc69775ff4362ffcbdae41e6dd33e640000443b259bd49e57b9ee9cfe0" -> "sha256:54e9d21a5f5fb974c1f1b014c6c5958e08c58758f0e765ebd8d843668e55c7a8" [label=""];
}

