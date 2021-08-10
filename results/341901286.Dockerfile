[app/sources/341901286.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:55ad4fb07edf7ba9cd9893971cd90008668597d18fe09910959fcb9a68e9d1df" [label="local://context" shape="ellipse"];
  "sha256:52c61e83a99f46d1fdc754c39aeaa6149b90e73fb6547a73bb89303a46b2a5c4" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:4baa944fb50ab139a86cee543773b70ce1d1db63e1c5dcd4c50255822b40d541" [label="pip install bson" shape="box"];
  "sha256:09abfa6f4f330bcfee93bfdb26023d8d775b205279e196379bf19f9dce4f8d56" [label="pip install pymongo" shape="box"];
  "sha256:f5c4f7fcc1fb72e99c78dceda2cea8d7a69eba18e0e7f49176db6b2f6d4b954d" [label="pip install bson" shape="box"];
  "sha256:2b4a43e7dce8168336631419724e640250019b0a6e51497830cba232068e1339" [label="sha256:2b4a43e7dce8168336631419724e640250019b0a6e51497830cba232068e1339" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:52c61e83a99f46d1fdc754c39aeaa6149b90e73fb6547a73bb89303a46b2a5c4" [label=""];
  "sha256:55ad4fb07edf7ba9cd9893971cd90008668597d18fe09910959fcb9a68e9d1df" -> "sha256:52c61e83a99f46d1fdc754c39aeaa6149b90e73fb6547a73bb89303a46b2a5c4" [label=""];
  "sha256:52c61e83a99f46d1fdc754c39aeaa6149b90e73fb6547a73bb89303a46b2a5c4" -> "sha256:4baa944fb50ab139a86cee543773b70ce1d1db63e1c5dcd4c50255822b40d541" [label=""];
  "sha256:4baa944fb50ab139a86cee543773b70ce1d1db63e1c5dcd4c50255822b40d541" -> "sha256:09abfa6f4f330bcfee93bfdb26023d8d775b205279e196379bf19f9dce4f8d56" [label=""];
  "sha256:09abfa6f4f330bcfee93bfdb26023d8d775b205279e196379bf19f9dce4f8d56" -> "sha256:f5c4f7fcc1fb72e99c78dceda2cea8d7a69eba18e0e7f49176db6b2f6d4b954d" [label=""];
  "sha256:f5c4f7fcc1fb72e99c78dceda2cea8d7a69eba18e0e7f49176db6b2f6d4b954d" -> "sha256:2b4a43e7dce8168336631419724e640250019b0a6e51497830cba232068e1339" [label=""];
}

