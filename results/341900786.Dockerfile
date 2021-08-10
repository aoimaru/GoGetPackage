[app/sources/341900786.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:75cb4b6a69bffafcd2c5c5a419075f2c385f643f4e8e6805b19892e6a2bfd31e" [label="local://context" shape="ellipse"];
  "sha256:44767846f5245078f38047e5133f1e86aaf83fd19c120ee49c693aecf364769d" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:13a627cc7fa0509fab70ea3cf907c3b482cd0231ae169c5e960c80991e83a89a" [label="pip install chardet" shape="box"];
  "sha256:04a5d6c764b4418474caa7a5a3cfa124ac688bd74d43aaf4f21694c6c6cf5f75" [label="sha256:04a5d6c764b4418474caa7a5a3cfa124ac688bd74d43aaf4f21694c6c6cf5f75" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:44767846f5245078f38047e5133f1e86aaf83fd19c120ee49c693aecf364769d" [label=""];
  "sha256:75cb4b6a69bffafcd2c5c5a419075f2c385f643f4e8e6805b19892e6a2bfd31e" -> "sha256:44767846f5245078f38047e5133f1e86aaf83fd19c120ee49c693aecf364769d" [label=""];
  "sha256:44767846f5245078f38047e5133f1e86aaf83fd19c120ee49c693aecf364769d" -> "sha256:13a627cc7fa0509fab70ea3cf907c3b482cd0231ae169c5e960c80991e83a89a" [label=""];
  "sha256:13a627cc7fa0509fab70ea3cf907c3b482cd0231ae169c5e960c80991e83a89a" -> "sha256:04a5d6c764b4418474caa7a5a3cfa124ac688bd74d43aaf4f21694c6c6cf5f75" [label=""];
}

