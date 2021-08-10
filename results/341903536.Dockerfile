[app/sources/341903536.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:9fa12b130b25ad16116c3919f3dc056d23092d67de9bf5949f858092c99b9a73" [label="local://context" shape="ellipse"];
  "sha256:0addbbff23b2ea217ddfd96ba6792a832ea4c2850d06a82d5c955ddadf9024ee" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:879a42632a24e262a0f28323dbaf934bf6c883cf2c4e023501b8b494044f908c" [label="sha256:879a42632a24e262a0f28323dbaf934bf6c883cf2c4e023501b8b494044f908c" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:0addbbff23b2ea217ddfd96ba6792a832ea4c2850d06a82d5c955ddadf9024ee" [label=""];
  "sha256:9fa12b130b25ad16116c3919f3dc056d23092d67de9bf5949f858092c99b9a73" -> "sha256:0addbbff23b2ea217ddfd96ba6792a832ea4c2850d06a82d5c955ddadf9024ee" [label=""];
  "sha256:0addbbff23b2ea217ddfd96ba6792a832ea4c2850d06a82d5c955ddadf9024ee" -> "sha256:879a42632a24e262a0f28323dbaf934bf6c883cf2c4e023501b8b494044f908c" [label=""];
}

