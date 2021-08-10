[app/sources/249651634.Dockerfile]
digraph {
  "sha256:9b818eba91bea20a368c1fd5d808831c8a81494a61022652e6a1d673aebd73c1" [label="local://context" shape="ellipse"];
  "sha256:9f114c89e21f2d63801ad8cd20dca56bd271d610d15ecfccbffb02f316785af1" [label="docker-image://docker.io/library/java:8-alpine" shape="ellipse"];
  "sha256:67d23542ada0ac4aab4693444e3170e3c0870a5fae5ff58b9fa98800fce5cb54" [label="copy{src=/target/uberjar/memory-hole.jar, dest=/app/memory-hole.jar}" shape="note"];
  "sha256:a57c8c7bc8b44de2ef72f1ce1e48565e3a86d25c98095c31a2e5a1dbe4ebfcf0" [label="copy{src=/entrypoint.sh, dest=/app/entrypoint.sh}" shape="note"];
  "sha256:a1894a54e5a2b77643b13492bedf515650889b9802077c2ab665a706c6cda786" [label="sha256:a1894a54e5a2b77643b13492bedf515650889b9802077c2ab665a706c6cda786" shape="plaintext"];
  "sha256:9f114c89e21f2d63801ad8cd20dca56bd271d610d15ecfccbffb02f316785af1" -> "sha256:67d23542ada0ac4aab4693444e3170e3c0870a5fae5ff58b9fa98800fce5cb54" [label=""];
  "sha256:9b818eba91bea20a368c1fd5d808831c8a81494a61022652e6a1d673aebd73c1" -> "sha256:67d23542ada0ac4aab4693444e3170e3c0870a5fae5ff58b9fa98800fce5cb54" [label=""];
  "sha256:67d23542ada0ac4aab4693444e3170e3c0870a5fae5ff58b9fa98800fce5cb54" -> "sha256:a57c8c7bc8b44de2ef72f1ce1e48565e3a86d25c98095c31a2e5a1dbe4ebfcf0" [label=""];
  "sha256:9b818eba91bea20a368c1fd5d808831c8a81494a61022652e6a1d673aebd73c1" -> "sha256:a57c8c7bc8b44de2ef72f1ce1e48565e3a86d25c98095c31a2e5a1dbe4ebfcf0" [label=""];
  "sha256:a57c8c7bc8b44de2ef72f1ce1e48565e3a86d25c98095c31a2e5a1dbe4ebfcf0" -> "sha256:a1894a54e5a2b77643b13492bedf515650889b9802077c2ab665a706c6cda786" [label=""];
}

