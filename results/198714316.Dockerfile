[app/sources/198714316.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:f9314893dcd9327b8ee0ffeb3f880ff41ae7458dddbc338b5be1acb5a866f827" [label="/bin/sh -c apt-get update && apt-get install nginx-full -y" shape="box"];
  "sha256:a937d4fe995dafb5f4837cf1249076cb6ddd560e7c4dbd64731afa39a4236c21" [label="/bin/sh -c rm -rf /etc/nginx" shape="box"];
  "sha256:eacd2cdf0a9ac58ad5e5c3c2f5f1716df0671bd581a3e9559df8665e1d77ebf1" [label="local://context" shape="ellipse"];
  "sha256:009345ec0e4eb8c513d7a6c318557a54bec10bc94898be6f044a3f9240522cc4" [label="copy{src=/etc, dest=/etc/nginx}" shape="note"];
  "sha256:75fe2b93e07711235e0b52baff7bc794b69d79931a1829fbcb7371ebfebbf8d5" [label="/bin/sh -c chown -R root:root /etc/nginx" shape="box"];
  "sha256:1b8888da359238eca06528cc95eb62f1cfb19e7ae3e2e02ec9d47c7bfbf4cbe4" [label="/bin/sh -c /usr/sbin/nginx -qt" shape="box"];
  "sha256:e3c67a5f1293e88da33d8a48aae6de305c381cefd2e1a8c5743ddf336d68f5c3" [label="/bin/sh -c mkdir /www" shape="box"];
  "sha256:dd31825ce848adb7decaf9a13239f88ffcc5d5fb0d0e50daa435b76dde875bbd" [label="sha256:dd31825ce848adb7decaf9a13239f88ffcc5d5fb0d0e50daa435b76dde875bbd" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:f9314893dcd9327b8ee0ffeb3f880ff41ae7458dddbc338b5be1acb5a866f827" [label=""];
  "sha256:f9314893dcd9327b8ee0ffeb3f880ff41ae7458dddbc338b5be1acb5a866f827" -> "sha256:a937d4fe995dafb5f4837cf1249076cb6ddd560e7c4dbd64731afa39a4236c21" [label=""];
  "sha256:a937d4fe995dafb5f4837cf1249076cb6ddd560e7c4dbd64731afa39a4236c21" -> "sha256:009345ec0e4eb8c513d7a6c318557a54bec10bc94898be6f044a3f9240522cc4" [label=""];
  "sha256:eacd2cdf0a9ac58ad5e5c3c2f5f1716df0671bd581a3e9559df8665e1d77ebf1" -> "sha256:009345ec0e4eb8c513d7a6c318557a54bec10bc94898be6f044a3f9240522cc4" [label=""];
  "sha256:009345ec0e4eb8c513d7a6c318557a54bec10bc94898be6f044a3f9240522cc4" -> "sha256:75fe2b93e07711235e0b52baff7bc794b69d79931a1829fbcb7371ebfebbf8d5" [label=""];
  "sha256:75fe2b93e07711235e0b52baff7bc794b69d79931a1829fbcb7371ebfebbf8d5" -> "sha256:1b8888da359238eca06528cc95eb62f1cfb19e7ae3e2e02ec9d47c7bfbf4cbe4" [label=""];
  "sha256:1b8888da359238eca06528cc95eb62f1cfb19e7ae3e2e02ec9d47c7bfbf4cbe4" -> "sha256:e3c67a5f1293e88da33d8a48aae6de305c381cefd2e1a8c5743ddf336d68f5c3" [label=""];
  "sha256:e3c67a5f1293e88da33d8a48aae6de305c381cefd2e1a8c5743ddf336d68f5c3" -> "sha256:dd31825ce848adb7decaf9a13239f88ffcc5d5fb0d0e50daa435b76dde875bbd" [label=""];
}

