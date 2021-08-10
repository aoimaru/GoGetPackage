[app/sources/174987302.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:d19e387f266a3fa7ef761b518ca7c4c9d94017177ae94aaf31520a3204635f92" [label="/bin/sh -c apt-get update     && apt-get install -y curl jq vim-tiny     && curl -sSL https://bootstrap.saltstack.com | bash -s -- -M -N -S -X     && apt-get install -y salt-ssh     && curl -sSL https://bootstrap.pypa.io/get-pip.py | python     && pip install httpie ipython     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b8ee196fe576dd652032d4043b486f54850510462d28759a8837a8add08d3c9d" [label="mkdir{path=/srv/salt}" shape="note"];
  "sha256:4830b565216f613c337f0c4a676706c2b92b99f9006c5c5157292408d654df8f" [label="sha256:4830b565216f613c337f0c4a676706c2b92b99f9006c5c5157292408d654df8f" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:d19e387f266a3fa7ef761b518ca7c4c9d94017177ae94aaf31520a3204635f92" [label=""];
  "sha256:d19e387f266a3fa7ef761b518ca7c4c9d94017177ae94aaf31520a3204635f92" -> "sha256:b8ee196fe576dd652032d4043b486f54850510462d28759a8837a8add08d3c9d" [label=""];
  "sha256:b8ee196fe576dd652032d4043b486f54850510462d28759a8837a8add08d3c9d" -> "sha256:4830b565216f613c337f0c4a676706c2b92b99f9006c5c5157292408d654df8f" [label=""];
}

