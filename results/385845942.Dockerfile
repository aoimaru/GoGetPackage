[app/sources/385845942.Dockerfile]
digraph {
  "sha256:398e9e862abe6af33db872bb3b4320c189792f0f12e005b45438a983f0ef0b7e" [label="docker-image://docker.io/karalabe/xgo-1.11.x:latest" shape="ellipse"];
  "sha256:430450d4d64a7f061f48ba0b60944832099ed708d90e8a0217c42770a94fe597" [label="/bin/sh -c apt-get update  && apt-get install -y libpcsclite-dev locales  && apt-get clean  && locale-gen ${LANG}  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:5abe371d791cb7ab66037e6dae333d2e058f9d8418fdbfff4cd8a8edbd54d3c8" [label="sha256:5abe371d791cb7ab66037e6dae333d2e058f9d8418fdbfff4cd8a8edbd54d3c8" shape="plaintext"];
  "sha256:398e9e862abe6af33db872bb3b4320c189792f0f12e005b45438a983f0ef0b7e" -> "sha256:430450d4d64a7f061f48ba0b60944832099ed708d90e8a0217c42770a94fe597" [label=""];
  "sha256:430450d4d64a7f061f48ba0b60944832099ed708d90e8a0217c42770a94fe597" -> "sha256:5abe371d791cb7ab66037e6dae333d2e058f9d8418fdbfff4cd8a8edbd54d3c8" [label=""];
}

