[app/sources/252783575.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:5c940dbf20d1a8e6aa1002abcd8ce4f98a4013c20aaca76f922469d904bdab3c" [label="/bin/sh -c apk add --no-cache git smartmontools eudev coreutils bash tmux hdparm ddrescue nodejs nodejs-npm" shape="box"];
  "sha256:0c229e24fb2c2765d557140cc69a689fdb4def7f97380c22f58b740fbfe9a4f5" [label="mkdir{path=/root/imager}" shape="note"];
  "sha256:e4b3943aaa682a0d6fab1283a4ef41d5112504a13de90e0267a37148f06572a0" [label="local://context" shape="ellipse"];
  "sha256:4e2c248e50884334beaffc72ee98a757d3012abf84a900aa5e3c29efe29031a6" [label="copy{src=/package.json, dest=/root/imager/}" shape="note"];
  "sha256:bd00c8ec21ce2cf70a86e113bee7299ffffd7cd4c1a66738f73a0362a12004ff" [label="/bin/sh -c npm install" shape="box"];
  "sha256:1e4b63c896cb46600c236a30d28f1fbf5454be424e803c9d7b592bd72f466091" [label="copy{src=/.git, dest=/root/imager/.git}" shape="note"];
  "sha256:00873915b61520d5d15c511146605379e796db10eebdc075aadfe0bbf5af0c34" [label="copy{src=/[^/]*.*, dest=/root/imager/}" shape="note"];
  "sha256:b10982df55e41e3292e450e775e1b36eb6cd706d6e38db7be04fca7990c9c177" [label="copy{src=/config, dest=/root/imager/config/}" shape="note"];
  "sha256:a615370f520a1b01a9bfe959caae31ff25a30a587e302b4a63b75aacd61bc73e" [label="copy{src=/imager, dest=/root/imager/imager/}" shape="note"];
  "sha256:6db029d6f167b6b06ae76558ea3695934f28f8b75f303b531cd4b689bf7c9e5b" [label="copy{src=/lib, dest=/root/imager/lib/}" shape="note"];
  "sha256:5821ab2c3c5a26727218594a5ba4ea0528149a4637630e9c3e4395d9f540053f" [label="copy{src=/frontend, dest=/root/imager/frontend/}" shape="note"];
  "sha256:66ed985c83e4f81daed2abd6716f8687b2306857d220dcec35490e239d1491b5" [label="/bin/sh -c ./install.sh" shape="box"];
  "sha256:4150c6101d5a1c99158f6c9209312c43c06d23002ac727d43a7d980037d85986" [label="sha256:4150c6101d5a1c99158f6c9209312c43c06d23002ac727d43a7d980037d85986" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:5c940dbf20d1a8e6aa1002abcd8ce4f98a4013c20aaca76f922469d904bdab3c" [label=""];
  "sha256:5c940dbf20d1a8e6aa1002abcd8ce4f98a4013c20aaca76f922469d904bdab3c" -> "sha256:0c229e24fb2c2765d557140cc69a689fdb4def7f97380c22f58b740fbfe9a4f5" [label=""];
  "sha256:0c229e24fb2c2765d557140cc69a689fdb4def7f97380c22f58b740fbfe9a4f5" -> "sha256:4e2c248e50884334beaffc72ee98a757d3012abf84a900aa5e3c29efe29031a6" [label=""];
  "sha256:e4b3943aaa682a0d6fab1283a4ef41d5112504a13de90e0267a37148f06572a0" -> "sha256:4e2c248e50884334beaffc72ee98a757d3012abf84a900aa5e3c29efe29031a6" [label=""];
  "sha256:4e2c248e50884334beaffc72ee98a757d3012abf84a900aa5e3c29efe29031a6" -> "sha256:bd00c8ec21ce2cf70a86e113bee7299ffffd7cd4c1a66738f73a0362a12004ff" [label=""];
  "sha256:bd00c8ec21ce2cf70a86e113bee7299ffffd7cd4c1a66738f73a0362a12004ff" -> "sha256:1e4b63c896cb46600c236a30d28f1fbf5454be424e803c9d7b592bd72f466091" [label=""];
  "sha256:e4b3943aaa682a0d6fab1283a4ef41d5112504a13de90e0267a37148f06572a0" -> "sha256:1e4b63c896cb46600c236a30d28f1fbf5454be424e803c9d7b592bd72f466091" [label=""];
  "sha256:1e4b63c896cb46600c236a30d28f1fbf5454be424e803c9d7b592bd72f466091" -> "sha256:00873915b61520d5d15c511146605379e796db10eebdc075aadfe0bbf5af0c34" [label=""];
  "sha256:e4b3943aaa682a0d6fab1283a4ef41d5112504a13de90e0267a37148f06572a0" -> "sha256:00873915b61520d5d15c511146605379e796db10eebdc075aadfe0bbf5af0c34" [label=""];
  "sha256:00873915b61520d5d15c511146605379e796db10eebdc075aadfe0bbf5af0c34" -> "sha256:b10982df55e41e3292e450e775e1b36eb6cd706d6e38db7be04fca7990c9c177" [label=""];
  "sha256:e4b3943aaa682a0d6fab1283a4ef41d5112504a13de90e0267a37148f06572a0" -> "sha256:b10982df55e41e3292e450e775e1b36eb6cd706d6e38db7be04fca7990c9c177" [label=""];
  "sha256:b10982df55e41e3292e450e775e1b36eb6cd706d6e38db7be04fca7990c9c177" -> "sha256:a615370f520a1b01a9bfe959caae31ff25a30a587e302b4a63b75aacd61bc73e" [label=""];
  "sha256:e4b3943aaa682a0d6fab1283a4ef41d5112504a13de90e0267a37148f06572a0" -> "sha256:a615370f520a1b01a9bfe959caae31ff25a30a587e302b4a63b75aacd61bc73e" [label=""];
  "sha256:a615370f520a1b01a9bfe959caae31ff25a30a587e302b4a63b75aacd61bc73e" -> "sha256:6db029d6f167b6b06ae76558ea3695934f28f8b75f303b531cd4b689bf7c9e5b" [label=""];
  "sha256:e4b3943aaa682a0d6fab1283a4ef41d5112504a13de90e0267a37148f06572a0" -> "sha256:6db029d6f167b6b06ae76558ea3695934f28f8b75f303b531cd4b689bf7c9e5b" [label=""];
  "sha256:6db029d6f167b6b06ae76558ea3695934f28f8b75f303b531cd4b689bf7c9e5b" -> "sha256:5821ab2c3c5a26727218594a5ba4ea0528149a4637630e9c3e4395d9f540053f" [label=""];
  "sha256:e4b3943aaa682a0d6fab1283a4ef41d5112504a13de90e0267a37148f06572a0" -> "sha256:5821ab2c3c5a26727218594a5ba4ea0528149a4637630e9c3e4395d9f540053f" [label=""];
  "sha256:5821ab2c3c5a26727218594a5ba4ea0528149a4637630e9c3e4395d9f540053f" -> "sha256:66ed985c83e4f81daed2abd6716f8687b2306857d220dcec35490e239d1491b5" [label=""];
  "sha256:66ed985c83e4f81daed2abd6716f8687b2306857d220dcec35490e239d1491b5" -> "sha256:4150c6101d5a1c99158f6c9209312c43c06d23002ac727d43a7d980037d85986" [label=""];
}

