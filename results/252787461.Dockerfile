[app/sources/252787461.Dockerfile]
digraph {
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:d7febd6bc2d79735ffeda0d2f2fc7331c1f9471fb791fcc31dcaff289b17ac8c" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:da25d18205914c4c5a9c799d29e6798060710e14f54cc052ebfc02266a844c10" [label="mkdir{path=/src}" shape="note"];
  "sha256:815722d484ddb643b36d559b7091afcb422dec5ed9127e193a8e6f7164923f88" [label="local://context" shape="ellipse"];
  "sha256:f102d18bf7fc0c5b9fc856cad01869c5d6fbfd0b8ca96bb0c48997530378959f" [label="copy{src=/package.json, dest=/src/}" shape="note"];
  "sha256:dbcc0da6bddcaa6efe902d0ca9da23609358edd6d1e782e464969bf9e4567436" [label="/bin/sh -c npm install --silent" shape="box"];
  "sha256:8b01b533f59211edbc365a5f799e8297095d94cc4f4390850db2d90a95e695ce" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:d133f349e4a0ef7fc851a86e8da6b0bff1a4c6c1c30646c46a712b6cd24391da" [label="sha256:d133f349e4a0ef7fc851a86e8da6b0bff1a4c6c1c30646c46a712b6cd24391da" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:d7febd6bc2d79735ffeda0d2f2fc7331c1f9471fb791fcc31dcaff289b17ac8c" [label=""];
  "sha256:d7febd6bc2d79735ffeda0d2f2fc7331c1f9471fb791fcc31dcaff289b17ac8c" -> "sha256:da25d18205914c4c5a9c799d29e6798060710e14f54cc052ebfc02266a844c10" [label=""];
  "sha256:da25d18205914c4c5a9c799d29e6798060710e14f54cc052ebfc02266a844c10" -> "sha256:f102d18bf7fc0c5b9fc856cad01869c5d6fbfd0b8ca96bb0c48997530378959f" [label=""];
  "sha256:815722d484ddb643b36d559b7091afcb422dec5ed9127e193a8e6f7164923f88" -> "sha256:f102d18bf7fc0c5b9fc856cad01869c5d6fbfd0b8ca96bb0c48997530378959f" [label=""];
  "sha256:f102d18bf7fc0c5b9fc856cad01869c5d6fbfd0b8ca96bb0c48997530378959f" -> "sha256:dbcc0da6bddcaa6efe902d0ca9da23609358edd6d1e782e464969bf9e4567436" [label=""];
  "sha256:dbcc0da6bddcaa6efe902d0ca9da23609358edd6d1e782e464969bf9e4567436" -> "sha256:8b01b533f59211edbc365a5f799e8297095d94cc4f4390850db2d90a95e695ce" [label=""];
  "sha256:815722d484ddb643b36d559b7091afcb422dec5ed9127e193a8e6f7164923f88" -> "sha256:8b01b533f59211edbc365a5f799e8297095d94cc4f4390850db2d90a95e695ce" [label=""];
  "sha256:8b01b533f59211edbc365a5f799e8297095d94cc4f4390850db2d90a95e695ce" -> "sha256:d133f349e4a0ef7fc851a86e8da6b0bff1a4c6c1c30646c46a712b6cd24391da" [label=""];
}

