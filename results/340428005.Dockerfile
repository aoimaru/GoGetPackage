[app/sources/340428005.Dockerfile]
digraph {
  "sha256:a19ffd0a0d6c96d4451d21b633553e92a9aa33e5da3f35e29287e26a52497c6b" [label="docker-image://docker.io/library/ruby:2.4.2-alpine3.6" shape="ellipse"];
  "sha256:882b70355ef0680e99b9252f5d3eef4df5629a536375777893734877c2b100fb" [label="/bin/sh -c bundle config --global frozen 1" shape="box"];
  "sha256:c19f83af1aece2bceb03fa57704c8b4693c682a99fb3d0a8f1b650d78c63d6f4" [label="mkdir{path=/app}" shape="note"];
  "sha256:221bce82cf6f3949b457b11906561ec40ace92a129400fc0b96cb8c453a83de4" [label="local://context" shape="ellipse"];
  "sha256:1a01d6d176e9cbef68e5f8d8696ea268da4c46a81ebe9404a5828c8fa0d04448" [label="copy{src=/Gemfile, dest=/app/}" shape="note"];
  "sha256:4bb2d694d57a5c196e468535eb1e571b536d9e5052ecd292abe9737dc18589b3" [label="copy{src=/Gemfile.lock, dest=/app/}" shape="note"];
  "sha256:9275a3c459ec506d1b7332dbf4bfb3f66a2887f47579bde23564dd3b77ffda04" [label="/bin/sh -c apk add --no-cache --update --virtual .build-deps       g++ make     && bundle install -j4 --without test development --system     && apk del .build-deps" shape="box"];
  "sha256:4b4dfc49a09b228cb6b73ea39014db00bfdcb1ad03137f58c75233175f009e74" [label="sha256:4b4dfc49a09b228cb6b73ea39014db00bfdcb1ad03137f58c75233175f009e74" shape="plaintext"];
  "sha256:a19ffd0a0d6c96d4451d21b633553e92a9aa33e5da3f35e29287e26a52497c6b" -> "sha256:882b70355ef0680e99b9252f5d3eef4df5629a536375777893734877c2b100fb" [label=""];
  "sha256:882b70355ef0680e99b9252f5d3eef4df5629a536375777893734877c2b100fb" -> "sha256:c19f83af1aece2bceb03fa57704c8b4693c682a99fb3d0a8f1b650d78c63d6f4" [label=""];
  "sha256:c19f83af1aece2bceb03fa57704c8b4693c682a99fb3d0a8f1b650d78c63d6f4" -> "sha256:1a01d6d176e9cbef68e5f8d8696ea268da4c46a81ebe9404a5828c8fa0d04448" [label=""];
  "sha256:221bce82cf6f3949b457b11906561ec40ace92a129400fc0b96cb8c453a83de4" -> "sha256:1a01d6d176e9cbef68e5f8d8696ea268da4c46a81ebe9404a5828c8fa0d04448" [label=""];
  "sha256:1a01d6d176e9cbef68e5f8d8696ea268da4c46a81ebe9404a5828c8fa0d04448" -> "sha256:4bb2d694d57a5c196e468535eb1e571b536d9e5052ecd292abe9737dc18589b3" [label=""];
  "sha256:221bce82cf6f3949b457b11906561ec40ace92a129400fc0b96cb8c453a83de4" -> "sha256:4bb2d694d57a5c196e468535eb1e571b536d9e5052ecd292abe9737dc18589b3" [label=""];
  "sha256:4bb2d694d57a5c196e468535eb1e571b536d9e5052ecd292abe9737dc18589b3" -> "sha256:9275a3c459ec506d1b7332dbf4bfb3f66a2887f47579bde23564dd3b77ffda04" [label=""];
  "sha256:9275a3c459ec506d1b7332dbf4bfb3f66a2887f47579bde23564dd3b77ffda04" -> "sha256:4b4dfc49a09b228cb6b73ea39014db00bfdcb1ad03137f58c75233175f009e74" [label=""];
}

