[app/sources/310980023.Dockerfile]
digraph {
  "sha256:0193179d08b844729c5031288f60d60b2b944393dbddd823478f62dae7c817a8" [label="local://context" shape="ellipse"];
  "sha256:43d8d74c3ae2ed355502e3722c89ea31b9e7354f2538e17025c0436c34347657" [label="docker-image://docker.io/library/busybox:ubuntu-14.04" shape="ellipse"];
  "sha256:acdf4d376d08e1b1a7c756945eccc8bdf22d26ddea0f6d8f1ffd82b30c2ef5b9" [label="copy{src=/guestbook_bin, dest=/app/guestbook}" shape="note"];
  "sha256:d0e7582441cd9aec192796e7c5c32d1dfe9b26c84d12e4554c875bdc650c145c" [label="copy{src=/public/index.html, dest=/app/public/index.html}" shape="note"];
  "sha256:95688ac115394be25a39efba04efa143f263d33a68423f9dad4641f329b6d149" [label="copy{src=/public/script.js, dest=/app/public/script.js}" shape="note"];
  "sha256:636a4760f1b2d8191d7757ead16bfd5edb4a4bb374b4f82ae4d288fb100ea4c9" [label="copy{src=/public/style.css, dest=/app/public/style.css}" shape="note"];
  "sha256:aa105de9769bda505869818e9ddbcb498e46c42083f1c6e1142ea3be9b446893" [label="mkdir{path=/app}" shape="note"];
  "sha256:7aa6470aa8b0103fb743425de57c884de68d7a108e9eeee8deb98d352f0af582" [label="sha256:7aa6470aa8b0103fb743425de57c884de68d7a108e9eeee8deb98d352f0af582" shape="plaintext"];
  "sha256:43d8d74c3ae2ed355502e3722c89ea31b9e7354f2538e17025c0436c34347657" -> "sha256:acdf4d376d08e1b1a7c756945eccc8bdf22d26ddea0f6d8f1ffd82b30c2ef5b9" [label=""];
  "sha256:0193179d08b844729c5031288f60d60b2b944393dbddd823478f62dae7c817a8" -> "sha256:acdf4d376d08e1b1a7c756945eccc8bdf22d26ddea0f6d8f1ffd82b30c2ef5b9" [label=""];
  "sha256:acdf4d376d08e1b1a7c756945eccc8bdf22d26ddea0f6d8f1ffd82b30c2ef5b9" -> "sha256:d0e7582441cd9aec192796e7c5c32d1dfe9b26c84d12e4554c875bdc650c145c" [label=""];
  "sha256:0193179d08b844729c5031288f60d60b2b944393dbddd823478f62dae7c817a8" -> "sha256:d0e7582441cd9aec192796e7c5c32d1dfe9b26c84d12e4554c875bdc650c145c" [label=""];
  "sha256:d0e7582441cd9aec192796e7c5c32d1dfe9b26c84d12e4554c875bdc650c145c" -> "sha256:95688ac115394be25a39efba04efa143f263d33a68423f9dad4641f329b6d149" [label=""];
  "sha256:0193179d08b844729c5031288f60d60b2b944393dbddd823478f62dae7c817a8" -> "sha256:95688ac115394be25a39efba04efa143f263d33a68423f9dad4641f329b6d149" [label=""];
  "sha256:95688ac115394be25a39efba04efa143f263d33a68423f9dad4641f329b6d149" -> "sha256:636a4760f1b2d8191d7757ead16bfd5edb4a4bb374b4f82ae4d288fb100ea4c9" [label=""];
  "sha256:0193179d08b844729c5031288f60d60b2b944393dbddd823478f62dae7c817a8" -> "sha256:636a4760f1b2d8191d7757ead16bfd5edb4a4bb374b4f82ae4d288fb100ea4c9" [label=""];
  "sha256:636a4760f1b2d8191d7757ead16bfd5edb4a4bb374b4f82ae4d288fb100ea4c9" -> "sha256:aa105de9769bda505869818e9ddbcb498e46c42083f1c6e1142ea3be9b446893" [label=""];
  "sha256:aa105de9769bda505869818e9ddbcb498e46c42083f1c6e1142ea3be9b446893" -> "sha256:7aa6470aa8b0103fb743425de57c884de68d7a108e9eeee8deb98d352f0af582" [label=""];
}

