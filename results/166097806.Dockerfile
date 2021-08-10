[app/sources/166097806.Dockerfile]
digraph {
  "sha256:8d8b60b62ecebb8386eb2473140effa0b9d68d98f3f326255e7bdb4012bc1c3b" [label="docker-image://docker.io/library/ruby:2.6.2" shape="ellipse"];
  "sha256:3ad93acf8d1162e2282118f4582d81529fc91f57e71d4d1e41547cdcef3a4479" [label="/bin/sh -c apt-get update && apt-get install -y build-essential libpq-dev" shape="box"];
  "sha256:91841fd360e46d4e011ae80a7d4fedea1cd6f1086a0ca58d1eafb04a64e74d5c" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_10.x | bash -" shape="box"];
  "sha256:5a490efccae1286330840f90db321758ed73091430a6983bf1824ed6ecd8ba6f" [label="/bin/sh -c apt-get update && apt-get install -y nodejs" shape="box"];
  "sha256:d4dca36c376bdbcad95b2203f432f2143aee038111fcc1f140cbe96064501a48" [label="/bin/sh -c curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -" shape="box"];
  "sha256:9bb93eb0bcecb927486c5d83a34564805a46458831f64783a8a5a8eea8b85978" [label="/bin/sh -c echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | tee /etc/apt/sources.list.d/yarn.list" shape="box"];
  "sha256:a03128b82acf659af688cfcb9349a71179824611570f61bd534a74c130433a56" [label="/bin/sh -c apt-get update && apt-get install -y yarn" shape="box"];
  "sha256:4a4d22bd2093660080230045f47aa87bc7055516928cfe8aab5f03a0fac54bda" [label="/bin/sh -c mkdir -p /wheel" shape="box"];
  "sha256:65f554468157f24ed2c1a31e2e5bf1788d17c19d16a2a525af19467ab101d715" [label="mkdir{path=/wheel}" shape="note"];
  "sha256:f93fa8944b19568cdb0d001ae9f38e15b4aa40fbec968fb892ceb0d313b689ce" [label="local://context" shape="ellipse"];
  "sha256:386174fb0457630cd86b43fb036feed82374e73a38bdfe1682397d007ff5c575" [label="copy{src=/, dest=/wheel}" shape="note"];
  "sha256:75f6050edb51db1f8a27a26231527a23e0ee471c4f1b5649ee21c82b5966be1e" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:67b49164fd6f5c46fa17718f4a022ed6aea8198b233b3f735b59636c3e364899" [label="sha256:67b49164fd6f5c46fa17718f4a022ed6aea8198b233b3f735b59636c3e364899" shape="plaintext"];
  "sha256:8d8b60b62ecebb8386eb2473140effa0b9d68d98f3f326255e7bdb4012bc1c3b" -> "sha256:3ad93acf8d1162e2282118f4582d81529fc91f57e71d4d1e41547cdcef3a4479" [label=""];
  "sha256:3ad93acf8d1162e2282118f4582d81529fc91f57e71d4d1e41547cdcef3a4479" -> "sha256:91841fd360e46d4e011ae80a7d4fedea1cd6f1086a0ca58d1eafb04a64e74d5c" [label=""];
  "sha256:91841fd360e46d4e011ae80a7d4fedea1cd6f1086a0ca58d1eafb04a64e74d5c" -> "sha256:5a490efccae1286330840f90db321758ed73091430a6983bf1824ed6ecd8ba6f" [label=""];
  "sha256:5a490efccae1286330840f90db321758ed73091430a6983bf1824ed6ecd8ba6f" -> "sha256:d4dca36c376bdbcad95b2203f432f2143aee038111fcc1f140cbe96064501a48" [label=""];
  "sha256:d4dca36c376bdbcad95b2203f432f2143aee038111fcc1f140cbe96064501a48" -> "sha256:9bb93eb0bcecb927486c5d83a34564805a46458831f64783a8a5a8eea8b85978" [label=""];
  "sha256:9bb93eb0bcecb927486c5d83a34564805a46458831f64783a8a5a8eea8b85978" -> "sha256:a03128b82acf659af688cfcb9349a71179824611570f61bd534a74c130433a56" [label=""];
  "sha256:a03128b82acf659af688cfcb9349a71179824611570f61bd534a74c130433a56" -> "sha256:4a4d22bd2093660080230045f47aa87bc7055516928cfe8aab5f03a0fac54bda" [label=""];
  "sha256:4a4d22bd2093660080230045f47aa87bc7055516928cfe8aab5f03a0fac54bda" -> "sha256:65f554468157f24ed2c1a31e2e5bf1788d17c19d16a2a525af19467ab101d715" [label=""];
  "sha256:65f554468157f24ed2c1a31e2e5bf1788d17c19d16a2a525af19467ab101d715" -> "sha256:386174fb0457630cd86b43fb036feed82374e73a38bdfe1682397d007ff5c575" [label=""];
  "sha256:f93fa8944b19568cdb0d001ae9f38e15b4aa40fbec968fb892ceb0d313b689ce" -> "sha256:386174fb0457630cd86b43fb036feed82374e73a38bdfe1682397d007ff5c575" [label=""];
  "sha256:386174fb0457630cd86b43fb036feed82374e73a38bdfe1682397d007ff5c575" -> "sha256:75f6050edb51db1f8a27a26231527a23e0ee471c4f1b5649ee21c82b5966be1e" [label=""];
  "sha256:75f6050edb51db1f8a27a26231527a23e0ee471c4f1b5649ee21c82b5966be1e" -> "sha256:67b49164fd6f5c46fa17718f4a022ed6aea8198b233b3f735b59636c3e364899" [label=""];
}

