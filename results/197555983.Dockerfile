[app/sources/197555983.Dockerfile]
digraph {
  "sha256:f2540b5f127404513dffec1e3089dfae2cbcf9f1db507868f2e4dea1905fb471" [label="local://context" shape="ellipse"];
  "sha256:d956570041d017204a6c2d5a00443739475e2f645bf35dd191127aa8772741fd" [label="copy{src=/portforwardtester, dest=/portforwardtester}" shape="note"];
  "sha256:4e2c2550cd52005ec980bffb825604c8cef45fe19b77e8cb51a55e576e4dfa56" [label="copy{src=/portforwardtester.go, dest=/portforwardtester.go}" shape="note"];
  "sha256:218b6694d5c35fb4894518a1e01479b5a90d3385349f671cce05dc579b709858" [label="sha256:218b6694d5c35fb4894518a1e01479b5a90d3385349f671cce05dc579b709858" shape="plaintext"];
  "sha256:f2540b5f127404513dffec1e3089dfae2cbcf9f1db507868f2e4dea1905fb471" -> "sha256:d956570041d017204a6c2d5a00443739475e2f645bf35dd191127aa8772741fd" [label=""];
  "sha256:d956570041d017204a6c2d5a00443739475e2f645bf35dd191127aa8772741fd" -> "sha256:4e2c2550cd52005ec980bffb825604c8cef45fe19b77e8cb51a55e576e4dfa56" [label=""];
  "sha256:f2540b5f127404513dffec1e3089dfae2cbcf9f1db507868f2e4dea1905fb471" -> "sha256:4e2c2550cd52005ec980bffb825604c8cef45fe19b77e8cb51a55e576e4dfa56" [label=""];
  "sha256:4e2c2550cd52005ec980bffb825604c8cef45fe19b77e8cb51a55e576e4dfa56" -> "sha256:218b6694d5c35fb4894518a1e01479b5a90d3385349f671cce05dc579b709858" [label=""];
}

