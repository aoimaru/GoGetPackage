[app/sources/298030883.Dockerfile]
digraph {
  "sha256:07e605a74f976154830f36c13b2d38d3900144362ea4a3bb4e623bfe0b40ed77" [label="local://context" shape="ellipse"];
  "sha256:e2c09379e676679eb29e9eb4efe7fe36dc6ecd1607bb433cfaa045840222b99e" [label="docker-image://docker.io/library/nginx:1.7" shape="ellipse"];
  "sha256:58d32056437694a1a17615f624f54074ac3420c50a5b8e8a511e5cb76af2bc83" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:1dac2212b8b3dd0936c0111e47ffaadadde22f3d29b08c3e4ef1f04a87910684" [label="copy{src=/registry.conf, dest=/etc/nginx/conf.d/registry.conf}" shape="note"];
  "sha256:32494e2cafb1ed9c5718474cbf6e1ec0ea18c2ec9b347a323d1f8eb5edd00160" [label="copy{src=/docker-registry.conf, dest=/etc/nginx/docker-registry.conf}" shape="note"];
  "sha256:68896b010531760ddec27966ec8e0b2e515f460c27bc26a093c6554cc4ab4354" [label="copy{src=/docker-registry-v2.conf, dest=/etc/nginx/docker-registry-v2.conf}" shape="note"];
  "sha256:b87164ddb6a018966a7a74cc351f2b45dd41bed0428cbc84e24036c5072e1679" [label="sha256:b87164ddb6a018966a7a74cc351f2b45dd41bed0428cbc84e24036c5072e1679" shape="plaintext"];
  "sha256:e2c09379e676679eb29e9eb4efe7fe36dc6ecd1607bb433cfaa045840222b99e" -> "sha256:58d32056437694a1a17615f624f54074ac3420c50a5b8e8a511e5cb76af2bc83" [label=""];
  "sha256:07e605a74f976154830f36c13b2d38d3900144362ea4a3bb4e623bfe0b40ed77" -> "sha256:58d32056437694a1a17615f624f54074ac3420c50a5b8e8a511e5cb76af2bc83" [label=""];
  "sha256:58d32056437694a1a17615f624f54074ac3420c50a5b8e8a511e5cb76af2bc83" -> "sha256:1dac2212b8b3dd0936c0111e47ffaadadde22f3d29b08c3e4ef1f04a87910684" [label=""];
  "sha256:07e605a74f976154830f36c13b2d38d3900144362ea4a3bb4e623bfe0b40ed77" -> "sha256:1dac2212b8b3dd0936c0111e47ffaadadde22f3d29b08c3e4ef1f04a87910684" [label=""];
  "sha256:1dac2212b8b3dd0936c0111e47ffaadadde22f3d29b08c3e4ef1f04a87910684" -> "sha256:32494e2cafb1ed9c5718474cbf6e1ec0ea18c2ec9b347a323d1f8eb5edd00160" [label=""];
  "sha256:07e605a74f976154830f36c13b2d38d3900144362ea4a3bb4e623bfe0b40ed77" -> "sha256:32494e2cafb1ed9c5718474cbf6e1ec0ea18c2ec9b347a323d1f8eb5edd00160" [label=""];
  "sha256:32494e2cafb1ed9c5718474cbf6e1ec0ea18c2ec9b347a323d1f8eb5edd00160" -> "sha256:68896b010531760ddec27966ec8e0b2e515f460c27bc26a093c6554cc4ab4354" [label=""];
  "sha256:07e605a74f976154830f36c13b2d38d3900144362ea4a3bb4e623bfe0b40ed77" -> "sha256:68896b010531760ddec27966ec8e0b2e515f460c27bc26a093c6554cc4ab4354" [label=""];
  "sha256:68896b010531760ddec27966ec8e0b2e515f460c27bc26a093c6554cc4ab4354" -> "sha256:b87164ddb6a018966a7a74cc351f2b45dd41bed0428cbc84e24036c5072e1679" [label=""];
}

