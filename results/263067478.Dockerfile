[app/sources/263067478.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:98c02bae22a8f335847fe21259df80d2acd16f05a444d59fca008fe88d4c561c" [label="mkdir{path=/app}" shape="note"];
  "sha256:02c306fc14d89b9fcb11131cbcf76f4806999888e8c0bf7fb53440cbee4b962f" [label="/bin/sh -c apt-get update -y && apt-get install -yq curl sudo && curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && apt-get install -yq nodejs python2.7 make build-essential gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget" shape="box"];
  "sha256:1c2ef5be27efa207e5d5ba27d04868edff082944faae00ce78857a12affed967" [label="local://context" shape="ellipse"];
  "sha256:8b9916b949b90107af5caff6cdc9f0318f16311b1a5381b36b5a8660f8f949ae" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:60a08ae56c79d7c8806f376bcdb1a859d3539b4dcb364bb35c6fabe08bd2ec11" [label="/bin/sh -c npm install" shape="box"];
  "sha256:c17cd49ee9eef5cab6fe0e2c84324cac6cbcf7543b4b2372b80732cc0f20b7ba" [label="/bin/sh -c echo \"{\\\"args\\\": [\\\"--no-sandbox\\\"]}\" > tests/launch.json" shape="box"];
  "sha256:f649d2d5a39005bb7a3fe7a3926938beb23cf58951851bc008a0415db4f00dcb" [label="sha256:f649d2d5a39005bb7a3fe7a3926938beb23cf58951851bc008a0415db4f00dcb" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:98c02bae22a8f335847fe21259df80d2acd16f05a444d59fca008fe88d4c561c" [label=""];
  "sha256:98c02bae22a8f335847fe21259df80d2acd16f05a444d59fca008fe88d4c561c" -> "sha256:02c306fc14d89b9fcb11131cbcf76f4806999888e8c0bf7fb53440cbee4b962f" [label=""];
  "sha256:02c306fc14d89b9fcb11131cbcf76f4806999888e8c0bf7fb53440cbee4b962f" -> "sha256:8b9916b949b90107af5caff6cdc9f0318f16311b1a5381b36b5a8660f8f949ae" [label=""];
  "sha256:1c2ef5be27efa207e5d5ba27d04868edff082944faae00ce78857a12affed967" -> "sha256:8b9916b949b90107af5caff6cdc9f0318f16311b1a5381b36b5a8660f8f949ae" [label=""];
  "sha256:8b9916b949b90107af5caff6cdc9f0318f16311b1a5381b36b5a8660f8f949ae" -> "sha256:60a08ae56c79d7c8806f376bcdb1a859d3539b4dcb364bb35c6fabe08bd2ec11" [label=""];
  "sha256:60a08ae56c79d7c8806f376bcdb1a859d3539b4dcb364bb35c6fabe08bd2ec11" -> "sha256:c17cd49ee9eef5cab6fe0e2c84324cac6cbcf7543b4b2372b80732cc0f20b7ba" [label=""];
  "sha256:c17cd49ee9eef5cab6fe0e2c84324cac6cbcf7543b4b2372b80732cc0f20b7ba" -> "sha256:f649d2d5a39005bb7a3fe7a3926938beb23cf58951851bc008a0415db4f00dcb" [label=""];
}

