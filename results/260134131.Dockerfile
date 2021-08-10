[app/sources/260134131.Dockerfile]
digraph {
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:slim" shape="ellipse"];
  "sha256:1665dc133fcc3a29998af726875165918192f356e08d2073bd5ccf599829a904" [label="local://context" shape="ellipse"];
  "sha256:6cb427cf3c5b705e40786bb70740cb86ed09efba6df14de2c49577f67c2e7a60" [label="copy{src=/config-service.jar, dest=/app.jar}" shape="note"];
  "sha256:c6cb2bf69113bc52973359c147259449413ffc37239335241cdc66cd6f90b4c2" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:d9428de9f8d72b895c203ae8a6a0b4b8542de9446f3ccf26b7662a5f319b458a" [label="sha256:d9428de9f8d72b895c203ae8a6a0b4b8542de9446f3ccf26b7662a5f319b458a" shape="plaintext"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" -> "sha256:6cb427cf3c5b705e40786bb70740cb86ed09efba6df14de2c49577f67c2e7a60" [label=""];
  "sha256:1665dc133fcc3a29998af726875165918192f356e08d2073bd5ccf599829a904" -> "sha256:6cb427cf3c5b705e40786bb70740cb86ed09efba6df14de2c49577f67c2e7a60" [label=""];
  "sha256:6cb427cf3c5b705e40786bb70740cb86ed09efba6df14de2c49577f67c2e7a60" -> "sha256:c6cb2bf69113bc52973359c147259449413ffc37239335241cdc66cd6f90b4c2" [label=""];
  "sha256:c6cb2bf69113bc52973359c147259449413ffc37239335241cdc66cd6f90b4c2" -> "sha256:d9428de9f8d72b895c203ae8a6a0b4b8542de9446f3ccf26b7662a5f319b458a" [label=""];
}

