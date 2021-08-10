[app/sources/339068542.Dockerfile]
digraph {
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" [label="docker-image://docker.io/library/golang:1.12" shape="ellipse"];
  "sha256:4429d15933566f5cbe711300a3e1aeb1a7ab05d0b455bc7680fa55a03dfcf372" [label="local://context" shape="ellipse"];
  "sha256:738de36d625a05b3b9d4be2f943b82852fa675c51f734174391a10c67d679057" [label="copy{src=/go/arrow/Gopkg.lock, dest=/arrow/go/arrow/},copy{src=/go/arrow/Gopkg.toml, dest=/arrow/go/arrow/}" shape="note"];
  "sha256:9635549d11302ae58fd4569ec91f1f8bdf9fe08c27b11af8c7c8efe04cbeb37f" [label="mkdir{path=/arrow/go/arrow}" shape="note"];
  "sha256:25e487d6d8143692734e23d8870ee28830487a7abb4383a6711ae82de6a818ef" [label="/bin/sh -c go get -d -t -v ./..." shape="box"];
  "sha256:50c81c79a0ffc6b90b68df9d3f0f98c9ae923de16866481b71a9289180b278b6" [label="sha256:50c81c79a0ffc6b90b68df9d3f0f98c9ae923de16866481b71a9289180b278b6" shape="plaintext"];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" -> "sha256:738de36d625a05b3b9d4be2f943b82852fa675c51f734174391a10c67d679057" [label=""];
  "sha256:4429d15933566f5cbe711300a3e1aeb1a7ab05d0b455bc7680fa55a03dfcf372" -> "sha256:738de36d625a05b3b9d4be2f943b82852fa675c51f734174391a10c67d679057" [label=""];
  "sha256:738de36d625a05b3b9d4be2f943b82852fa675c51f734174391a10c67d679057" -> "sha256:9635549d11302ae58fd4569ec91f1f8bdf9fe08c27b11af8c7c8efe04cbeb37f" [label=""];
  "sha256:9635549d11302ae58fd4569ec91f1f8bdf9fe08c27b11af8c7c8efe04cbeb37f" -> "sha256:25e487d6d8143692734e23d8870ee28830487a7abb4383a6711ae82de6a818ef" [label=""];
  "sha256:25e487d6d8143692734e23d8870ee28830487a7abb4383a6711ae82de6a818ef" -> "sha256:50c81c79a0ffc6b90b68df9d3f0f98c9ae923de16866481b71a9289180b278b6" [label=""];
}

