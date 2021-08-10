[app/sources/282247621.Dockerfile]
digraph {
  "sha256:5a9aa6756865d5b1cfbbc328bd868326f2e205a348e206ba02624f9d895f52ae" [label="docker-image://docker.io/webdevops/base:ubuntu-18.04@sha256:f31dacd47060c14e02c9e7cac6b214be3e8c9254e73b4f5419b15705cc424992" shape="ellipse"];
  "sha256:5b053f72ba7c28eb6cf5b049a23053685ef33bbc5c3aa2bcd7fc79b15985159e" [label="local://context" shape="ellipse"];
  "sha256:147772204324879d20cdda7f7eef80ecd44b33ce5684b844c4008df734fa4879" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:98da2b5ba369dff846ebc010a98f20019606fdf3ae248e0f4e559aa774c8130d" [label="/bin/sh -c set -x     && apt-install         nginx     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:4c9e046563ef38d62e9b03f87b3467fcc8c1af73ca9b93ced2459b8b986ef293" [label="sha256:4c9e046563ef38d62e9b03f87b3467fcc8c1af73ca9b93ced2459b8b986ef293" shape="plaintext"];
  "sha256:5a9aa6756865d5b1cfbbc328bd868326f2e205a348e206ba02624f9d895f52ae" -> "sha256:147772204324879d20cdda7f7eef80ecd44b33ce5684b844c4008df734fa4879" [label=""];
  "sha256:5b053f72ba7c28eb6cf5b049a23053685ef33bbc5c3aa2bcd7fc79b15985159e" -> "sha256:147772204324879d20cdda7f7eef80ecd44b33ce5684b844c4008df734fa4879" [label=""];
  "sha256:147772204324879d20cdda7f7eef80ecd44b33ce5684b844c4008df734fa4879" -> "sha256:98da2b5ba369dff846ebc010a98f20019606fdf3ae248e0f4e559aa774c8130d" [label=""];
  "sha256:98da2b5ba369dff846ebc010a98f20019606fdf3ae248e0f4e559aa774c8130d" -> "sha256:4c9e046563ef38d62e9b03f87b3467fcc8c1af73ca9b93ced2459b8b986ef293" [label=""];
}

