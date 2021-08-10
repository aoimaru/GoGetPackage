[app/sources/159836365.Dockerfile]
digraph {
  "sha256:012478d8ec4ce482317efbfd42afff89dd85272738d9135770c7441b2f1edd14" [label="local://context" shape="ellipse"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:62bae7aa3aece3e0e7272da625c3235be52484caec514fbe88d89be767f21210" [label="mkdir{path=/home/bdd-security}" shape="note"];
  "sha256:6f63b05d9a5279eac86c3d5622b9085d3b45b33107136a3fb1587a0f60887542" [label="copy{src=/, dest=/home/bdd-security/}" shape="note"];
  "sha256:2bb6c2fd7ee09ede7a2bad05e020f4b388665544225439c2695106099e4a76e3" [label="/bin/sh -c ./gradlew buildIt" shape="box"];
  "sha256:d8f5930fbc95f37d3076c95ab2aaa7bf13c7008338bafc45ee2b455176cf880e" [label="sha256:d8f5930fbc95f37d3076c95ab2aaa7bf13c7008338bafc45ee2b455176cf880e" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:62bae7aa3aece3e0e7272da625c3235be52484caec514fbe88d89be767f21210" [label=""];
  "sha256:62bae7aa3aece3e0e7272da625c3235be52484caec514fbe88d89be767f21210" -> "sha256:6f63b05d9a5279eac86c3d5622b9085d3b45b33107136a3fb1587a0f60887542" [label=""];
  "sha256:012478d8ec4ce482317efbfd42afff89dd85272738d9135770c7441b2f1edd14" -> "sha256:6f63b05d9a5279eac86c3d5622b9085d3b45b33107136a3fb1587a0f60887542" [label=""];
  "sha256:6f63b05d9a5279eac86c3d5622b9085d3b45b33107136a3fb1587a0f60887542" -> "sha256:2bb6c2fd7ee09ede7a2bad05e020f4b388665544225439c2695106099e4a76e3" [label=""];
  "sha256:2bb6c2fd7ee09ede7a2bad05e020f4b388665544225439c2695106099e4a76e3" -> "sha256:d8f5930fbc95f37d3076c95ab2aaa7bf13c7008338bafc45ee2b455176cf880e" [label=""];
}

