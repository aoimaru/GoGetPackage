[app/sources/352134537.Dockerfile]
digraph {
  "sha256:3347fd5b7984b8947660eec67ad3ef7e1cf8bf53c02795274ae2a4d56b52aa51" [label="docker-image://docker.io/msaraiva/elixir:1.1.1" shape="ellipse"];
  "sha256:02dbe8463db66e6e6721786a220bd3bd77bdf2a007d858111f40ffc932913a7a" [label="/bin/sh -c apk --update add erlang-crypto erlang-syntax-tools erlang-parsetools erlang-inets erlang-ssl erlang-public-key erlang-eunit     erlang-asn1 erlang-sasl erlang-erl-interface erlang-dev wget git &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:0e59c5fcaf52bc924e204782cf6f109fd301344e1cb024ee85f889195ae16e80" [label="/bin/sh -c mix local.hex --force &&     mix local.rebar --force" shape="box"];
  "sha256:26d1edf33d6ec16cef90085b60f6959188fc5a6d19dbd24d571c66e2459e6335" [label="sha256:26d1edf33d6ec16cef90085b60f6959188fc5a6d19dbd24d571c66e2459e6335" shape="plaintext"];
  "sha256:3347fd5b7984b8947660eec67ad3ef7e1cf8bf53c02795274ae2a4d56b52aa51" -> "sha256:02dbe8463db66e6e6721786a220bd3bd77bdf2a007d858111f40ffc932913a7a" [label=""];
  "sha256:02dbe8463db66e6e6721786a220bd3bd77bdf2a007d858111f40ffc932913a7a" -> "sha256:0e59c5fcaf52bc924e204782cf6f109fd301344e1cb024ee85f889195ae16e80" [label=""];
  "sha256:0e59c5fcaf52bc924e204782cf6f109fd301344e1cb024ee85f889195ae16e80" -> "sha256:26d1edf33d6ec16cef90085b60f6959188fc5a6d19dbd24d571c66e2459e6335" [label=""];
}

