[app/sources/186163976.Dockerfile]
digraph {
  "sha256:3e8d04b7001fbc852b0072c29e388cf914e3661f03f3c0acc2118573a6282881" [label="local://context" shape="ellipse"];
  "sha256:77094f5319fbdcebdcb661af8dd081a0747ff323e0f884e6a9b0f31b3c51cae3" [label="copy{src=/test-webserver, dest=/}" shape="note"];
  "sha256:8ca48e361f0a22d21f41e3d325ecbe80a6f6488086ba908c5e56681135a455e9" [label="sha256:8ca48e361f0a22d21f41e3d325ecbe80a6f6488086ba908c5e56681135a455e9" shape="plaintext"];
  "sha256:3e8d04b7001fbc852b0072c29e388cf914e3661f03f3c0acc2118573a6282881" -> "sha256:77094f5319fbdcebdcb661af8dd081a0747ff323e0f884e6a9b0f31b3c51cae3" [label=""];
  "sha256:77094f5319fbdcebdcb661af8dd081a0747ff323e0f884e6a9b0f31b3c51cae3" -> "sha256:8ca48e361f0a22d21f41e3d325ecbe80a6f6488086ba908c5e56681135a455e9" [label=""];
}

