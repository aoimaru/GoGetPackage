[app/sources/301928785.Dockerfile]
digraph {
  "sha256:b4df4f1a7aab78c4f4acbd206576aac48b7aa5639aa32945151627d8fcd60cd2" [label="local://context" shape="ellipse"];
  "sha256:faf75aeac590245d773385294b1dbf1679d56090cb31b8a2e4c2e67938acbae0" [label="docker-image://docker.io/library/registry:2.6.2" shape="ellipse"];
  "sha256:81578abad802872d3eee5f143533bd155fe9b96b629b655a8c39fa993d6c2e36" [label="copy{src=/custom-entrypoint.sh, dest=/custom-entrypoint.sh}" shape="note"];
  "sha256:b3d194e31dd6106fabd6e4f1bd85125a65243984ce6f9bad31420bbc025e8c09" [label="sha256:b3d194e31dd6106fabd6e4f1bd85125a65243984ce6f9bad31420bbc025e8c09" shape="plaintext"];
  "sha256:faf75aeac590245d773385294b1dbf1679d56090cb31b8a2e4c2e67938acbae0" -> "sha256:81578abad802872d3eee5f143533bd155fe9b96b629b655a8c39fa993d6c2e36" [label=""];
  "sha256:b4df4f1a7aab78c4f4acbd206576aac48b7aa5639aa32945151627d8fcd60cd2" -> "sha256:81578abad802872d3eee5f143533bd155fe9b96b629b655a8c39fa993d6c2e36" [label=""];
  "sha256:81578abad802872d3eee5f143533bd155fe9b96b629b655a8c39fa993d6c2e36" -> "sha256:b3d194e31dd6106fabd6e4f1bd85125a65243984ce6f9bad31420bbc025e8c09" [label=""];
}

