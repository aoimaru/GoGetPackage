[app/sources/238031688.Dockerfile]
digraph {
  "sha256:7f6a48407b4c182abefe4ed12f2e51c60b5327efccaf708fdf134367906089a3" [label="docker-image://docker.io/library/elixir:1.4.0" shape="ellipse"];
  "sha256:9bf87c10049750a9d8fb28872fc45cd765adcd4407e463727eef670b02b2c739" [label="/bin/sh -c /usr/local/bin/mix local.hex --force &&     /usr/local/bin/mix local.rebar --force &&     /usr/local/bin/mix hex.info" shape="box"];
  "sha256:447a4d86378ba7ddcf7eb1dc3473498a04d43c41dc924010db4ba5364ab49a70" [label="mkdir{path=/app}" shape="note"];
  "sha256:976d61df8da901e6a4a629ead6f47258f4bb35c2370343a362c482eb25d87716" [label="local://context" shape="ellipse"];
  "sha256:2929b54968d780c9be45a38d5b1aa43d8a320a248b0393d4212d8b8613ab32d4" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:ead16adbcbad091705b7bff26fd7ea489bf01f10700e3f26237e1d7584e16fb3" [label="/bin/sh -c mix deps.get" shape="box"];
  "sha256:96915cb01ff21447987cb7eacfa0e004c76885b9014a6425c6bc4817ad25094c" [label="sha256:96915cb01ff21447987cb7eacfa0e004c76885b9014a6425c6bc4817ad25094c" shape="plaintext"];
  "sha256:7f6a48407b4c182abefe4ed12f2e51c60b5327efccaf708fdf134367906089a3" -> "sha256:9bf87c10049750a9d8fb28872fc45cd765adcd4407e463727eef670b02b2c739" [label=""];
  "sha256:9bf87c10049750a9d8fb28872fc45cd765adcd4407e463727eef670b02b2c739" -> "sha256:447a4d86378ba7ddcf7eb1dc3473498a04d43c41dc924010db4ba5364ab49a70" [label=""];
  "sha256:447a4d86378ba7ddcf7eb1dc3473498a04d43c41dc924010db4ba5364ab49a70" -> "sha256:2929b54968d780c9be45a38d5b1aa43d8a320a248b0393d4212d8b8613ab32d4" [label=""];
  "sha256:976d61df8da901e6a4a629ead6f47258f4bb35c2370343a362c482eb25d87716" -> "sha256:2929b54968d780c9be45a38d5b1aa43d8a320a248b0393d4212d8b8613ab32d4" [label=""];
  "sha256:2929b54968d780c9be45a38d5b1aa43d8a320a248b0393d4212d8b8613ab32d4" -> "sha256:ead16adbcbad091705b7bff26fd7ea489bf01f10700e3f26237e1d7584e16fb3" [label=""];
  "sha256:ead16adbcbad091705b7bff26fd7ea489bf01f10700e3f26237e1d7584e16fb3" -> "sha256:96915cb01ff21447987cb7eacfa0e004c76885b9014a6425c6bc4817ad25094c" [label=""];
}

