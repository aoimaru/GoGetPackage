[app/sources/442096004.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:386e1d7bb692374f89b23501ea6c9b1c2b05ccaa40d2e0e5e4b1412718d56860" [label="local://context" shape="ellipse"];
  "sha256:aa1f797c5a5c3cd3fad4cdfdec702dfd430408f0beb1781116c9c5bb4fa187f0" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:ea5b818e5885f0d495acd7243c6809d8c2f13db59ed5a416632ae1f9c7c8bb4d" [label="sha256:ea5b818e5885f0d495acd7243c6809d8c2f13db59ed5a416632ae1f9c7c8bb4d" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:aa1f797c5a5c3cd3fad4cdfdec702dfd430408f0beb1781116c9c5bb4fa187f0" [label=""];
  "sha256:386e1d7bb692374f89b23501ea6c9b1c2b05ccaa40d2e0e5e4b1412718d56860" -> "sha256:aa1f797c5a5c3cd3fad4cdfdec702dfd430408f0beb1781116c9c5bb4fa187f0" [label=""];
  "sha256:aa1f797c5a5c3cd3fad4cdfdec702dfd430408f0beb1781116c9c5bb4fa187f0" -> "sha256:ea5b818e5885f0d495acd7243c6809d8c2f13db59ed5a416632ae1f9c7c8bb4d" [label=""];
}

