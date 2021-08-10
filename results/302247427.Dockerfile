[app/sources/302247427.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:60af0e5b4025c6f0b04971a1ff6d812c90d713955f60d609ffbb8d0aa647cfad" [label="local://context" shape="ellipse"];
  "sha256:9f1a3c7a632c6a67ca81e40059ec661264d44bbfd91f436c643a119748f523dc" [label="copy{src=/*.war, dest=/app.war}" shape="note"];
  "sha256:733ea3f67f345d49812e6b7fed31fcc489f732e88d4984170cfbd96069b75471" [label="sha256:733ea3f67f345d49812e6b7fed31fcc489f732e88d4984170cfbd96069b75471" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:9f1a3c7a632c6a67ca81e40059ec661264d44bbfd91f436c643a119748f523dc" [label=""];
  "sha256:60af0e5b4025c6f0b04971a1ff6d812c90d713955f60d609ffbb8d0aa647cfad" -> "sha256:9f1a3c7a632c6a67ca81e40059ec661264d44bbfd91f436c643a119748f523dc" [label=""];
  "sha256:9f1a3c7a632c6a67ca81e40059ec661264d44bbfd91f436c643a119748f523dc" -> "sha256:733ea3f67f345d49812e6b7fed31fcc489f732e88d4984170cfbd96069b75471" [label=""];
}

