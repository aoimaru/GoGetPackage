[app/sources/262463017.Dockerfile]
digraph {
  "sha256:385488d73015b8ba4ce1ff5ddda9ab152c38ba903097bfd435e0769e587daf6b" [label="docker-image://docker.io/sath89/oracle-ee-11g-base:latest" shape="ellipse"];
  "sha256:85dcdf82076e741d3974ed2ea621159a8cdbd604921ae848c54b00848ac7f7a2" [label="local://context" shape="ellipse"];
  "sha256:f1c8b1a0332640d9105c37d9ff37909cc55de6c6e753fefb52495e78606b9599" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:ff11b8d856c80d5153b053039aee93241befc15b1db158c3b59cd715f1edaef1" [label="sha256:ff11b8d856c80d5153b053039aee93241befc15b1db158c3b59cd715f1edaef1" shape="plaintext"];
  "sha256:385488d73015b8ba4ce1ff5ddda9ab152c38ba903097bfd435e0769e587daf6b" -> "sha256:f1c8b1a0332640d9105c37d9ff37909cc55de6c6e753fefb52495e78606b9599" [label=""];
  "sha256:85dcdf82076e741d3974ed2ea621159a8cdbd604921ae848c54b00848ac7f7a2" -> "sha256:f1c8b1a0332640d9105c37d9ff37909cc55de6c6e753fefb52495e78606b9599" [label=""];
  "sha256:f1c8b1a0332640d9105c37d9ff37909cc55de6c6e753fefb52495e78606b9599" -> "sha256:ff11b8d856c80d5153b053039aee93241befc15b1db158c3b59cd715f1edaef1" [label=""];
}

