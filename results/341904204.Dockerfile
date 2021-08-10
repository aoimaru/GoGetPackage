[app/sources/341904204.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:256d0a98aea7c0718ecba69146d773753b596ea1f6252bae6565521a444d0a85" [label="local://context" shape="ellipse"];
  "sha256:abf13cc99c0d688c62c4f9aac10a7853b1067a3447736f02dd9ae23df450709e" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:6723305d2590c19c19b7eba854922b7102db2c49e2eae5bf59776f0817f36a09" [label="pip install bs4" shape="box"];
  "sha256:b2a406d87b8704aaceaaa873926fdf3fdecbc2e6fed408d0057bda18181a01d0" [label="pip install requests" shape="box"];
  "sha256:758f0e9d988dc1874d9de6bb0ec9e3fcdbece5116ca69d8111e2d8bfa169235f" [label="sha256:758f0e9d988dc1874d9de6bb0ec9e3fcdbece5116ca69d8111e2d8bfa169235f" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:abf13cc99c0d688c62c4f9aac10a7853b1067a3447736f02dd9ae23df450709e" [label=""];
  "sha256:256d0a98aea7c0718ecba69146d773753b596ea1f6252bae6565521a444d0a85" -> "sha256:abf13cc99c0d688c62c4f9aac10a7853b1067a3447736f02dd9ae23df450709e" [label=""];
  "sha256:abf13cc99c0d688c62c4f9aac10a7853b1067a3447736f02dd9ae23df450709e" -> "sha256:6723305d2590c19c19b7eba854922b7102db2c49e2eae5bf59776f0817f36a09" [label=""];
  "sha256:6723305d2590c19c19b7eba854922b7102db2c49e2eae5bf59776f0817f36a09" -> "sha256:b2a406d87b8704aaceaaa873926fdf3fdecbc2e6fed408d0057bda18181a01d0" [label=""];
  "sha256:b2a406d87b8704aaceaaa873926fdf3fdecbc2e6fed408d0057bda18181a01d0" -> "sha256:758f0e9d988dc1874d9de6bb0ec9e3fcdbece5116ca69d8111e2d8bfa169235f" [label=""];
}

