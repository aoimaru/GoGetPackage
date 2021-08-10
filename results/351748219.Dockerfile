[app/sources/351748219.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:05e3821c165c001f7381029284ca309a785464d4201073af7b2d82710eb38796" [label="local://context" shape="ellipse"];
  "sha256:52d38902c21e66588bee5d72637e90cfcc4a8867cba72aae8de322249ef3b96c" [label="copy{src=/nginx.conf, dest=/etc/nginx/conf.d/doudizhu}" shape="note"];
  "sha256:2ad8129e2e848861ffe887cf22189d5b950b45f00f895e8162fad2b06b11ca6d" [label="sha256:2ad8129e2e848861ffe887cf22189d5b950b45f00f895e8162fad2b06b11ca6d" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:52d38902c21e66588bee5d72637e90cfcc4a8867cba72aae8de322249ef3b96c" [label=""];
  "sha256:05e3821c165c001f7381029284ca309a785464d4201073af7b2d82710eb38796" -> "sha256:52d38902c21e66588bee5d72637e90cfcc4a8867cba72aae8de322249ef3b96c" [label=""];
  "sha256:52d38902c21e66588bee5d72637e90cfcc4a8867cba72aae8de322249ef3b96c" -> "sha256:2ad8129e2e848861ffe887cf22189d5b950b45f00f895e8162fad2b06b11ca6d" [label=""];
}

