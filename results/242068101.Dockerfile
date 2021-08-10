[app/sources/242068101.Dockerfile]
digraph {
  "sha256:afc16b42dd87bcdaa6dd7d0b4ac734ed970c17f3129ca7d630720d437ab1b17e" [label="local://context" shape="ellipse"];
  "sha256:b990448f58950a17594141845edbe2cc3cd324f31b0da022a95dd7920af50fab" [label="copy{src=/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:b007c2707723bb3b6aa66ad2ac0bd4a6a2387fe783e9963fa16d3dd498f54ad7" [label="copy{src=/h2demo, dest=/}" shape="note"];
  "sha256:2d172718dcdde7275540322f44655cf4e37e7098823cfb7a58187b4a20d856d3" [label="sha256:2d172718dcdde7275540322f44655cf4e37e7098823cfb7a58187b4a20d856d3" shape="plaintext"];
  "sha256:afc16b42dd87bcdaa6dd7d0b4ac734ed970c17f3129ca7d630720d437ab1b17e" -> "sha256:b990448f58950a17594141845edbe2cc3cd324f31b0da022a95dd7920af50fab" [label=""];
  "sha256:b990448f58950a17594141845edbe2cc3cd324f31b0da022a95dd7920af50fab" -> "sha256:b007c2707723bb3b6aa66ad2ac0bd4a6a2387fe783e9963fa16d3dd498f54ad7" [label=""];
  "sha256:afc16b42dd87bcdaa6dd7d0b4ac734ed970c17f3129ca7d630720d437ab1b17e" -> "sha256:b007c2707723bb3b6aa66ad2ac0bd4a6a2387fe783e9963fa16d3dd498f54ad7" [label=""];
  "sha256:b007c2707723bb3b6aa66ad2ac0bd4a6a2387fe783e9963fa16d3dd498f54ad7" -> "sha256:2d172718dcdde7275540322f44655cf4e37e7098823cfb7a58187b4a20d856d3" [label=""];
}

