[app/sources/280011054.Dockerfile]
digraph {
  "sha256:c04f2d34ed5004bf3d90d3961914dcc4ce0f1774a212235259c75c01c1a51478" [label="local://context" shape="ellipse"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:0d1dd24d9e2256ff791a7298cb91240e65fff14eaa5f148eef06c0934c7ffd8c" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:f83a58d488f57c2227e2104a2ced5047b7a46c4655c681e63dd6f9ad30efbcd2" [label="mkdir{path=/app}" shape="note"];
  "sha256:843f1222b257744d793db96718930356835e60dfe16da5763da19ad79638809c" [label="/bin/sh -c pip install pipenv" shape="box"];
  "sha256:bc8f9999381ff6b3fc2a64c69c900944b39591fec3329e9683de732e2a75b9f4" [label="/bin/sh -c pipenv install --system --deploy" shape="box"];
  "sha256:7821aa8e0b5319d312b0ac1ea120bdd732b5fbe7ab3698b6d84934de527306f0" [label="sha256:7821aa8e0b5319d312b0ac1ea120bdd732b5fbe7ab3698b6d84934de527306f0" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:0d1dd24d9e2256ff791a7298cb91240e65fff14eaa5f148eef06c0934c7ffd8c" [label=""];
  "sha256:c04f2d34ed5004bf3d90d3961914dcc4ce0f1774a212235259c75c01c1a51478" -> "sha256:0d1dd24d9e2256ff791a7298cb91240e65fff14eaa5f148eef06c0934c7ffd8c" [label=""];
  "sha256:0d1dd24d9e2256ff791a7298cb91240e65fff14eaa5f148eef06c0934c7ffd8c" -> "sha256:f83a58d488f57c2227e2104a2ced5047b7a46c4655c681e63dd6f9ad30efbcd2" [label=""];
  "sha256:f83a58d488f57c2227e2104a2ced5047b7a46c4655c681e63dd6f9ad30efbcd2" -> "sha256:843f1222b257744d793db96718930356835e60dfe16da5763da19ad79638809c" [label=""];
  "sha256:843f1222b257744d793db96718930356835e60dfe16da5763da19ad79638809c" -> "sha256:bc8f9999381ff6b3fc2a64c69c900944b39591fec3329e9683de732e2a75b9f4" [label=""];
  "sha256:bc8f9999381ff6b3fc2a64c69c900944b39591fec3329e9683de732e2a75b9f4" -> "sha256:7821aa8e0b5319d312b0ac1ea120bdd732b5fbe7ab3698b6d84934de527306f0" [label=""];
}

