[app/sources/276184854.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:42efd1fbc4656885621ca3a2b22ecfd717dda02b3516d1f754c8ce2d4ace1191" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:aca238de907d0aa7afd268931e3cf6dcde508962cdb734ffff3036fff84e5236" [label="mkdir{path=/code}" shape="note"];
  "sha256:d3bc1781137065c618db9fb7d1574a9d007a54a467e3f093d5a20f1a09725ab7" [label="local://context" shape="ellipse"];
  "sha256:852ab0c1b338db4d08e9312c2c509d3ca75406054b99711cb787e981f6919c02" [label="copy{src=/package-lock.json, dest=/code/}" shape="note"];
  "sha256:1b6b8e02635be4cde47da32e4a0dbd61696cba1cd7bd0b4fc7692d0c370775de" [label="copy{src=/package.json, dest=/code/}" shape="note"];
  "sha256:3bdf879b13106504bafa0d609a8492645d55dc645fb83c151dc6263b14d656f5" [label="/bin/sh -c apt-get -qq update     && apt-get -qq install netcat     && apt-get clean && rm -rf /var/lib/apt/lists /tmp/* /var/tmp/*     && npm install -q" shape="box"];
  "sha256:94e8177d74ca27179e10600426c48c695655bee698e7e712f3767a8500859292" [label="sha256:94e8177d74ca27179e10600426c48c695655bee698e7e712f3767a8500859292" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:42efd1fbc4656885621ca3a2b22ecfd717dda02b3516d1f754c8ce2d4ace1191" [label=""];
  "sha256:42efd1fbc4656885621ca3a2b22ecfd717dda02b3516d1f754c8ce2d4ace1191" -> "sha256:aca238de907d0aa7afd268931e3cf6dcde508962cdb734ffff3036fff84e5236" [label=""];
  "sha256:aca238de907d0aa7afd268931e3cf6dcde508962cdb734ffff3036fff84e5236" -> "sha256:852ab0c1b338db4d08e9312c2c509d3ca75406054b99711cb787e981f6919c02" [label=""];
  "sha256:d3bc1781137065c618db9fb7d1574a9d007a54a467e3f093d5a20f1a09725ab7" -> "sha256:852ab0c1b338db4d08e9312c2c509d3ca75406054b99711cb787e981f6919c02" [label=""];
  "sha256:852ab0c1b338db4d08e9312c2c509d3ca75406054b99711cb787e981f6919c02" -> "sha256:1b6b8e02635be4cde47da32e4a0dbd61696cba1cd7bd0b4fc7692d0c370775de" [label=""];
  "sha256:d3bc1781137065c618db9fb7d1574a9d007a54a467e3f093d5a20f1a09725ab7" -> "sha256:1b6b8e02635be4cde47da32e4a0dbd61696cba1cd7bd0b4fc7692d0c370775de" [label=""];
  "sha256:1b6b8e02635be4cde47da32e4a0dbd61696cba1cd7bd0b4fc7692d0c370775de" -> "sha256:3bdf879b13106504bafa0d609a8492645d55dc645fb83c151dc6263b14d656f5" [label=""];
  "sha256:3bdf879b13106504bafa0d609a8492645d55dc645fb83c151dc6263b14d656f5" -> "sha256:94e8177d74ca27179e10600426c48c695655bee698e7e712f3767a8500859292" [label=""];
}

