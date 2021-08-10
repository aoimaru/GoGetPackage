[app/sources/199830274.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:c09115bdfa5d44febac1aa99ddd7c244833fbef601c2480cc7d69bc3d15950b1" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:e8b1a283bb6a44450404237e10539eba29671150749ae498c518dde26a6fc950" [label="mkdir{path=/app}" shape="note"];
  "sha256:c60ac2bf41e6b34485a36ff1bd4784f45b18aa9fc4efbc89d5f5991a1fce3a7a" [label="sha256:c60ac2bf41e6b34485a36ff1bd4784f45b18aa9fc4efbc89d5f5991a1fce3a7a" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:c09115bdfa5d44febac1aa99ddd7c244833fbef601c2480cc7d69bc3d15950b1" [label=""];
  "sha256:c09115bdfa5d44febac1aa99ddd7c244833fbef601c2480cc7d69bc3d15950b1" -> "sha256:e8b1a283bb6a44450404237e10539eba29671150749ae498c518dde26a6fc950" [label=""];
  "sha256:e8b1a283bb6a44450404237e10539eba29671150749ae498c518dde26a6fc950" -> "sha256:c60ac2bf41e6b34485a36ff1bd4784f45b18aa9fc4efbc89d5f5991a1fce3a7a" [label=""];
}

