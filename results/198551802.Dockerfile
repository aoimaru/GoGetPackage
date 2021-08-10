[app/sources/198551802.Dockerfile]
digraph {
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" [label="docker-image://docker.io/library/mysql:5.7" shape="ellipse"];
  "sha256:ed048de5804ace28c330c60cae78a417060c34721783d490832e6ecad21bac6c" [label="local://context" shape="ellipse"];
  "sha256:ca0dff225a655ac5efda82e74153adbcabba7a01a725bb06ab69c132e3c2d96e" [label="copy{src=/mysql.cnf, dest=/etc/mysql/conf.d/}" shape="note"];
  "sha256:dac5a749e54b7569a9b6343a2f15c17333e76887b788c6795a0bbcf1217ebd9d" [label="copy{src=/inventory.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:f8d241477de3785e38fa78e73eafec4916bfbcb7661abd56bd9d23d5a60ce7bf" [label="sha256:f8d241477de3785e38fa78e73eafec4916bfbcb7661abd56bd9d23d5a60ce7bf" shape="plaintext"];
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" -> "sha256:ca0dff225a655ac5efda82e74153adbcabba7a01a725bb06ab69c132e3c2d96e" [label=""];
  "sha256:ed048de5804ace28c330c60cae78a417060c34721783d490832e6ecad21bac6c" -> "sha256:ca0dff225a655ac5efda82e74153adbcabba7a01a725bb06ab69c132e3c2d96e" [label=""];
  "sha256:ca0dff225a655ac5efda82e74153adbcabba7a01a725bb06ab69c132e3c2d96e" -> "sha256:dac5a749e54b7569a9b6343a2f15c17333e76887b788c6795a0bbcf1217ebd9d" [label=""];
  "sha256:ed048de5804ace28c330c60cae78a417060c34721783d490832e6ecad21bac6c" -> "sha256:dac5a749e54b7569a9b6343a2f15c17333e76887b788c6795a0bbcf1217ebd9d" [label=""];
  "sha256:dac5a749e54b7569a9b6343a2f15c17333e76887b788c6795a0bbcf1217ebd9d" -> "sha256:f8d241477de3785e38fa78e73eafec4916bfbcb7661abd56bd9d23d5a60ce7bf" [label=""];
}

