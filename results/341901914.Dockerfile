[app/sources/341901914.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:816064ad4b5f2f2459e43b5158697d16289685166502e51998b802ab0d3f2c9d" [label="local://context" shape="ellipse"];
  "sha256:48362cbb86a30cd7fe28db86a62632ede8c1bebbd746d5a411e4b2ec08dd2a73" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:23c262f904876baf9f1461abb96782320635bb47bf61dc07a9e2293acd05b389" [label="pip install docutils" shape="box"];
  "sha256:08dd2705795956cb7d3f5598f758f2e4557809cacd584cb38f6ff3eb08e835c2" [label="pip install docutils" shape="box"];
  "sha256:5590b43ecc0f8569ef56029dddad1c659d1f8fee453a3795d5a820aea3a98916" [label="sha256:5590b43ecc0f8569ef56029dddad1c659d1f8fee453a3795d5a820aea3a98916" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:48362cbb86a30cd7fe28db86a62632ede8c1bebbd746d5a411e4b2ec08dd2a73" [label=""];
  "sha256:816064ad4b5f2f2459e43b5158697d16289685166502e51998b802ab0d3f2c9d" -> "sha256:48362cbb86a30cd7fe28db86a62632ede8c1bebbd746d5a411e4b2ec08dd2a73" [label=""];
  "sha256:48362cbb86a30cd7fe28db86a62632ede8c1bebbd746d5a411e4b2ec08dd2a73" -> "sha256:23c262f904876baf9f1461abb96782320635bb47bf61dc07a9e2293acd05b389" [label=""];
  "sha256:23c262f904876baf9f1461abb96782320635bb47bf61dc07a9e2293acd05b389" -> "sha256:08dd2705795956cb7d3f5598f758f2e4557809cacd584cb38f6ff3eb08e835c2" [label=""];
  "sha256:08dd2705795956cb7d3f5598f758f2e4557809cacd584cb38f6ff3eb08e835c2" -> "sha256:5590b43ecc0f8569ef56029dddad1c659d1f8fee453a3795d5a820aea3a98916" [label=""];
}

