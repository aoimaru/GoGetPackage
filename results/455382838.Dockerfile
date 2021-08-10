[app/sources/455382838.Dockerfile]
digraph {
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:slim" shape="ellipse"];
  "sha256:906dbba1d036224c236ad779a266d7ceed1a42f671e08ae0b6ee7a8e1a2ecca8" [label="local://context" shape="ellipse"];
  "sha256:4e29401756e05cfcbda328788980601f81a9567701981fafdfaaae7ac5ec0259" [label="copy{src=/factcast.jar, dest=/app.jar}" shape="note"];
  "sha256:019619eedc8e3ca6bdb55c2d95e4e822274a1605f236490be4179646b7d8728a" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:80d1ca4ef5f5ef745ad2315157f0151eb74e8f71eabb905627f154d8105acb6b" [label="sha256:80d1ca4ef5f5ef745ad2315157f0151eb74e8f71eabb905627f154d8105acb6b" shape="plaintext"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" -> "sha256:4e29401756e05cfcbda328788980601f81a9567701981fafdfaaae7ac5ec0259" [label=""];
  "sha256:906dbba1d036224c236ad779a266d7ceed1a42f671e08ae0b6ee7a8e1a2ecca8" -> "sha256:4e29401756e05cfcbda328788980601f81a9567701981fafdfaaae7ac5ec0259" [label=""];
  "sha256:4e29401756e05cfcbda328788980601f81a9567701981fafdfaaae7ac5ec0259" -> "sha256:019619eedc8e3ca6bdb55c2d95e4e822274a1605f236490be4179646b7d8728a" [label=""];
  "sha256:019619eedc8e3ca6bdb55c2d95e4e822274a1605f236490be4179646b7d8728a" -> "sha256:80d1ca4ef5f5ef745ad2315157f0151eb74e8f71eabb905627f154d8105acb6b" [label=""];
}

