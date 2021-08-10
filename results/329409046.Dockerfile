[app/sources/329409046.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:84e558d05c88271993276f0d457f917ed9d008eac67211c5fce3b03b45719ef8" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:d81a98567990e2d8f268e2ded0a5cf0b98084a0b65d8c50fc9c872189ef6ee41" [label="mkdir{path=/app}" shape="note"];
  "sha256:c2f00d9cded50cea96da23dfd0525b93fc11720d8e20c7750cad29e366b4dbb6" [label="local://context" shape="ellipse"];
  "sha256:07f7bd217ec33cc6e7e326c6825cedb7b916d894e48f529150a925e4fd702551" [label="copy{src=/node_modules, dest=/app/node_modules}" shape="note"];
  "sha256:00f751f0607feff5a2f402a22c4f56e67c21c86fff94da98c007033d1a2c1170" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:be95c18b05bc6c640ba8de436c6efe382815fadd303839338dc4308da76bfa23" [label="copy{src=/rest-service-nodejs.js, dest=/app/}" shape="note"];
  "sha256:da5059d96da95bdcb8a455f457c8f6d82923315f024d6859b2ad26d008811428" [label="sha256:da5059d96da95bdcb8a455f457c8f6d82923315f024d6859b2ad26d008811428" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:84e558d05c88271993276f0d457f917ed9d008eac67211c5fce3b03b45719ef8" [label=""];
  "sha256:84e558d05c88271993276f0d457f917ed9d008eac67211c5fce3b03b45719ef8" -> "sha256:d81a98567990e2d8f268e2ded0a5cf0b98084a0b65d8c50fc9c872189ef6ee41" [label=""];
  "sha256:d81a98567990e2d8f268e2ded0a5cf0b98084a0b65d8c50fc9c872189ef6ee41" -> "sha256:07f7bd217ec33cc6e7e326c6825cedb7b916d894e48f529150a925e4fd702551" [label=""];
  "sha256:c2f00d9cded50cea96da23dfd0525b93fc11720d8e20c7750cad29e366b4dbb6" -> "sha256:07f7bd217ec33cc6e7e326c6825cedb7b916d894e48f529150a925e4fd702551" [label=""];
  "sha256:07f7bd217ec33cc6e7e326c6825cedb7b916d894e48f529150a925e4fd702551" -> "sha256:00f751f0607feff5a2f402a22c4f56e67c21c86fff94da98c007033d1a2c1170" [label=""];
  "sha256:c2f00d9cded50cea96da23dfd0525b93fc11720d8e20c7750cad29e366b4dbb6" -> "sha256:00f751f0607feff5a2f402a22c4f56e67c21c86fff94da98c007033d1a2c1170" [label=""];
  "sha256:00f751f0607feff5a2f402a22c4f56e67c21c86fff94da98c007033d1a2c1170" -> "sha256:be95c18b05bc6c640ba8de436c6efe382815fadd303839338dc4308da76bfa23" [label=""];
  "sha256:c2f00d9cded50cea96da23dfd0525b93fc11720d8e20c7750cad29e366b4dbb6" -> "sha256:be95c18b05bc6c640ba8de436c6efe382815fadd303839338dc4308da76bfa23" [label=""];
  "sha256:be95c18b05bc6c640ba8de436c6efe382815fadd303839338dc4308da76bfa23" -> "sha256:da5059d96da95bdcb8a455f457c8f6d82923315f024d6859b2ad26d008811428" [label=""];
}

