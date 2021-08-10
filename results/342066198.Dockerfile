[app/sources/342066198.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:40e1aab73a55955293cbeee07f60dab30863885ea0a06816ea06a41dd8dc96db" [label="local://context" shape="ellipse"];
  "sha256:8af1bd488fcdf4d34e85abb0bceaad2574a5314de3650edc0cecf71309d3ed7b" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:0c7a3afbde155266205e2b28464a03e050d70a79bd00b2b3ceb3ee2c4c41d75f" [label="sha256:0c7a3afbde155266205e2b28464a03e050d70a79bd00b2b3ceb3ee2c4c41d75f" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:8af1bd488fcdf4d34e85abb0bceaad2574a5314de3650edc0cecf71309d3ed7b" [label=""];
  "sha256:40e1aab73a55955293cbeee07f60dab30863885ea0a06816ea06a41dd8dc96db" -> "sha256:8af1bd488fcdf4d34e85abb0bceaad2574a5314de3650edc0cecf71309d3ed7b" [label=""];
  "sha256:8af1bd488fcdf4d34e85abb0bceaad2574a5314de3650edc0cecf71309d3ed7b" -> "sha256:0c7a3afbde155266205e2b28464a03e050d70a79bd00b2b3ceb3ee2c4c41d75f" [label=""];
}

