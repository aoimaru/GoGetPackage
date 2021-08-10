[app/sources/341898844.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:36d95ec42af6dee64884779d89b0d70c6f10258a8dba970dcc87430a1e8efbc1" [label="local://context" shape="ellipse"];
  "sha256:1aed656aebdb25f29215582721d64c5595112e7685b22a52c631576d2a066044" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:ab30aa9997207fdeea0eca1805e4f9a92c81f562fb95517ed12e468dc4ceecfa" [label="pip install matplotlib" shape="box"];
  "sha256:1e60bd14c37d46d6f8ce5a7d92736ef946efd7401d5e9334a69612789d491847" [label="pip install numpy" shape="box"];
  "sha256:72e78c0ebcc2fc52f90b2845353f1088e04bdc4e86899191a3a00dded9f3ebfd" [label="sha256:72e78c0ebcc2fc52f90b2845353f1088e04bdc4e86899191a3a00dded9f3ebfd" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:1aed656aebdb25f29215582721d64c5595112e7685b22a52c631576d2a066044" [label=""];
  "sha256:36d95ec42af6dee64884779d89b0d70c6f10258a8dba970dcc87430a1e8efbc1" -> "sha256:1aed656aebdb25f29215582721d64c5595112e7685b22a52c631576d2a066044" [label=""];
  "sha256:1aed656aebdb25f29215582721d64c5595112e7685b22a52c631576d2a066044" -> "sha256:ab30aa9997207fdeea0eca1805e4f9a92c81f562fb95517ed12e468dc4ceecfa" [label=""];
  "sha256:ab30aa9997207fdeea0eca1805e4f9a92c81f562fb95517ed12e468dc4ceecfa" -> "sha256:1e60bd14c37d46d6f8ce5a7d92736ef946efd7401d5e9334a69612789d491847" [label=""];
  "sha256:1e60bd14c37d46d6f8ce5a7d92736ef946efd7401d5e9334a69612789d491847" -> "sha256:72e78c0ebcc2fc52f90b2845353f1088e04bdc4e86899191a3a00dded9f3ebfd" [label=""];
}

