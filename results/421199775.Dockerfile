[app/sources/421199775.Dockerfile]
digraph {
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" [label="docker-image://docker.io/library/python:3.6-alpine" shape="ellipse"];
  "sha256:590b1f92d9f6a577ec2985223873498d93868b2d2adfa9f0446730b8eaa32b4b" [label="mkdir{path=/src}" shape="note"];
  "sha256:61d7703cf91db1d56d16b4dab1df7a3cae15c2abba6cb77a40866d1fda2108a4" [label="local://context" shape="ellipse"];
  "sha256:54b30ff42cad1ee4794c5db97c9109d53dd1949e67542bd10156ed41d860222a" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:9a153984602345d09392af191815df0b4c818f196132003de7559c2952361e56" [label="/bin/sh -c python setup.py install     && rm -rf /src" shape="box"];
  "sha256:d0f4fb3574ae613519a8bc9454fd5de54aa0196ff4dfa16dabd71081c01d3f78" [label="sha256:d0f4fb3574ae613519a8bc9454fd5de54aa0196ff4dfa16dabd71081c01d3f78" shape="plaintext"];
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" -> "sha256:590b1f92d9f6a577ec2985223873498d93868b2d2adfa9f0446730b8eaa32b4b" [label=""];
  "sha256:590b1f92d9f6a577ec2985223873498d93868b2d2adfa9f0446730b8eaa32b4b" -> "sha256:54b30ff42cad1ee4794c5db97c9109d53dd1949e67542bd10156ed41d860222a" [label=""];
  "sha256:61d7703cf91db1d56d16b4dab1df7a3cae15c2abba6cb77a40866d1fda2108a4" -> "sha256:54b30ff42cad1ee4794c5db97c9109d53dd1949e67542bd10156ed41d860222a" [label=""];
  "sha256:54b30ff42cad1ee4794c5db97c9109d53dd1949e67542bd10156ed41d860222a" -> "sha256:9a153984602345d09392af191815df0b4c818f196132003de7559c2952361e56" [label=""];
  "sha256:9a153984602345d09392af191815df0b4c818f196132003de7559c2952361e56" -> "sha256:d0f4fb3574ae613519a8bc9454fd5de54aa0196ff4dfa16dabd71081c01d3f78" [label=""];
}

