[app/sources/384659473.Dockerfile]
digraph {
  "sha256:55ea83770a06f6eed0972bd44934fb5053e51a818da44da3a0907223ba9ceeb8" [label="docker-image://docker.io/library/tomato_service:latest" shape="ellipse"];
  "sha256:ee20ff16da731501ba3c4145bcd584eddb84f8903c98aed5dcd347e388b82922" [label="local://context" shape="ellipse"];
  "sha256:0d0bea6efc1e58b415cd99fff54e84aedadf3558714bcb6e435f2d7efc8349c2" [label="copy{src=/code, dest=/code/}" shape="note"];
  "sha256:b299777fede3076fbd0110410ec53570ddec647d0243d6d48c58ccc17e02fe36" [label="sha256:b299777fede3076fbd0110410ec53570ddec647d0243d6d48c58ccc17e02fe36" shape="plaintext"];
  "sha256:55ea83770a06f6eed0972bd44934fb5053e51a818da44da3a0907223ba9ceeb8" -> "sha256:0d0bea6efc1e58b415cd99fff54e84aedadf3558714bcb6e435f2d7efc8349c2" [label=""];
  "sha256:ee20ff16da731501ba3c4145bcd584eddb84f8903c98aed5dcd347e388b82922" -> "sha256:0d0bea6efc1e58b415cd99fff54e84aedadf3558714bcb6e435f2d7efc8349c2" [label=""];
  "sha256:0d0bea6efc1e58b415cd99fff54e84aedadf3558714bcb6e435f2d7efc8349c2" -> "sha256:b299777fede3076fbd0110410ec53570ddec647d0243d6d48c58ccc17e02fe36" [label=""];
}

