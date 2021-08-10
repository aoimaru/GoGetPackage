[app/sources/165118660.Dockerfile]
digraph {
  "sha256:85c668b71934e7f91e09630ea377ef1f6ccfb2fd660826c27b27546729961ae7" [label="docker-image://docker.io/partlab/ubuntu:latest" shape="ellipse"];
  "sha256:11ee8e2ca06716ab298daf20d419e7d7cb9dc418d7017469122db0720f0ed88a" [label="/bin/sh -c apt-get update &&     apt-get install --no-install-recommends -y nginx &&     apt-get clean &&     echo \"\\ndaemon off;\" >> /etc/nginx/nginx.conf &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ab796dfde7878dacc7b91bee7de65e63477e1de9a38a67917c40c57e895c712f" [label="sha256:ab796dfde7878dacc7b91bee7de65e63477e1de9a38a67917c40c57e895c712f" shape="plaintext"];
  "sha256:85c668b71934e7f91e09630ea377ef1f6ccfb2fd660826c27b27546729961ae7" -> "sha256:11ee8e2ca06716ab298daf20d419e7d7cb9dc418d7017469122db0720f0ed88a" [label=""];
  "sha256:11ee8e2ca06716ab298daf20d419e7d7cb9dc418d7017469122db0720f0ed88a" -> "sha256:ab796dfde7878dacc7b91bee7de65e63477e1de9a38a67917c40c57e895c712f" [label=""];
}

