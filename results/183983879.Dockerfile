[app/sources/183983879.Dockerfile]
digraph {
  "sha256:fc4921e3f6d43dc1980a35a693b09993af201502f08b522b900302de19bd9a54" [label="local://context" shape="ellipse"];
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" [label="docker-image://docker.io/library/node:slim" shape="ellipse"];
  "sha256:2efaa2e92b4157a460000d036b8399eeb5b1d08abd9d2c210d965cdae8df1462" [label="copy{src=/package*.json, dest=/}" shape="note"];
  "sha256:c92527bb75bb96e6bfef2f76d26823a67b9b2ba6d946dc1d228cdbacabc807d9" [label="/bin/sh -c npm ci" shape="box"];
  "sha256:919073c748caaef1df03def47ec51a294677df9ca67d9b13b88bc63c78b95345" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:12d8d2282c061f74209f93909fd5982f5c80dbe4ffa58514136cbc9471ec69af" [label="sha256:12d8d2282c061f74209f93909fd5982f5c80dbe4ffa58514136cbc9471ec69af" shape="plaintext"];
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" -> "sha256:2efaa2e92b4157a460000d036b8399eeb5b1d08abd9d2c210d965cdae8df1462" [label=""];
  "sha256:fc4921e3f6d43dc1980a35a693b09993af201502f08b522b900302de19bd9a54" -> "sha256:2efaa2e92b4157a460000d036b8399eeb5b1d08abd9d2c210d965cdae8df1462" [label=""];
  "sha256:2efaa2e92b4157a460000d036b8399eeb5b1d08abd9d2c210d965cdae8df1462" -> "sha256:c92527bb75bb96e6bfef2f76d26823a67b9b2ba6d946dc1d228cdbacabc807d9" [label=""];
  "sha256:c92527bb75bb96e6bfef2f76d26823a67b9b2ba6d946dc1d228cdbacabc807d9" -> "sha256:919073c748caaef1df03def47ec51a294677df9ca67d9b13b88bc63c78b95345" [label=""];
  "sha256:fc4921e3f6d43dc1980a35a693b09993af201502f08b522b900302de19bd9a54" -> "sha256:919073c748caaef1df03def47ec51a294677df9ca67d9b13b88bc63c78b95345" [label=""];
  "sha256:919073c748caaef1df03def47ec51a294677df9ca67d9b13b88bc63c78b95345" -> "sha256:12d8d2282c061f74209f93909fd5982f5c80dbe4ffa58514136cbc9471ec69af" [label=""];
}

