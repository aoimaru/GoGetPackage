[app/sources/395260575.Dockerfile]
digraph {
  "sha256:0ad9707c48f170a019ec2779819325cd2a55fbaa6bc70bcd5ffcaa8d490f61a1" [label="docker-image://docker.io/monasca/base:master" shape="ellipse"];
  "sha256:f6b8ca224877c6ebd867318ad69e1c5293ce1d95a619bfec961ad8fcaea5efa9" [label="/bin/sh -c monasca --version" shape="box"];
  "sha256:27d595d1e9141444e6a131f5fcbb07e3524ff4976fe5950c9d4b39db01955896" [label="sha256:27d595d1e9141444e6a131f5fcbb07e3524ff4976fe5950c9d4b39db01955896" shape="plaintext"];
  "sha256:0ad9707c48f170a019ec2779819325cd2a55fbaa6bc70bcd5ffcaa8d490f61a1" -> "sha256:f6b8ca224877c6ebd867318ad69e1c5293ce1d95a619bfec961ad8fcaea5efa9" [label=""];
  "sha256:f6b8ca224877c6ebd867318ad69e1c5293ce1d95a619bfec961ad8fcaea5efa9" -> "sha256:27d595d1e9141444e6a131f5fcbb07e3524ff4976fe5950c9d4b39db01955896" [label=""];
}

