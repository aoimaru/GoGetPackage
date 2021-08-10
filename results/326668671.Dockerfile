[app/sources/326668671.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:78fa7305d4aab7ac83a4ea348fce592cf7d954d4a690dd62746d8ab89649d010" [label="local://context" shape="ellipse"];
  "sha256:b760339af3d2f16e88e46a829cd8210fde6ec799525ed23eb36fb6e8b9cd5bcd" [label="copy{src=/_output/hostpathplugin, dest=/hostpathplugin}" shape="note"];
  "sha256:8afd34696098d147ccf31c7da6492027f840bc791938af264ee49e6bc60b3dea" [label="sha256:8afd34696098d147ccf31c7da6492027f840bc791938af264ee49e6bc60b3dea" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:b760339af3d2f16e88e46a829cd8210fde6ec799525ed23eb36fb6e8b9cd5bcd" [label=""];
  "sha256:78fa7305d4aab7ac83a4ea348fce592cf7d954d4a690dd62746d8ab89649d010" -> "sha256:b760339af3d2f16e88e46a829cd8210fde6ec799525ed23eb36fb6e8b9cd5bcd" [label=""];
  "sha256:b760339af3d2f16e88e46a829cd8210fde6ec799525ed23eb36fb6e8b9cd5bcd" -> "sha256:8afd34696098d147ccf31c7da6492027f840bc791938af264ee49e6bc60b3dea" [label=""];
}

