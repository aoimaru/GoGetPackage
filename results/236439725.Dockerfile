[app/sources/236439725.Dockerfile]
digraph {
  "sha256:cee1261a3f1078b7d5826c96137cb60032d5fdda7199dcf38281fc93ec961ed9" [label="docker-image://docker.io/library/postgres:9.3" shape="ellipse"];
  "sha256:188b42c9af9845b92ec318a6cbe1f600f02219842b7d0e1fb761edd7df3fc325" [label="local://context" shape="ellipse"];
  "sha256:f1103fe87108cdb0662f21624e956d8556212203897aab446b862bf071293a1b" [label="copy{src=/ready.sh, dest=/}" shape="note"];
  "sha256:d2654d3419b8b3484b4a72a7ad379b2ab59c1e0a750c411790eb6f282ccc29ce" [label="copy{src=/initdb.d, dest=/docker-entrypoint-initdb.d}" shape="note"];
  "sha256:d6438df95f52fb4de6f6262c72e1ba2d902263ae2ef023eac3fdb90bee83fdf6" [label="sha256:d6438df95f52fb4de6f6262c72e1ba2d902263ae2ef023eac3fdb90bee83fdf6" shape="plaintext"];
  "sha256:cee1261a3f1078b7d5826c96137cb60032d5fdda7199dcf38281fc93ec961ed9" -> "sha256:f1103fe87108cdb0662f21624e956d8556212203897aab446b862bf071293a1b" [label=""];
  "sha256:188b42c9af9845b92ec318a6cbe1f600f02219842b7d0e1fb761edd7df3fc325" -> "sha256:f1103fe87108cdb0662f21624e956d8556212203897aab446b862bf071293a1b" [label=""];
  "sha256:f1103fe87108cdb0662f21624e956d8556212203897aab446b862bf071293a1b" -> "sha256:d2654d3419b8b3484b4a72a7ad379b2ab59c1e0a750c411790eb6f282ccc29ce" [label=""];
  "sha256:188b42c9af9845b92ec318a6cbe1f600f02219842b7d0e1fb761edd7df3fc325" -> "sha256:d2654d3419b8b3484b4a72a7ad379b2ab59c1e0a750c411790eb6f282ccc29ce" [label=""];
  "sha256:d2654d3419b8b3484b4a72a7ad379b2ab59c1e0a750c411790eb6f282ccc29ce" -> "sha256:d6438df95f52fb4de6f6262c72e1ba2d902263ae2ef023eac3fdb90bee83fdf6" [label=""];
}

