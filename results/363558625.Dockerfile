[app/sources/363558625.Dockerfile]
digraph {
  "sha256:2706db4586b05cb1e6eb92650c9e5e7679c9f703f6f2b003a891f52e2c3c4fc5" [label="docker-image://docker.io/projectatomic/atomicapp:0.6.4" shape="ellipse"];
  "sha256:90c46ab4a83d2308492f5243986edc4b3c83b2c4cfe4d94bd85be4deff3a5ab6" [label="local://context" shape="ellipse"];
  "sha256:d3578d604471ec7e3d65a253086782e2802eec4a3df7e250bdeb560532c7cd31" [label="copy{src=/Nulecule, dest=/application-entity/}" shape="note"];
  "sha256:1a07bece7a72fc80d1cddb03eb399ac48df9f6c0804f8bbf78ca275ac94cf4d8" [label="copy{src=/artifacts, dest=/application-entity/artifacts/}" shape="note"];
  "sha256:2b25be3e7c68dd3a7a7bcf4dd13a7627ee171c5a3e1727e4ceb2058eac25d627" [label="sha256:2b25be3e7c68dd3a7a7bcf4dd13a7627ee171c5a3e1727e4ceb2058eac25d627" shape="plaintext"];
  "sha256:2706db4586b05cb1e6eb92650c9e5e7679c9f703f6f2b003a891f52e2c3c4fc5" -> "sha256:d3578d604471ec7e3d65a253086782e2802eec4a3df7e250bdeb560532c7cd31" [label=""];
  "sha256:90c46ab4a83d2308492f5243986edc4b3c83b2c4cfe4d94bd85be4deff3a5ab6" -> "sha256:d3578d604471ec7e3d65a253086782e2802eec4a3df7e250bdeb560532c7cd31" [label=""];
  "sha256:d3578d604471ec7e3d65a253086782e2802eec4a3df7e250bdeb560532c7cd31" -> "sha256:1a07bece7a72fc80d1cddb03eb399ac48df9f6c0804f8bbf78ca275ac94cf4d8" [label=""];
  "sha256:90c46ab4a83d2308492f5243986edc4b3c83b2c4cfe4d94bd85be4deff3a5ab6" -> "sha256:1a07bece7a72fc80d1cddb03eb399ac48df9f6c0804f8bbf78ca275ac94cf4d8" [label=""];
  "sha256:1a07bece7a72fc80d1cddb03eb399ac48df9f6c0804f8bbf78ca275ac94cf4d8" -> "sha256:2b25be3e7c68dd3a7a7bcf4dd13a7627ee171c5a3e1727e4ceb2058eac25d627" [label=""];
}

