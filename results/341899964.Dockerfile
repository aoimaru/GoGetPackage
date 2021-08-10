[app/sources/341899964.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:20164b962413488b9274fbc57a7ce4bc3d1311b5938e18cd485a35eec03c59d0" [label="local://context" shape="ellipse"];
  "sha256:4b41bc6ebb1dee0bc5d6e7ec9a2d275bbc90620236886dadf4dc1baf4b725996" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:548cbf43ba28d2bbcc442e2d50cb828b9818402e10378da86aeb8be08daee30b" [label="sha256:548cbf43ba28d2bbcc442e2d50cb828b9818402e10378da86aeb8be08daee30b" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:4b41bc6ebb1dee0bc5d6e7ec9a2d275bbc90620236886dadf4dc1baf4b725996" [label=""];
  "sha256:20164b962413488b9274fbc57a7ce4bc3d1311b5938e18cd485a35eec03c59d0" -> "sha256:4b41bc6ebb1dee0bc5d6e7ec9a2d275bbc90620236886dadf4dc1baf4b725996" [label=""];
  "sha256:4b41bc6ebb1dee0bc5d6e7ec9a2d275bbc90620236886dadf4dc1baf4b725996" -> "sha256:548cbf43ba28d2bbcc442e2d50cb828b9818402e10378da86aeb8be08daee30b" [label=""];
}

