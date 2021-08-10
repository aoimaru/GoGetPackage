[app/sources/250145987.Dockerfile]
digraph {
  "sha256:22c581992e09aa7d20b7291d7c800ee33b6b4c46b6f4895e3693f22a68e73411" [label="docker-image://docker.io/p7hb/docker-spark:2.2.0" shape="ellipse"];
  "sha256:6815d6b73579e57d86a504ad360fceb95003817f8d3e3693f5f4418837b23058" [label="local://context" shape="ellipse"];
  "sha256:02929a4cf009204f0df3dbead15c451163b7c193d402595a1d10ece37ac794c2" [label="copy{src=/rc.local, dest=/etc}" shape="note"];
  "sha256:7c82179394febd48b33170f318287fb9910596ad1fd0c868ab0b3bc1dbfdedbc" [label="sha256:7c82179394febd48b33170f318287fb9910596ad1fd0c868ab0b3bc1dbfdedbc" shape="plaintext"];
  "sha256:22c581992e09aa7d20b7291d7c800ee33b6b4c46b6f4895e3693f22a68e73411" -> "sha256:02929a4cf009204f0df3dbead15c451163b7c193d402595a1d10ece37ac794c2" [label=""];
  "sha256:6815d6b73579e57d86a504ad360fceb95003817f8d3e3693f5f4418837b23058" -> "sha256:02929a4cf009204f0df3dbead15c451163b7c193d402595a1d10ece37ac794c2" [label=""];
  "sha256:02929a4cf009204f0df3dbead15c451163b7c193d402595a1d10ece37ac794c2" -> "sha256:7c82179394febd48b33170f318287fb9910596ad1fd0c868ab0b3bc1dbfdedbc" [label=""];
}

