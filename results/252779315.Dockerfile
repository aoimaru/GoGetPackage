[app/sources/252779315.Dockerfile]
digraph {
  "sha256:9d71483d7e4d6dbac9f3a3ad183f98d9db699aa5267491f72c66371d7905af36" [label="local://context" shape="ellipse"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:35b730353b2b7d6aa5cc592bd09c80e20d0b8cfd968a8cb529e19f67c7c044e4" [label="copy{src=/nginx/*, dest=/etc/nginx/}" shape="note"];
  "sha256:481790b68d9d718ba54d536fbd8c40b02c6ca72a768ba440e79f2feadccc50c5" [label="sha256:481790b68d9d718ba54d536fbd8c40b02c6ca72a768ba440e79f2feadccc50c5" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:35b730353b2b7d6aa5cc592bd09c80e20d0b8cfd968a8cb529e19f67c7c044e4" [label=""];
  "sha256:9d71483d7e4d6dbac9f3a3ad183f98d9db699aa5267491f72c66371d7905af36" -> "sha256:35b730353b2b7d6aa5cc592bd09c80e20d0b8cfd968a8cb529e19f67c7c044e4" [label=""];
  "sha256:35b730353b2b7d6aa5cc592bd09c80e20d0b8cfd968a8cb529e19f67c7c044e4" -> "sha256:481790b68d9d718ba54d536fbd8c40b02c6ca72a768ba440e79f2feadccc50c5" [label=""];
}

