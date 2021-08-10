[app/sources/341903806.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:130e27c9aa4755c15f9e4baaa29fc5596ee19ffc138ecf19e7069d48e1881d5e" [label="local://context" shape="ellipse"];
  "sha256:cace6933b02aa53bf4011b6686bf727691e0275b6d11d8e6f35def541e7fdecd" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:7000cbe486b8b0dd938f954cd18245e7565a29d6216b225c1a37a9256626e16e" [label="pip install requests" shape="box"];
  "sha256:7a662cd400822c873d8e891740b02babd9fb96f0bb6570c5225301353f73f48b" [label="sha256:7a662cd400822c873d8e891740b02babd9fb96f0bb6570c5225301353f73f48b" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:cace6933b02aa53bf4011b6686bf727691e0275b6d11d8e6f35def541e7fdecd" [label=""];
  "sha256:130e27c9aa4755c15f9e4baaa29fc5596ee19ffc138ecf19e7069d48e1881d5e" -> "sha256:cace6933b02aa53bf4011b6686bf727691e0275b6d11d8e6f35def541e7fdecd" [label=""];
  "sha256:cace6933b02aa53bf4011b6686bf727691e0275b6d11d8e6f35def541e7fdecd" -> "sha256:7000cbe486b8b0dd938f954cd18245e7565a29d6216b225c1a37a9256626e16e" [label=""];
  "sha256:7000cbe486b8b0dd938f954cd18245e7565a29d6216b225c1a37a9256626e16e" -> "sha256:7a662cd400822c873d8e891740b02babd9fb96f0bb6570c5225301353f73f48b" [label=""];
}

