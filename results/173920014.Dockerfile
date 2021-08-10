[app/sources/173920014.Dockerfile]
digraph {
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" [label="docker-image://docker.io/library/debian:sid" shape="ellipse"];
  "sha256:a31dde41d05c1fee67fc4ec826100f2bc271dc057c6a1e43660625597e2b63b3" [label="/bin/sh -c apt-get update && apt-get install -y   pgadmin3 --no-install-recommends" shape="box"];
  "sha256:d6fadba3a6b1f8efd4c4ca2791c2a3003612fa90dc07764a0c54d0480630531c" [label="sha256:d6fadba3a6b1f8efd4c4ca2791c2a3003612fa90dc07764a0c54d0480630531c" shape="plaintext"];
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" -> "sha256:a31dde41d05c1fee67fc4ec826100f2bc271dc057c6a1e43660625597e2b63b3" [label=""];
  "sha256:a31dde41d05c1fee67fc4ec826100f2bc271dc057c6a1e43660625597e2b63b3" -> "sha256:d6fadba3a6b1f8efd4c4ca2791c2a3003612fa90dc07764a0c54d0480630531c" [label=""];
}

