[app/sources/367108270.Dockerfile]
digraph {
  "sha256:85a3c3f4c23500ad9b2d85b3090c758dae3ba79a522a357060cf96b6aa72bfaa" [label="docker-image://docker.io/library/node:6.12" shape="ellipse"];
  "sha256:15cda22a4a44ba74edb9d06593aa3ab6ca75b5460c205667f6547d61f658cfd1" [label="local://context" shape="ellipse"];
  "sha256:493de1c177e9eacd4f20ae8f04e5b69334e34faa1140577861863ac2f8084baa" [label="copy{src=/run_tests.sh, dest=/app/}" shape="note"];
  "sha256:27373ffa7069c325584ecdfbda498db887cc1a78f0f49d5c6b7cd33e3a3515d0" [label="copy{src=/urls.ts, dest=/app/}" shape="note"];
  "sha256:8c334d10f18b0789b7427595c230d3938fa814568144deeee16f0b874afa3bb6" [label="mkdir{path=/app}" shape="note"];
  "sha256:954054f3f8a9b4306fa7389a4cc0037a0e63885c04da4a125ffc002a73c0ad73" [label="sha256:954054f3f8a9b4306fa7389a4cc0037a0e63885c04da4a125ffc002a73c0ad73" shape="plaintext"];
  "sha256:85a3c3f4c23500ad9b2d85b3090c758dae3ba79a522a357060cf96b6aa72bfaa" -> "sha256:493de1c177e9eacd4f20ae8f04e5b69334e34faa1140577861863ac2f8084baa" [label=""];
  "sha256:15cda22a4a44ba74edb9d06593aa3ab6ca75b5460c205667f6547d61f658cfd1" -> "sha256:493de1c177e9eacd4f20ae8f04e5b69334e34faa1140577861863ac2f8084baa" [label=""];
  "sha256:493de1c177e9eacd4f20ae8f04e5b69334e34faa1140577861863ac2f8084baa" -> "sha256:27373ffa7069c325584ecdfbda498db887cc1a78f0f49d5c6b7cd33e3a3515d0" [label=""];
  "sha256:15cda22a4a44ba74edb9d06593aa3ab6ca75b5460c205667f6547d61f658cfd1" -> "sha256:27373ffa7069c325584ecdfbda498db887cc1a78f0f49d5c6b7cd33e3a3515d0" [label=""];
  "sha256:27373ffa7069c325584ecdfbda498db887cc1a78f0f49d5c6b7cd33e3a3515d0" -> "sha256:8c334d10f18b0789b7427595c230d3938fa814568144deeee16f0b874afa3bb6" [label=""];
  "sha256:8c334d10f18b0789b7427595c230d3938fa814568144deeee16f0b874afa3bb6" -> "sha256:954054f3f8a9b4306fa7389a4cc0037a0e63885c04da4a125ffc002a73c0ad73" [label=""];
}

