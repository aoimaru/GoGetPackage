[app/sources/342068436.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:ea90e21a885a372239417a18fdf1d051ca0926072c87f28470e07304d8dbbbc1" [label="local://context" shape="ellipse"];
  "sha256:11d234453aef38ea3973c8f73b0b3ca96fe16a2842adcb644a75cbf23d24075c" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:7b8767cb384e7b6c30a2eb51a40473e6ef74b4a0d29e9a45007d7b462c2704b8" [label="sha256:7b8767cb384e7b6c30a2eb51a40473e6ef74b4a0d29e9a45007d7b462c2704b8" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:11d234453aef38ea3973c8f73b0b3ca96fe16a2842adcb644a75cbf23d24075c" [label=""];
  "sha256:ea90e21a885a372239417a18fdf1d051ca0926072c87f28470e07304d8dbbbc1" -> "sha256:11d234453aef38ea3973c8f73b0b3ca96fe16a2842adcb644a75cbf23d24075c" [label=""];
  "sha256:11d234453aef38ea3973c8f73b0b3ca96fe16a2842adcb644a75cbf23d24075c" -> "sha256:7b8767cb384e7b6c30a2eb51a40473e6ef74b4a0d29e9a45007d7b462c2704b8" [label=""];
}

