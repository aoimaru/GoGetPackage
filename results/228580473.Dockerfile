[app/sources/228580473.Dockerfile]
digraph {
  "sha256:d230c5f28133bd24eb3e2ff0e3ac494cb7db4bc823f30eb39fdc7203f8ca8548" [label="docker-image://docker.io/library/maven:3.5.2-jdk-8-alpine" shape="ellipse"];
  "sha256:b13503acb1d0bb7dc7fc603a835c630007ec591e1e6e01003108dbe69d22b429" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:6e8797f08a400fd289d9817a52398355f5979da9005f9ee645c654b5377a0b07" [label="sha256:6e8797f08a400fd289d9817a52398355f5979da9005f9ee645c654b5377a0b07" shape="plaintext"];
  "sha256:d230c5f28133bd24eb3e2ff0e3ac494cb7db4bc823f30eb39fdc7203f8ca8548" -> "sha256:b13503acb1d0bb7dc7fc603a835c630007ec591e1e6e01003108dbe69d22b429" [label=""];
  "sha256:b13503acb1d0bb7dc7fc603a835c630007ec591e1e6e01003108dbe69d22b429" -> "sha256:6e8797f08a400fd289d9817a52398355f5979da9005f9ee645c654b5377a0b07" [label=""];
}

