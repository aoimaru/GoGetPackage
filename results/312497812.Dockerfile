[app/sources/312497812.Dockerfile]
digraph {
  "sha256:201bd0e3fa0b2c96b93f80288f3734164ac3e02098091bb3c259f3da2f42b199" [label="docker-image://docker.io/library/golang:1.8-stretch" shape="ellipse"];
  "sha256:5347028d7e42f030260a2fcb80f66b6eea384f785348302a6b951d09bd511334" [label="/bin/sh -c curl https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz | tar -xvz &&     mv docker/docker /usr/local/bin/docker &&     chmod +x /usr/local/bin/docker &&     rm -r docker" shape="box"];
  "sha256:08a8e46eaf84abd8233a7173f67bdbc450b0280d02f58ab630d5a63e5c551860" [label="sha256:08a8e46eaf84abd8233a7173f67bdbc450b0280d02f58ab630d5a63e5c551860" shape="plaintext"];
  "sha256:201bd0e3fa0b2c96b93f80288f3734164ac3e02098091bb3c259f3da2f42b199" -> "sha256:5347028d7e42f030260a2fcb80f66b6eea384f785348302a6b951d09bd511334" [label=""];
  "sha256:5347028d7e42f030260a2fcb80f66b6eea384f785348302a6b951d09bd511334" -> "sha256:08a8e46eaf84abd8233a7173f67bdbc450b0280d02f58ab630d5a63e5c551860" [label=""];
}

