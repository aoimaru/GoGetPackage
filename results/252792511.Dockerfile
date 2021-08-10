[app/sources/252792511.Dockerfile]
digraph {
  "sha256:f44f7e2eac329ff72bb0d1be1184e8b1b72a29468e7c774e6eb40ebef185e436" [label="local://context" shape="ellipse"];
  "sha256:dbf2e27d11b1f36db6e67c0cefc67ad1794da6dd45b4f0ef5698250ae6a8bcec" [label="docker-image://docker.io/library/node:6-slim" shape="ellipse"];
  "sha256:71df1c2c73998b8e4602f597753ce4b12d943a87fae8ba7c82db69dfb28c4083" [label="mkdir{path=/git/periodic-bot}" shape="note"];
  "sha256:aaf36b049f9c72e76a6275783e3bcf6d3cb4eadfa73757487694f6501f5bcee3" [label="copy{src=/package.json, dest=/git/periodic-bot/}" shape="note"];
  "sha256:d0b1b62f20c4804f4fd8ce9e08b5eecc0a1ac4baf101564ff549052eaffbf079" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:0513683b88dda688c9edf34dc9be65bdac66dddd04e0c17b91fda9f8b2b98685" [label="copy{src=/*.js, dest=/git/periodic-bot/},copy{src=/*.json, dest=/git/periodic-bot/}" shape="note"];
  "sha256:b15e1387f8c3656ec115ddcf33c0b22b473abd780e8b5aeaf4dca8b9bfeeab4c" [label="sha256:b15e1387f8c3656ec115ddcf33c0b22b473abd780e8b5aeaf4dca8b9bfeeab4c" shape="plaintext"];
  "sha256:dbf2e27d11b1f36db6e67c0cefc67ad1794da6dd45b4f0ef5698250ae6a8bcec" -> "sha256:71df1c2c73998b8e4602f597753ce4b12d943a87fae8ba7c82db69dfb28c4083" [label=""];
  "sha256:71df1c2c73998b8e4602f597753ce4b12d943a87fae8ba7c82db69dfb28c4083" -> "sha256:aaf36b049f9c72e76a6275783e3bcf6d3cb4eadfa73757487694f6501f5bcee3" [label=""];
  "sha256:f44f7e2eac329ff72bb0d1be1184e8b1b72a29468e7c774e6eb40ebef185e436" -> "sha256:aaf36b049f9c72e76a6275783e3bcf6d3cb4eadfa73757487694f6501f5bcee3" [label=""];
  "sha256:aaf36b049f9c72e76a6275783e3bcf6d3cb4eadfa73757487694f6501f5bcee3" -> "sha256:d0b1b62f20c4804f4fd8ce9e08b5eecc0a1ac4baf101564ff549052eaffbf079" [label=""];
  "sha256:d0b1b62f20c4804f4fd8ce9e08b5eecc0a1ac4baf101564ff549052eaffbf079" -> "sha256:0513683b88dda688c9edf34dc9be65bdac66dddd04e0c17b91fda9f8b2b98685" [label=""];
  "sha256:f44f7e2eac329ff72bb0d1be1184e8b1b72a29468e7c774e6eb40ebef185e436" -> "sha256:0513683b88dda688c9edf34dc9be65bdac66dddd04e0c17b91fda9f8b2b98685" [label=""];
  "sha256:0513683b88dda688c9edf34dc9be65bdac66dddd04e0c17b91fda9f8b2b98685" -> "sha256:b15e1387f8c3656ec115ddcf33c0b22b473abd780e8b5aeaf4dca8b9bfeeab4c" [label=""];
}

