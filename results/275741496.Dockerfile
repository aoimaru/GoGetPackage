[app/sources/275741496.Dockerfile]
digraph {
  "sha256:713cc05ac7af5f629eca10bf4e6806f1183e39dc9977c208778225db356ab26c" [label="docker-image://docker.io/library/node:6-alpine" shape="ellipse"];
  "sha256:0461575536074244855d012a7681515cb0b5b63be70c01d012fb7eb13a41ad7a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:ef367ce0c4a4cc2fc1a9fe1befe15bcb3e0c24b91ea58dc990bd729def0b0bc9" [label="local://context" shape="ellipse"];
  "sha256:b7bbdacdf5d520b27eb48661d799bd5e369200fd0b783b2c99a2387eb4322918" [label="copy{src=/package.json, dest=/usr/src/app/},copy{src=/npm-shrinkwrap.json*, dest=/usr/src/app/}" shape="note"];
  "sha256:364ca15af71e1b7df3e5e53be2115c3b723ed8893d4615da7f9f7e3378ab6959" [label="/bin/sh -c npm install --production --silent && mv node_modules ../" shape="box"];
  "sha256:34aea2d681c25aba8351124c8fe1b0675af626f86c64198870c9e02575b45983" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:efb59ec549cf2c5fdef72674c144c28fd072e3fd16fcc53e2a820b8c52c9bb6c" [label="sha256:efb59ec549cf2c5fdef72674c144c28fd072e3fd16fcc53e2a820b8c52c9bb6c" shape="plaintext"];
  "sha256:713cc05ac7af5f629eca10bf4e6806f1183e39dc9977c208778225db356ab26c" -> "sha256:0461575536074244855d012a7681515cb0b5b63be70c01d012fb7eb13a41ad7a" [label=""];
  "sha256:0461575536074244855d012a7681515cb0b5b63be70c01d012fb7eb13a41ad7a" -> "sha256:b7bbdacdf5d520b27eb48661d799bd5e369200fd0b783b2c99a2387eb4322918" [label=""];
  "sha256:ef367ce0c4a4cc2fc1a9fe1befe15bcb3e0c24b91ea58dc990bd729def0b0bc9" -> "sha256:b7bbdacdf5d520b27eb48661d799bd5e369200fd0b783b2c99a2387eb4322918" [label=""];
  "sha256:b7bbdacdf5d520b27eb48661d799bd5e369200fd0b783b2c99a2387eb4322918" -> "sha256:364ca15af71e1b7df3e5e53be2115c3b723ed8893d4615da7f9f7e3378ab6959" [label=""];
  "sha256:364ca15af71e1b7df3e5e53be2115c3b723ed8893d4615da7f9f7e3378ab6959" -> "sha256:34aea2d681c25aba8351124c8fe1b0675af626f86c64198870c9e02575b45983" [label=""];
  "sha256:ef367ce0c4a4cc2fc1a9fe1befe15bcb3e0c24b91ea58dc990bd729def0b0bc9" -> "sha256:34aea2d681c25aba8351124c8fe1b0675af626f86c64198870c9e02575b45983" [label=""];
  "sha256:34aea2d681c25aba8351124c8fe1b0675af626f86c64198870c9e02575b45983" -> "sha256:efb59ec549cf2c5fdef72674c144c28fd072e3fd16fcc53e2a820b8c52c9bb6c" [label=""];
}

