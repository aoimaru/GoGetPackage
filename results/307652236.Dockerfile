[app/sources/307652236.Dockerfile]
digraph {
  "sha256:d9788a3c9ea9f6ada03aed7f5a5f5baa00c0fd9df825254b1a57d4f6c572eec4" [label="docker-image://docker.io/microsoft/aspnetcore:1.0" shape="ellipse"];
  "sha256:902f84b521c3af0ea9395a7be09dd3843f39981b05bf094b2c1889729e76d1e9" [label="mkdir{path=/app}" shape="note"];
  "sha256:df504c872d0fdf8b41ac3aac873096418ebf51a5a8d669da8e28a06dd72c7b61" [label="local://context" shape="ellipse"];
  "sha256:3b72318c8dd0ace130ee41585cd76db6cda52f0a446f1053a42e16ed167ae963" [label="copy{src=/obj/Docker/publish, dest=/app/}" shape="note"];
  "sha256:9f3f5fcedd701eb2c38b72e68c6ccdbad5c9745981d92a0323ea461017c14f68" [label="sha256:9f3f5fcedd701eb2c38b72e68c6ccdbad5c9745981d92a0323ea461017c14f68" shape="plaintext"];
  "sha256:d9788a3c9ea9f6ada03aed7f5a5f5baa00c0fd9df825254b1a57d4f6c572eec4" -> "sha256:902f84b521c3af0ea9395a7be09dd3843f39981b05bf094b2c1889729e76d1e9" [label=""];
  "sha256:902f84b521c3af0ea9395a7be09dd3843f39981b05bf094b2c1889729e76d1e9" -> "sha256:3b72318c8dd0ace130ee41585cd76db6cda52f0a446f1053a42e16ed167ae963" [label=""];
  "sha256:df504c872d0fdf8b41ac3aac873096418ebf51a5a8d669da8e28a06dd72c7b61" -> "sha256:3b72318c8dd0ace130ee41585cd76db6cda52f0a446f1053a42e16ed167ae963" [label=""];
  "sha256:3b72318c8dd0ace130ee41585cd76db6cda52f0a446f1053a42e16ed167ae963" -> "sha256:9f3f5fcedd701eb2c38b72e68c6ccdbad5c9745981d92a0323ea461017c14f68" [label=""];
}

