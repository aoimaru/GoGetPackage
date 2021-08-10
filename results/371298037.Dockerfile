[app/sources/371298037.Dockerfile]
digraph {
  "sha256:bdee5fc062abb5b6f5cc2963688923b2b737ff50072902f1226c59a2609931e3" [label="docker-image://docker.io/paulinus/opensfm-docker-base:latest" shape="ellipse"];
  "sha256:6a93ef9c579b7c063b768b7ae13b2c3f9926fef68af9191cf3dc2fc40b2f7099" [label="local://context" shape="ellipse"];
  "sha256:103545ef55431efc2561d267858abb3901ed3e6c6f3adecc2a891275150db3f8" [label="copy{src=/, dest=/source/OpenSfM}" shape="note"];
  "sha256:27c712acd44d6df8d275956481df41287274f190436dee9a55a23acf68e5787d" [label="mkdir{path=/source/OpenSfM}" shape="note"];
  "sha256:b00e6b2645916c255ea8f3cf3f02df08716743c398a0a67d9198a62aa5b3a163" [label="/bin/sh -c pip install -r requirements.txt &&     python setup.py build" shape="box"];
  "sha256:2ac2b5d092d84bc5f37310d70a405f43a8f2a1ada513b333618be430f7b1a9ac" [label="sha256:2ac2b5d092d84bc5f37310d70a405f43a8f2a1ada513b333618be430f7b1a9ac" shape="plaintext"];
  "sha256:bdee5fc062abb5b6f5cc2963688923b2b737ff50072902f1226c59a2609931e3" -> "sha256:103545ef55431efc2561d267858abb3901ed3e6c6f3adecc2a891275150db3f8" [label=""];
  "sha256:6a93ef9c579b7c063b768b7ae13b2c3f9926fef68af9191cf3dc2fc40b2f7099" -> "sha256:103545ef55431efc2561d267858abb3901ed3e6c6f3adecc2a891275150db3f8" [label=""];
  "sha256:103545ef55431efc2561d267858abb3901ed3e6c6f3adecc2a891275150db3f8" -> "sha256:27c712acd44d6df8d275956481df41287274f190436dee9a55a23acf68e5787d" [label=""];
  "sha256:27c712acd44d6df8d275956481df41287274f190436dee9a55a23acf68e5787d" -> "sha256:b00e6b2645916c255ea8f3cf3f02df08716743c398a0a67d9198a62aa5b3a163" [label=""];
  "sha256:b00e6b2645916c255ea8f3cf3f02df08716743c398a0a67d9198a62aa5b3a163" -> "sha256:2ac2b5d092d84bc5f37310d70a405f43a8f2a1ada513b333618be430f7b1a9ac" [label=""];
}

