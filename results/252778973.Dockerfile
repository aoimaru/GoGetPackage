[app/sources/252778973.Dockerfile]
digraph {
  "sha256:705341126eb6c97315e80b8a3ffb78c4284c9726b0a81ac57676a9ff0e847f2f" [label="local://context" shape="ellipse"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:slim" shape="ellipse"];
  "sha256:574749c60ac3a9c74e1825dcb22a7d6172c4885eb36fdb72c569b50fefc03034" [label="copy{src=/bin/bs-graphql, dest=/usr/local/bin/bs-graphql}" shape="note"];
  "sha256:fad05e4bb2ed6d79bd700c9fa6aa24c308952dcbeaddfb9a03365cff70e367c5" [label="copy{src=/target/burningswell-graphql.jar, dest=/usr/share/java/burningswell-graphql.jar}" shape="note"];
  "sha256:458052433f9af6210c7b92860e62d0ac3919c60518bd48d5f9e9b0ba5fd271fe" [label="sha256:458052433f9af6210c7b92860e62d0ac3919c60518bd48d5f9e9b0ba5fd271fe" shape="plaintext"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" -> "sha256:574749c60ac3a9c74e1825dcb22a7d6172c4885eb36fdb72c569b50fefc03034" [label=""];
  "sha256:705341126eb6c97315e80b8a3ffb78c4284c9726b0a81ac57676a9ff0e847f2f" -> "sha256:574749c60ac3a9c74e1825dcb22a7d6172c4885eb36fdb72c569b50fefc03034" [label=""];
  "sha256:574749c60ac3a9c74e1825dcb22a7d6172c4885eb36fdb72c569b50fefc03034" -> "sha256:fad05e4bb2ed6d79bd700c9fa6aa24c308952dcbeaddfb9a03365cff70e367c5" [label=""];
  "sha256:705341126eb6c97315e80b8a3ffb78c4284c9726b0a81ac57676a9ff0e847f2f" -> "sha256:fad05e4bb2ed6d79bd700c9fa6aa24c308952dcbeaddfb9a03365cff70e367c5" [label=""];
  "sha256:fad05e4bb2ed6d79bd700c9fa6aa24c308952dcbeaddfb9a03365cff70e367c5" -> "sha256:458052433f9af6210c7b92860e62d0ac3919c60518bd48d5f9e9b0ba5fd271fe" [label=""];
}

