[app/sources/222347962.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:ec30196f4eab26ff340cf4bdd0ce98403545e629f7132e0d162185cdb54c14ea" [label="local://context" shape="ellipse"];
  "sha256:2a9879acd71ae9343907a100cf991ebc60929d9505171f11b472afa3d29bbc4e" [label="copy{src=/swarm-ingress-router, dest=/bin/}" shape="note"];
  "sha256:cdfa92388e8bc3ccf85a38ccf3c4a8fce0ef067ffa289852950ef9f704bd721e" [label="sha256:cdfa92388e8bc3ccf85a38ccf3c4a8fce0ef067ffa289852950ef9f704bd721e" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:2a9879acd71ae9343907a100cf991ebc60929d9505171f11b472afa3d29bbc4e" [label=""];
  "sha256:ec30196f4eab26ff340cf4bdd0ce98403545e629f7132e0d162185cdb54c14ea" -> "sha256:2a9879acd71ae9343907a100cf991ebc60929d9505171f11b472afa3d29bbc4e" [label=""];
  "sha256:2a9879acd71ae9343907a100cf991ebc60929d9505171f11b472afa3d29bbc4e" -> "sha256:cdfa92388e8bc3ccf85a38ccf3c4a8fce0ef067ffa289852950ef9f704bd721e" [label=""];
}

