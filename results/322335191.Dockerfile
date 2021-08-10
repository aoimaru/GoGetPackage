[app/sources/322335191.Dockerfile]
digraph {
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" [label="docker-image://docker.io/library/python:2.7-slim" shape="ellipse"];
  "sha256:9951b3a0c5be077713b25db0632ce7e5cc42eb1632445cc446537e204b23aab5" [label="/bin/sh -c pip install requests" shape="box"];
  "sha256:04b42459e2f7c0efc6ae9382a4b5fa47051bb420642cf8eee1694ae3a55ad7f1" [label="local://context" shape="ellipse"];
  "sha256:45f2e8172645fd413af505a654c7a125fe3b1b5ea9f95c6bb9e2e45f188cb472" [label="copy{src=/, dest=/dns-frontend}" shape="note"];
  "sha256:7067662f32fcd83111fa53a8eb1b838d4135cb5a40f9c4c1da65fa6bc25a9971" [label="mkdir{path=/dns-frontend}" shape="note"];
  "sha256:d17e7487ea0e5163126911c7a73b8415366bb2f52b5f484c5bcce1438b1c1970" [label="sha256:d17e7487ea0e5163126911c7a73b8415366bb2f52b5f484c5bcce1438b1c1970" shape="plaintext"];
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" -> "sha256:9951b3a0c5be077713b25db0632ce7e5cc42eb1632445cc446537e204b23aab5" [label=""];
  "sha256:9951b3a0c5be077713b25db0632ce7e5cc42eb1632445cc446537e204b23aab5" -> "sha256:45f2e8172645fd413af505a654c7a125fe3b1b5ea9f95c6bb9e2e45f188cb472" [label=""];
  "sha256:04b42459e2f7c0efc6ae9382a4b5fa47051bb420642cf8eee1694ae3a55ad7f1" -> "sha256:45f2e8172645fd413af505a654c7a125fe3b1b5ea9f95c6bb9e2e45f188cb472" [label=""];
  "sha256:45f2e8172645fd413af505a654c7a125fe3b1b5ea9f95c6bb9e2e45f188cb472" -> "sha256:7067662f32fcd83111fa53a8eb1b838d4135cb5a40f9c4c1da65fa6bc25a9971" [label=""];
  "sha256:7067662f32fcd83111fa53a8eb1b838d4135cb5a40f9c4c1da65fa6bc25a9971" -> "sha256:d17e7487ea0e5163126911c7a73b8415366bb2f52b5f484c5bcce1438b1c1970" [label=""];
}

