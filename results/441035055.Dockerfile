[app/sources/441035055.Dockerfile]
digraph {
  "sha256:5837f15f2e6b0c84e372b8d364c724a9a00be6a900548043f458a52b6f313157" [label="local://context" shape="ellipse"];
  "sha256:c90dcea39ff66b5f279fb423e9fc7f8e50442be1a9a872c32a5c5a37129153cd" [label="docker-image://docker.io/adorsys/nginx:latest" shape="ellipse"];
  "sha256:ee4af89778f89a0a23a4fb5fa8fe58fb3f6dbb8839b8b026e79825ef1eb0be1e" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:b082a9bbd731a35a2ba5ad241d6c2091bfbe7a5298c2b9c253ca5e8f5d490637" [label="/bin/sh -c chmod -R g=u /opt/app-root &&     sed -i -e '/listen/!b' -e '/8080 default_server;/!b' -e 's/8080 default_server;/8090;/' /etc/opt/rh/rh-nginx${NGINX_SHORT_VER}/nginx/nginx.conf" shape="box"];
  "sha256:85b3c2cd0f36746521779dfa01aaf60de04a0cb1b0014539f0c8656634b54e4b" [label="sha256:85b3c2cd0f36746521779dfa01aaf60de04a0cb1b0014539f0c8656634b54e4b" shape="plaintext"];
  "sha256:c90dcea39ff66b5f279fb423e9fc7f8e50442be1a9a872c32a5c5a37129153cd" -> "sha256:ee4af89778f89a0a23a4fb5fa8fe58fb3f6dbb8839b8b026e79825ef1eb0be1e" [label=""];
  "sha256:5837f15f2e6b0c84e372b8d364c724a9a00be6a900548043f458a52b6f313157" -> "sha256:ee4af89778f89a0a23a4fb5fa8fe58fb3f6dbb8839b8b026e79825ef1eb0be1e" [label=""];
  "sha256:ee4af89778f89a0a23a4fb5fa8fe58fb3f6dbb8839b8b026e79825ef1eb0be1e" -> "sha256:b082a9bbd731a35a2ba5ad241d6c2091bfbe7a5298c2b9c253ca5e8f5d490637" [label=""];
  "sha256:b082a9bbd731a35a2ba5ad241d6c2091bfbe7a5298c2b9c253ca5e8f5d490637" -> "sha256:85b3c2cd0f36746521779dfa01aaf60de04a0cb1b0014539f0c8656634b54e4b" [label=""];
}

