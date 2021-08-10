[app/sources/258648139.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:b55a883ed5dcceafe32804ee804ac8b2feeb637b79270db2d80334a1a98dfdc9" [label="/bin/sh -c apt-get -qy install python-seqdiag make curl" shape="box"];
  "sha256:da8aae8823850e570084caf4b983201a854334557a162f04b24bdf1dcd295455" [label="mkdir{path=/diagrams}" shape="note"];
  "sha256:eecb80c0ee3efab230706cfb873409161c4cede5f4d114e3f0cfaa7968041e3e" [label="/bin/sh -c curl -sLo DroidSansMono.ttf https://googlefontdirectory.googlecode.com/hg/apache/droidsansmono/DroidSansMono.ttf" shape="box"];
  "sha256:9fd81a6462b2ae2ba72708d41f21f0a4d9dd9969a6e678c629a41acd6145c4eb" [label="local://context" shape="ellipse"];
  "sha256:225abbf5113b33e4625259957f70a90fe2163b6864a583e4759dcc5f2d565639" [label="copy{src=/, dest=/diagrams}" shape="note"];
  "sha256:efcbda7f3f128e47d921c99ce421c04b7cf74c3fe9dd9c8f79a8de315c96ecf2" [label="sha256:efcbda7f3f128e47d921c99ce421c04b7cf74c3fe9dd9c8f79a8de315c96ecf2" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" [label=""];
  "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" -> "sha256:b55a883ed5dcceafe32804ee804ac8b2feeb637b79270db2d80334a1a98dfdc9" [label=""];
  "sha256:b55a883ed5dcceafe32804ee804ac8b2feeb637b79270db2d80334a1a98dfdc9" -> "sha256:da8aae8823850e570084caf4b983201a854334557a162f04b24bdf1dcd295455" [label=""];
  "sha256:da8aae8823850e570084caf4b983201a854334557a162f04b24bdf1dcd295455" -> "sha256:eecb80c0ee3efab230706cfb873409161c4cede5f4d114e3f0cfaa7968041e3e" [label=""];
  "sha256:eecb80c0ee3efab230706cfb873409161c4cede5f4d114e3f0cfaa7968041e3e" -> "sha256:225abbf5113b33e4625259957f70a90fe2163b6864a583e4759dcc5f2d565639" [label=""];
  "sha256:9fd81a6462b2ae2ba72708d41f21f0a4d9dd9969a6e678c629a41acd6145c4eb" -> "sha256:225abbf5113b33e4625259957f70a90fe2163b6864a583e4759dcc5f2d565639" [label=""];
  "sha256:225abbf5113b33e4625259957f70a90fe2163b6864a583e4759dcc5f2d565639" -> "sha256:efcbda7f3f128e47d921c99ce421c04b7cf74c3fe9dd9c8f79a8de315c96ecf2" [label=""];
}

