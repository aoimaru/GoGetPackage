[app/sources/342066406.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:044873f5d05ee967b7d25dfce0504112076b7f0272e681af3e58c6acca1d55a2" [label="local://context" shape="ellipse"];
  "sha256:451e8cc5bdaa683ee001c3fea6dfb74bb2938c138ad035972d5e72c8671de3b7" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:9769f145a76412a69365b8383d39f8db894e500302bbe6b515dd04883af345b3" [label="sha256:9769f145a76412a69365b8383d39f8db894e500302bbe6b515dd04883af345b3" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:451e8cc5bdaa683ee001c3fea6dfb74bb2938c138ad035972d5e72c8671de3b7" [label=""];
  "sha256:044873f5d05ee967b7d25dfce0504112076b7f0272e681af3e58c6acca1d55a2" -> "sha256:451e8cc5bdaa683ee001c3fea6dfb74bb2938c138ad035972d5e72c8671de3b7" [label=""];
  "sha256:451e8cc5bdaa683ee001c3fea6dfb74bb2938c138ad035972d5e72c8671de3b7" -> "sha256:9769f145a76412a69365b8383d39f8db894e500302bbe6b515dd04883af345b3" [label=""];
}

