[app/sources/252780698.Dockerfile]
digraph {
  "sha256:23b28e777e382a24c7addb4fec1f248f84ae1c9689214e6c8dc97a3286eeeffb" [label="docker-image://docker.io/fstab/aws-cli:latest" shape="ellipse"];
  "sha256:764382d8b1dfe833bd5bb77df9d338b99d5a5c43468426fa1257a21795692709" [label="/bin/sh -c apt-get update && apt-get install -y curl git" shape="box"];
  "sha256:839fb5d44fb2a750c0e2e5419729aebc8b1aa9e38b1aad68414dd91b896f0767" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_7.x | bash -" shape="box"];
  "sha256:9f0dfe36f9020620b4137b1e58c99210c78bb620a55eea708fd6ae027e989f71" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:faccbc128164ab7471fdfc8b6005cb8220815c1f20b2774d045521c4b24bca65" [label="/bin/sh -c mkdir /build && chown aws /build" shape="box"];
  "sha256:ec3992496e1afb8b92765fa0e40b9ce049272429acc20276de0503a668260482" [label="sha256:ec3992496e1afb8b92765fa0e40b9ce049272429acc20276de0503a668260482" shape="plaintext"];
  "sha256:23b28e777e382a24c7addb4fec1f248f84ae1c9689214e6c8dc97a3286eeeffb" -> "sha256:764382d8b1dfe833bd5bb77df9d338b99d5a5c43468426fa1257a21795692709" [label=""];
  "sha256:764382d8b1dfe833bd5bb77df9d338b99d5a5c43468426fa1257a21795692709" -> "sha256:839fb5d44fb2a750c0e2e5419729aebc8b1aa9e38b1aad68414dd91b896f0767" [label=""];
  "sha256:839fb5d44fb2a750c0e2e5419729aebc8b1aa9e38b1aad68414dd91b896f0767" -> "sha256:9f0dfe36f9020620b4137b1e58c99210c78bb620a55eea708fd6ae027e989f71" [label=""];
  "sha256:9f0dfe36f9020620b4137b1e58c99210c78bb620a55eea708fd6ae027e989f71" -> "sha256:faccbc128164ab7471fdfc8b6005cb8220815c1f20b2774d045521c4b24bca65" [label=""];
  "sha256:faccbc128164ab7471fdfc8b6005cb8220815c1f20b2774d045521c4b24bca65" -> "sha256:ec3992496e1afb8b92765fa0e40b9ce049272429acc20276de0503a668260482" [label=""];
}

