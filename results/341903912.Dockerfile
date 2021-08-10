[app/sources/341903912.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:e76f73b4bc2c03aaaf1bbe1199a30e5d855159090a89538a041a97c6dde94369" [label="local://context" shape="ellipse"];
  "sha256:227b2f7ff2dddd5ef7ed66454f56a214569fb84c757e329e15c96ce29a1ab483" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:e3dc9e2ef11cee9e3710c42f52bf0a99e3dc4eee9a4f0c75d9253bdc7a6cfdee" [label="pip install requests" shape="box"];
  "sha256:9c0ba1ea33609c2e6808dbdbe4b13df695661294f950dd80d67112e8133ff64a" [label="pip install email" shape="box"];
  "sha256:1d5dc7f6872e215afe442c72a33c1d1fb8024f7bfc9beb0a8233be08f35476f3" [label="sha256:1d5dc7f6872e215afe442c72a33c1d1fb8024f7bfc9beb0a8233be08f35476f3" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:227b2f7ff2dddd5ef7ed66454f56a214569fb84c757e329e15c96ce29a1ab483" [label=""];
  "sha256:e76f73b4bc2c03aaaf1bbe1199a30e5d855159090a89538a041a97c6dde94369" -> "sha256:227b2f7ff2dddd5ef7ed66454f56a214569fb84c757e329e15c96ce29a1ab483" [label=""];
  "sha256:227b2f7ff2dddd5ef7ed66454f56a214569fb84c757e329e15c96ce29a1ab483" -> "sha256:e3dc9e2ef11cee9e3710c42f52bf0a99e3dc4eee9a4f0c75d9253bdc7a6cfdee" [label=""];
  "sha256:e3dc9e2ef11cee9e3710c42f52bf0a99e3dc4eee9a4f0c75d9253bdc7a6cfdee" -> "sha256:9c0ba1ea33609c2e6808dbdbe4b13df695661294f950dd80d67112e8133ff64a" [label=""];
  "sha256:9c0ba1ea33609c2e6808dbdbe4b13df695661294f950dd80d67112e8133ff64a" -> "sha256:1d5dc7f6872e215afe442c72a33c1d1fb8024f7bfc9beb0a8233be08f35476f3" [label=""];
}

