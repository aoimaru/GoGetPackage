[app/sources/218947102.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:fba28f6e907193d0010c85568e41971912a82330b483a3cb7b6800c919476e6e" [label="/bin/sh -c apt-get update && apt-get install -y curl libgmp10 && apt-get clean" shape="box"];
  "sha256:c15ec38084b41410b32cc4e15323e40172c9eced04a69505863c8eea6df8f1e2" [label="/bin/sh -c mkdir /opt/dynamoEventStore && curl -L https://github.com/adbrowne/DynamoEventStore/releases/download/v0.0.4/web > /opt/dynamoEventStore/web && chmod +x /opt/dynamoEventStore/web" shape="box"];
  "sha256:75a47e3ea0b4a0e6ac5e6a96bf4af698197405e9348e81d3659762b073062f9d" [label="mkdir{path=/opt/dynamoEventStore}" shape="note"];
  "sha256:78cc9a54333640c9b08bc068866937e35489608455f6e064c4cc051bec6d9a9b" [label="sha256:78cc9a54333640c9b08bc068866937e35489608455f6e064c4cc051bec6d9a9b" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:fba28f6e907193d0010c85568e41971912a82330b483a3cb7b6800c919476e6e" [label=""];
  "sha256:fba28f6e907193d0010c85568e41971912a82330b483a3cb7b6800c919476e6e" -> "sha256:c15ec38084b41410b32cc4e15323e40172c9eced04a69505863c8eea6df8f1e2" [label=""];
  "sha256:c15ec38084b41410b32cc4e15323e40172c9eced04a69505863c8eea6df8f1e2" -> "sha256:75a47e3ea0b4a0e6ac5e6a96bf4af698197405e9348e81d3659762b073062f9d" [label=""];
  "sha256:75a47e3ea0b4a0e6ac5e6a96bf4af698197405e9348e81d3659762b073062f9d" -> "sha256:78cc9a54333640c9b08bc068866937e35489608455f6e064c4cc051bec6d9a9b" [label=""];
}

