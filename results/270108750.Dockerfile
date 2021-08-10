[app/sources/270108750.Dockerfile]
digraph {
  "sha256:b03f214267b4e79befa6fe394c7d27496b574d051f3745f5e7a22b23621f51c9" [label="docker-image://docker.io/library/java:alpine" shape="ellipse"];
  "sha256:e5b4a8e66470e3271a396cf9aeed865ea7efc37c0585c60a9254a7b181eae8c7" [label="local://context" shape="ellipse"];
  "sha256:281f377235324b7d0b0fa6de4614b8c487c95102e4218fbbdd358ecab44e3bdc" [label="copy{src=/organization-0.0.1-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:202d993e8bc57c12ff38ca07ea2796f0f65b309148a8eb0462f1f0d23c45ee55" [label="sha256:202d993e8bc57c12ff38ca07ea2796f0f65b309148a8eb0462f1f0d23c45ee55" shape="plaintext"];
  "sha256:b03f214267b4e79befa6fe394c7d27496b574d051f3745f5e7a22b23621f51c9" -> "sha256:281f377235324b7d0b0fa6de4614b8c487c95102e4218fbbdd358ecab44e3bdc" [label=""];
  "sha256:e5b4a8e66470e3271a396cf9aeed865ea7efc37c0585c60a9254a7b181eae8c7" -> "sha256:281f377235324b7d0b0fa6de4614b8c487c95102e4218fbbdd358ecab44e3bdc" [label=""];
  "sha256:281f377235324b7d0b0fa6de4614b8c487c95102e4218fbbdd358ecab44e3bdc" -> "sha256:202d993e8bc57c12ff38ca07ea2796f0f65b309148a8eb0462f1f0d23c45ee55" [label=""];
}

