[app/sources/457623531.Dockerfile]
digraph {
  "sha256:f2ab924b0eecedb218a0a61a11a768b1c401e27c17c2088629547906f91e17d4" [label="docker-image://docker.io/library/openjdk:8-slim" shape="ellipse"];
  "sha256:6cf03e749bee8f4ef986d86e0ed79175d6a4113fe3e2b286d8997d3d6fbe6779" [label="local://context" shape="ellipse"];
  "sha256:2296599befe8d55c4bcfa0c8d4ff52627681dcfc51715db97797e63ee8a0bf99" [label="copy{src=/target/bundle.jar, dest=/}" shape="note"];
  "sha256:7a1e7681b5fb6233cc2108c446f5c2d940574f5f3e91c118b94898f6e9b9a3cd" [label="sha256:7a1e7681b5fb6233cc2108c446f5c2d940574f5f3e91c118b94898f6e9b9a3cd" shape="plaintext"];
  "sha256:f2ab924b0eecedb218a0a61a11a768b1c401e27c17c2088629547906f91e17d4" -> "sha256:2296599befe8d55c4bcfa0c8d4ff52627681dcfc51715db97797e63ee8a0bf99" [label=""];
  "sha256:6cf03e749bee8f4ef986d86e0ed79175d6a4113fe3e2b286d8997d3d6fbe6779" -> "sha256:2296599befe8d55c4bcfa0c8d4ff52627681dcfc51715db97797e63ee8a0bf99" [label=""];
  "sha256:2296599befe8d55c4bcfa0c8d4ff52627681dcfc51715db97797e63ee8a0bf99" -> "sha256:7a1e7681b5fb6233cc2108c446f5c2d940574f5f3e91c118b94898f6e9b9a3cd" [label=""];
}

