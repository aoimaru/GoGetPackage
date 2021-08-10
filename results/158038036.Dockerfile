[app/sources/158038036.Dockerfile]
digraph {
  "sha256:e111147bf3658f3620b42e43866aa556c25156f9002051f90f302f4a672a0028" [label="docker-image://docker.io/srzzumix/googletest:latest" shape="ellipse"];
  "sha256:d3e6e2cc3d4cbce4ebf859942b9252eab9d158a9f71e3501208d2b2b0d7e1ee2" [label="/bin/sh -c echo ${VERSION} | tee image_version" shape="box"];
  "sha256:d42976c1e43e8e89280222b2e562d09e903680cf40df7ab76d86e520c2494769" [label="mkdir{path=/iutest}" shape="note"];
  "sha256:cdafc3aae8bd7f09fbe3353123f8dae770bc13052ac6a19ad6930f22cd1af80d" [label="sha256:cdafc3aae8bd7f09fbe3353123f8dae770bc13052ac6a19ad6930f22cd1af80d" shape="plaintext"];
  "sha256:e111147bf3658f3620b42e43866aa556c25156f9002051f90f302f4a672a0028" -> "sha256:d3e6e2cc3d4cbce4ebf859942b9252eab9d158a9f71e3501208d2b2b0d7e1ee2" [label=""];
  "sha256:d3e6e2cc3d4cbce4ebf859942b9252eab9d158a9f71e3501208d2b2b0d7e1ee2" -> "sha256:d42976c1e43e8e89280222b2e562d09e903680cf40df7ab76d86e520c2494769" [label=""];
  "sha256:d42976c1e43e8e89280222b2e562d09e903680cf40df7ab76d86e520c2494769" -> "sha256:cdafc3aae8bd7f09fbe3353123f8dae770bc13052ac6a19ad6930f22cd1af80d" [label=""];
}

