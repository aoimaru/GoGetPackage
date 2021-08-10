[app/sources/341900856.Dockerfile]
digraph {
  "sha256:98488e6ee084436ecf8aadbae736a1603318389941efa517a61ce093963a4ab1" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:46e47f27f5096a7c4b51e69d451e26d836c5cba6e0544f5fc86668647872addb" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:4ef17e81ee11c6af6f8f2eafa01e362f11c8b013c7c63e2cf07e10cdc17f8b02" [label="pip install requests" shape="box"];
  "sha256:10aebf0064792e786a78cf0f86936b49c9ef6cb96e793f4312edf0de7938e520" [label="sha256:10aebf0064792e786a78cf0f86936b49c9ef6cb96e793f4312edf0de7938e520" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:46e47f27f5096a7c4b51e69d451e26d836c5cba6e0544f5fc86668647872addb" [label=""];
  "sha256:98488e6ee084436ecf8aadbae736a1603318389941efa517a61ce093963a4ab1" -> "sha256:46e47f27f5096a7c4b51e69d451e26d836c5cba6e0544f5fc86668647872addb" [label=""];
  "sha256:46e47f27f5096a7c4b51e69d451e26d836c5cba6e0544f5fc86668647872addb" -> "sha256:4ef17e81ee11c6af6f8f2eafa01e362f11c8b013c7c63e2cf07e10cdc17f8b02" [label=""];
  "sha256:4ef17e81ee11c6af6f8f2eafa01e362f11c8b013c7c63e2cf07e10cdc17f8b02" -> "sha256:10aebf0064792e786a78cf0f86936b49c9ef6cb96e793f4312edf0de7938e520" [label=""];
}

