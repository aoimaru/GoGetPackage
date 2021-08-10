[app/sources/345123999.Dockerfile]
digraph {
  "sha256:92f0812b5c245647a611cd2ceb25102ca8d23c4ebb2fc283c83909e5f4fd68d7" [label="docker-image://docker.io/xataz/node:7-onbuild" shape="ellipse"];
  "sha256:698a812ea018533a4479632e45f26349ae8b986edeeb2b0e778094d8cdef2c3e" [label="local://context" shape="ellipse"];
  "sha256:90e3525cdfdb84ee3a7ae3a30189e8a83d25bacf0f121fa2e59ad5415ce34377" [label="copy{src=/startup, dest=/usr/local/bin/startup}" shape="note"];
  "sha256:5bee7ce272038923defbf1a7f14a49febe0f7e2ece7b74d3e06e785c8e0f8301" [label="/bin/sh -c chmod +x /usr/local/bin/startup" shape="box"];
  "sha256:90d3b03e3e942eb79caa1beb6be2c92b65e07661ee84fbf36bbd5658599754ca" [label="sha256:90d3b03e3e942eb79caa1beb6be2c92b65e07661ee84fbf36bbd5658599754ca" shape="plaintext"];
  "sha256:92f0812b5c245647a611cd2ceb25102ca8d23c4ebb2fc283c83909e5f4fd68d7" -> "sha256:90e3525cdfdb84ee3a7ae3a30189e8a83d25bacf0f121fa2e59ad5415ce34377" [label=""];
  "sha256:698a812ea018533a4479632e45f26349ae8b986edeeb2b0e778094d8cdef2c3e" -> "sha256:90e3525cdfdb84ee3a7ae3a30189e8a83d25bacf0f121fa2e59ad5415ce34377" [label=""];
  "sha256:90e3525cdfdb84ee3a7ae3a30189e8a83d25bacf0f121fa2e59ad5415ce34377" -> "sha256:5bee7ce272038923defbf1a7f14a49febe0f7e2ece7b74d3e06e785c8e0f8301" [label=""];
  "sha256:5bee7ce272038923defbf1a7f14a49febe0f7e2ece7b74d3e06e785c8e0f8301" -> "sha256:90d3b03e3e942eb79caa1beb6be2c92b65e07661ee84fbf36bbd5658599754ca" [label=""];
}

