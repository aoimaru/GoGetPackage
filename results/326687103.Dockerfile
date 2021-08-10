[app/sources/326687103.Dockerfile]
digraph {
  "sha256:b03f214267b4e79befa6fe394c7d27496b574d051f3745f5e7a22b23621f51c9" [label="docker-image://docker.io/library/java:alpine" shape="ellipse"];
  "sha256:16f144b4ae278de584acf8a87c3ee36bbb76d9552f64a3fa2de88406db118565" [label="local://context" shape="ellipse"];
  "sha256:3585897a9dcff6aaa34e4f7fa6d1ea2d8ac3238cff038ed1b5645e7e452d76c0" [label="copy{src=/authentication-server-0.0.1-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:f293cf04bcb50f41d6e6b42a8d756d687de667b09ff33f3edafd3f24e81df776" [label="sha256:f293cf04bcb50f41d6e6b42a8d756d687de667b09ff33f3edafd3f24e81df776" shape="plaintext"];
  "sha256:b03f214267b4e79befa6fe394c7d27496b574d051f3745f5e7a22b23621f51c9" -> "sha256:3585897a9dcff6aaa34e4f7fa6d1ea2d8ac3238cff038ed1b5645e7e452d76c0" [label=""];
  "sha256:16f144b4ae278de584acf8a87c3ee36bbb76d9552f64a3fa2de88406db118565" -> "sha256:3585897a9dcff6aaa34e4f7fa6d1ea2d8ac3238cff038ed1b5645e7e452d76c0" [label=""];
  "sha256:3585897a9dcff6aaa34e4f7fa6d1ea2d8ac3238cff038ed1b5645e7e452d76c0" -> "sha256:f293cf04bcb50f41d6e6b42a8d756d687de667b09ff33f3edafd3f24e81df776" [label=""];
}

