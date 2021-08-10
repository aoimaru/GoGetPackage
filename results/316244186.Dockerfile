[app/sources/316244186.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:39350e29dcc45b1e405cd947f71133ab9a07997152ed28a34d9e552491272c7d" [label="local://context" shape="ellipse"];
  "sha256:1506a77004e640ce5cf9b9702c64a484260e308c38ce5906f82fafef74136198" [label="copy{src=/build/_output/bin/rethinkdb-operator, dest=/usr/local/bin/rethinkdb-operator}" shape="note"];
  "sha256:6b9a41025510c9c8e3e505e696a4afa9bd159cab1e2a1391e5a139340856401a" [label="copy{src=/build/bin, dest=/usr/local/bin}" shape="note"];
  "sha256:02f54d26e49f5e16971cd8a888e9edbbfd98f3e1b5f24a0362d375e7d5ea2351" [label="/bin/sh -c /usr/local/bin/user_setup" shape="box"];
  "sha256:dbf7f48aec5f8596708bf05c4879dd866837a1f00df2d7f2d29c4c1227b14efe" [label="sha256:dbf7f48aec5f8596708bf05c4879dd866837a1f00df2d7f2d29c4c1227b14efe" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:1506a77004e640ce5cf9b9702c64a484260e308c38ce5906f82fafef74136198" [label=""];
  "sha256:39350e29dcc45b1e405cd947f71133ab9a07997152ed28a34d9e552491272c7d" -> "sha256:1506a77004e640ce5cf9b9702c64a484260e308c38ce5906f82fafef74136198" [label=""];
  "sha256:1506a77004e640ce5cf9b9702c64a484260e308c38ce5906f82fafef74136198" -> "sha256:6b9a41025510c9c8e3e505e696a4afa9bd159cab1e2a1391e5a139340856401a" [label=""];
  "sha256:39350e29dcc45b1e405cd947f71133ab9a07997152ed28a34d9e552491272c7d" -> "sha256:6b9a41025510c9c8e3e505e696a4afa9bd159cab1e2a1391e5a139340856401a" [label=""];
  "sha256:6b9a41025510c9c8e3e505e696a4afa9bd159cab1e2a1391e5a139340856401a" -> "sha256:02f54d26e49f5e16971cd8a888e9edbbfd98f3e1b5f24a0362d375e7d5ea2351" [label=""];
  "sha256:02f54d26e49f5e16971cd8a888e9edbbfd98f3e1b5f24a0362d375e7d5ea2351" -> "sha256:dbf7f48aec5f8596708bf05c4879dd866837a1f00df2d7f2d29c4c1227b14efe" [label=""];
}

