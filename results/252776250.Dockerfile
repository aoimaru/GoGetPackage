[app/sources/252776250.Dockerfile]
digraph {
  "sha256:b3ad7f78eb5344674aa86c5f248cc19b26f9e11f297398bf7ba8c97ee4383278" [label="docker-image://docker.io/library/python:alpine" shape="ellipse"];
  "sha256:ca0623ebffc1dbc9644cc42ef1b8222cf4aa9e49a96730c918732bf11c87dc6f" [label="/bin/sh -c pip install yamllint" shape="box"];
  "sha256:408d9dcbccfb0e5eabde189cf6f57a3445c56b396f04eb7cd33ecb964023a10d" [label="local://context" shape="ellipse"];
  "sha256:643c3680df76d9c224e567ec7f86f6136e40b0754bcf87447e2d1fc9f31713c8" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:984907400416074387b2ad7bb7080560ba9c01089d6d7d440d0c4b09ae2e4c8b" [label="mkdir{path=/workdir}" shape="note"];
  "sha256:f79143a1f17face4f29ca5281ccb02df1216b575dfdfe088a1b761e38f5b41fb" [label="sha256:f79143a1f17face4f29ca5281ccb02df1216b575dfdfe088a1b761e38f5b41fb" shape="plaintext"];
  "sha256:b3ad7f78eb5344674aa86c5f248cc19b26f9e11f297398bf7ba8c97ee4383278" -> "sha256:ca0623ebffc1dbc9644cc42ef1b8222cf4aa9e49a96730c918732bf11c87dc6f" [label=""];
  "sha256:ca0623ebffc1dbc9644cc42ef1b8222cf4aa9e49a96730c918732bf11c87dc6f" -> "sha256:643c3680df76d9c224e567ec7f86f6136e40b0754bcf87447e2d1fc9f31713c8" [label=""];
  "sha256:408d9dcbccfb0e5eabde189cf6f57a3445c56b396f04eb7cd33ecb964023a10d" -> "sha256:643c3680df76d9c224e567ec7f86f6136e40b0754bcf87447e2d1fc9f31713c8" [label=""];
  "sha256:643c3680df76d9c224e567ec7f86f6136e40b0754bcf87447e2d1fc9f31713c8" -> "sha256:984907400416074387b2ad7bb7080560ba9c01089d6d7d440d0c4b09ae2e4c8b" [label=""];
  "sha256:984907400416074387b2ad7bb7080560ba9c01089d6d7d440d0c4b09ae2e4c8b" -> "sha256:f79143a1f17face4f29ca5281ccb02df1216b575dfdfe088a1b761e38f5b41fb" [label=""];
}

