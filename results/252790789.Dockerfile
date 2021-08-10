[app/sources/252790789.Dockerfile]
digraph {
  "sha256:9d5ce597765b7b8d5fcdde334dde1c903c1b587299f0782e12b885767b4ea451" [label="local://context" shape="ellipse"];
  "sha256:7ff86b8de568a2dc69dcbfd58e8f2a70e2601ad8cf93b23678926ccf27fbc3dc" [label="copy{src=/--from=build-stage, dest=/},copy{src=/go/src/example/main, dest=/}" shape="note"];
  "sha256:10688d0486303688f8239f87dbd90c7b4c2ac455e460b88f6fa31de1c6348e66" [label="sha256:10688d0486303688f8239f87dbd90c7b4c2ac455e460b88f6fa31de1c6348e66" shape="plaintext"];
  "sha256:9d5ce597765b7b8d5fcdde334dde1c903c1b587299f0782e12b885767b4ea451" -> "sha256:7ff86b8de568a2dc69dcbfd58e8f2a70e2601ad8cf93b23678926ccf27fbc3dc" [label=""];
  "sha256:7ff86b8de568a2dc69dcbfd58e8f2a70e2601ad8cf93b23678926ccf27fbc3dc" -> "sha256:10688d0486303688f8239f87dbd90c7b4c2ac455e460b88f6fa31de1c6348e66" [label=""];
}

