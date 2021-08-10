[app/sources/330749256.Dockerfile]
digraph {
  "sha256:98339ab59f177cadae26bb6a8ef1fcd50e268408d1c2e97af2a3d0807848fd2c" [label="local://context" shape="ellipse"];
  "sha256:2ef9583f04c86330db7cf6d24fa42ea55a2506bbf9c4f23c3b73f60dbce9841a" [label="copy{src=/portforwardtester, dest=/portforwardtester}" shape="note"];
  "sha256:0a2ae72a4bc76e7e1b55eb2b87f92d3a49f30b60b91bc19017aa4e172eaecdf3" [label="copy{src=/portforwardtester.go, dest=/portforwardtester.go}" shape="note"];
  "sha256:a1911a0c7d1217ad3a8c5420c52c641e9ed38a0e452a4128b82c1c81f628ea76" [label="sha256:a1911a0c7d1217ad3a8c5420c52c641e9ed38a0e452a4128b82c1c81f628ea76" shape="plaintext"];
  "sha256:98339ab59f177cadae26bb6a8ef1fcd50e268408d1c2e97af2a3d0807848fd2c" -> "sha256:2ef9583f04c86330db7cf6d24fa42ea55a2506bbf9c4f23c3b73f60dbce9841a" [label=""];
  "sha256:2ef9583f04c86330db7cf6d24fa42ea55a2506bbf9c4f23c3b73f60dbce9841a" -> "sha256:0a2ae72a4bc76e7e1b55eb2b87f92d3a49f30b60b91bc19017aa4e172eaecdf3" [label=""];
  "sha256:98339ab59f177cadae26bb6a8ef1fcd50e268408d1c2e97af2a3d0807848fd2c" -> "sha256:0a2ae72a4bc76e7e1b55eb2b87f92d3a49f30b60b91bc19017aa4e172eaecdf3" [label=""];
  "sha256:0a2ae72a4bc76e7e1b55eb2b87f92d3a49f30b60b91bc19017aa4e172eaecdf3" -> "sha256:a1911a0c7d1217ad3a8c5420c52c641e9ed38a0e452a4128b82c1c81f628ea76" [label=""];
}

