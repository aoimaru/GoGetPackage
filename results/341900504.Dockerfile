[app/sources/341900504.Dockerfile]
digraph {
  "sha256:5e38e04390417ee0a2186ae19d4f8c59dc2e4284ba765683b711ec47576ba34b" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:b5ebe2f3706f95ee6df9143a6af298a0c3c3bfa5f9fb096a8eb962e81caf3a7d" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:ea56c5e718834ca3fe5a234753c82d853c59025898634704c2ad157736d49a25" [label="pip install shapely" shape="box"];
  "sha256:ad63d14da70d7eae949bad984dc8687c7df407a2c695e8592cef7d02ffa1459f" [label="pip install matplotlib" shape="box"];
  "sha256:7ca5a1de3c230f1f1f159b3dc90ecddc7e2922587210ae7276f1740679c93a71" [label="sha256:7ca5a1de3c230f1f1f159b3dc90ecddc7e2922587210ae7276f1740679c93a71" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b5ebe2f3706f95ee6df9143a6af298a0c3c3bfa5f9fb096a8eb962e81caf3a7d" [label=""];
  "sha256:5e38e04390417ee0a2186ae19d4f8c59dc2e4284ba765683b711ec47576ba34b" -> "sha256:b5ebe2f3706f95ee6df9143a6af298a0c3c3bfa5f9fb096a8eb962e81caf3a7d" [label=""];
  "sha256:b5ebe2f3706f95ee6df9143a6af298a0c3c3bfa5f9fb096a8eb962e81caf3a7d" -> "sha256:ea56c5e718834ca3fe5a234753c82d853c59025898634704c2ad157736d49a25" [label=""];
  "sha256:ea56c5e718834ca3fe5a234753c82d853c59025898634704c2ad157736d49a25" -> "sha256:ad63d14da70d7eae949bad984dc8687c7df407a2c695e8592cef7d02ffa1459f" [label=""];
  "sha256:ad63d14da70d7eae949bad984dc8687c7df407a2c695e8592cef7d02ffa1459f" -> "sha256:7ca5a1de3c230f1f1f159b3dc90ecddc7e2922587210ae7276f1740679c93a71" [label=""];
}

