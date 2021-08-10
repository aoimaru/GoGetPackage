[app/sources/329503674.Dockerfile]
digraph {
  "sha256:9253cd05a33d32be7d1d5eb12d0e63575ef6a65ff23a66aec9f22faa18d199f0" [label="docker-image://docker.io/library/postgres:9.6.3-alpine" shape="ellipse"];
  "sha256:4b05d4576fb0d243f817a7a8218b5db6ee191522f150b9df8783490934a79743" [label="local://context" shape="ellipse"];
  "sha256:60febd92fd43a498c0f03ee023b4f0d5edd4e6680b565f5d91bf27399743ae46" [label="copy{src=/docker/postgres/docker-entrypoint-initdb.d/**, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:94531e78e5a976e492315a7b46a74b5eee48a74216f729509d3ee1c5ba9249cc" [label="copy{src=/docker/postgres/db-dumps/**, dest=/db-dumps/}" shape="note"];
  "sha256:2a489bd2a7a4b03cd096203aa02bb3dec67866e2c42560a5dcd607ce98673d18" [label="sha256:2a489bd2a7a4b03cd096203aa02bb3dec67866e2c42560a5dcd607ce98673d18" shape="plaintext"];
  "sha256:9253cd05a33d32be7d1d5eb12d0e63575ef6a65ff23a66aec9f22faa18d199f0" -> "sha256:60febd92fd43a498c0f03ee023b4f0d5edd4e6680b565f5d91bf27399743ae46" [label=""];
  "sha256:4b05d4576fb0d243f817a7a8218b5db6ee191522f150b9df8783490934a79743" -> "sha256:60febd92fd43a498c0f03ee023b4f0d5edd4e6680b565f5d91bf27399743ae46" [label=""];
  "sha256:60febd92fd43a498c0f03ee023b4f0d5edd4e6680b565f5d91bf27399743ae46" -> "sha256:94531e78e5a976e492315a7b46a74b5eee48a74216f729509d3ee1c5ba9249cc" [label=""];
  "sha256:4b05d4576fb0d243f817a7a8218b5db6ee191522f150b9df8783490934a79743" -> "sha256:94531e78e5a976e492315a7b46a74b5eee48a74216f729509d3ee1c5ba9249cc" [label=""];
  "sha256:94531e78e5a976e492315a7b46a74b5eee48a74216f729509d3ee1c5ba9249cc" -> "sha256:2a489bd2a7a4b03cd096203aa02bb3dec67866e2c42560a5dcd607ce98673d18" [label=""];
}

