[app/sources/342068068.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:51b4b945d6ebe4efe414495669382fed2c1448b0b14c5908a1a3f921d735cd4c" [label="local://context" shape="ellipse"];
  "sha256:9ac23414287188c99a181958beecc9ca7bc647beef61c7b797bce82716aeba28" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:5816ce263cb90336dd9ee8f24764977b0649c2125ae733facda47cb28bb0086d" [label="sha256:5816ce263cb90336dd9ee8f24764977b0649c2125ae733facda47cb28bb0086d" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:9ac23414287188c99a181958beecc9ca7bc647beef61c7b797bce82716aeba28" [label=""];
  "sha256:51b4b945d6ebe4efe414495669382fed2c1448b0b14c5908a1a3f921d735cd4c" -> "sha256:9ac23414287188c99a181958beecc9ca7bc647beef61c7b797bce82716aeba28" [label=""];
  "sha256:9ac23414287188c99a181958beecc9ca7bc647beef61c7b797bce82716aeba28" -> "sha256:5816ce263cb90336dd9ee8f24764977b0649c2125ae733facda47cb28bb0086d" [label=""];
}

