[app/sources/264116953.Dockerfile]
digraph {
  "sha256:fa082392b30e7ee62336eb20def62c970fe7ee8ae721c6f38aaa17cff1e9fdf6" [label="local://context" shape="ellipse"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:c09115bdfa5d44febac1aa99ddd7c244833fbef601c2480cc7d69bc3d15950b1" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:56925b27771a5313d154750f8a08ca5c807cf2c9e60fd00cdf770058cf3dec35" [label="copy{src=/ch12-cloud-discovery-1.0.0-SNAPSHOT.jar, dest=/app/app.jar}" shape="note"];
  "sha256:095f3a8dde99ac35b2aada632df1662bf2b2888c57d09867ffcb46f45db43c37" [label="copy{src=/runboot.sh, dest=/app/}" shape="note"];
  "sha256:69e41642fbd9639898669dbdcb03fb3031e4488def3a3bfc3bfb6b1443b68c4a" [label="/bin/sh -c bash -c 'touch /app/app.jar'" shape="box"];
  "sha256:4114612743c8037ba57d0e5375380c89d05c4426b6ac62246073dc2a45258427" [label="mkdir{path=/app}" shape="note"];
  "sha256:73b69b5208c3d700299e3e7fe7fe8298a92f78e4d617e68e4449d87a577bece0" [label="/bin/sh -c chmod a+x runboot.sh" shape="box"];
  "sha256:35b618c0127121197ff9a1a98ff9d947da8948aa96a8d03f05a894be7c8a7af5" [label="sha256:35b618c0127121197ff9a1a98ff9d947da8948aa96a8d03f05a894be7c8a7af5" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:c09115bdfa5d44febac1aa99ddd7c244833fbef601c2480cc7d69bc3d15950b1" [label=""];
  "sha256:c09115bdfa5d44febac1aa99ddd7c244833fbef601c2480cc7d69bc3d15950b1" -> "sha256:56925b27771a5313d154750f8a08ca5c807cf2c9e60fd00cdf770058cf3dec35" [label=""];
  "sha256:fa082392b30e7ee62336eb20def62c970fe7ee8ae721c6f38aaa17cff1e9fdf6" -> "sha256:56925b27771a5313d154750f8a08ca5c807cf2c9e60fd00cdf770058cf3dec35" [label=""];
  "sha256:56925b27771a5313d154750f8a08ca5c807cf2c9e60fd00cdf770058cf3dec35" -> "sha256:095f3a8dde99ac35b2aada632df1662bf2b2888c57d09867ffcb46f45db43c37" [label=""];
  "sha256:fa082392b30e7ee62336eb20def62c970fe7ee8ae721c6f38aaa17cff1e9fdf6" -> "sha256:095f3a8dde99ac35b2aada632df1662bf2b2888c57d09867ffcb46f45db43c37" [label=""];
  "sha256:095f3a8dde99ac35b2aada632df1662bf2b2888c57d09867ffcb46f45db43c37" -> "sha256:69e41642fbd9639898669dbdcb03fb3031e4488def3a3bfc3bfb6b1443b68c4a" [label=""];
  "sha256:69e41642fbd9639898669dbdcb03fb3031e4488def3a3bfc3bfb6b1443b68c4a" -> "sha256:4114612743c8037ba57d0e5375380c89d05c4426b6ac62246073dc2a45258427" [label=""];
  "sha256:4114612743c8037ba57d0e5375380c89d05c4426b6ac62246073dc2a45258427" -> "sha256:73b69b5208c3d700299e3e7fe7fe8298a92f78e4d617e68e4449d87a577bece0" [label=""];
  "sha256:73b69b5208c3d700299e3e7fe7fe8298a92f78e4d617e68e4449d87a577bece0" -> "sha256:35b618c0127121197ff9a1a98ff9d947da8948aa96a8d03f05a894be7c8a7af5" [label=""];
}

