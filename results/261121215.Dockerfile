[app/sources/261121215.Dockerfile]
digraph {
  "sha256:3dc61ac99dfab6c2275fa6250fb984c3726a0f52c0e2ff0561149c8249ac4d51" [label="docker-image://docker.io/library/ruby:alpine@sha256:75ecc385bec12bf384fe2f54cc5d237a431b3c2b38480ca6f918e2729ab3ad02" shape="ellipse"];
  "sha256:6f3bee48188e0faf4e31f9b1030361dc13ea580eb68221efb894b93702b4f439" [label="mkdir{path=/workdir}" shape="note"];
  "sha256:f923dcbef580263140b852b084da62d3f7bed48385470548918195aea4f952ce" [label="/bin/sh -c gem install puppet-lint" shape="box"];
  "sha256:304d0420524b7c046ae82edf0d8e1951697054d68b12bd3081d3453e62474ffe" [label="sha256:304d0420524b7c046ae82edf0d8e1951697054d68b12bd3081d3453e62474ffe" shape="plaintext"];
  "sha256:3dc61ac99dfab6c2275fa6250fb984c3726a0f52c0e2ff0561149c8249ac4d51" -> "sha256:6f3bee48188e0faf4e31f9b1030361dc13ea580eb68221efb894b93702b4f439" [label=""];
  "sha256:6f3bee48188e0faf4e31f9b1030361dc13ea580eb68221efb894b93702b4f439" -> "sha256:f923dcbef580263140b852b084da62d3f7bed48385470548918195aea4f952ce" [label=""];
  "sha256:f923dcbef580263140b852b084da62d3f7bed48385470548918195aea4f952ce" -> "sha256:304d0420524b7c046ae82edf0d8e1951697054d68b12bd3081d3453e62474ffe" [label=""];
}

