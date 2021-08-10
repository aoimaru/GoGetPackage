[app/sources/289913524.Dockerfile]
digraph {
  "sha256:c30647a036b4912a62e085241288011ca97c7a5378b6fc82ed459876e595bbd1" [label="docker-image://docker.io/library/php:7-apache" shape="ellipse"];
  "sha256:e96509a4144f655c0a0a278b639290c796297a48330792ee743ea9bcbdebc69e" [label="local://context" shape="ellipse"];
  "sha256:c822e67a50a9dde3fe5877186583141aacd61505b5a995cba740cb76747428da" [label="copy{src=/, dest=/var/www/html/}" shape="note"];
  "sha256:3c2ae7c529e19c4fbaee09ef0b88e23fefb3c3af73b8358d1aff08587a0d74fa" [label="sha256:3c2ae7c529e19c4fbaee09ef0b88e23fefb3c3af73b8358d1aff08587a0d74fa" shape="plaintext"];
  "sha256:c30647a036b4912a62e085241288011ca97c7a5378b6fc82ed459876e595bbd1" -> "sha256:c822e67a50a9dde3fe5877186583141aacd61505b5a995cba740cb76747428da" [label=""];
  "sha256:e96509a4144f655c0a0a278b639290c796297a48330792ee743ea9bcbdebc69e" -> "sha256:c822e67a50a9dde3fe5877186583141aacd61505b5a995cba740cb76747428da" [label=""];
  "sha256:c822e67a50a9dde3fe5877186583141aacd61505b5a995cba740cb76747428da" -> "sha256:3c2ae7c529e19c4fbaee09ef0b88e23fefb3c3af73b8358d1aff08587a0d74fa" [label=""];
}

