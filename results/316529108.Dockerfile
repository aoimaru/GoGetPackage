[app/sources/316529108.Dockerfile]
digraph {
  "sha256:536136d1e0d2aa10dd153d39cbffc75fe569b0a11daca4e64474607c9e113c58" [label="docker-image://docker.io/tutum/lamp:latest" shape="ellipse"];
  "sha256:5d7da2e5eb9a3eea7fb199da2e40f588f6ee75b93dd8ffc1a9253072cf2244a9" [label="/bin/sh -c cd /tmp/ &&     git clone -b master https://github.com/Hackademic/hackademic.git" shape="box"];
  "sha256:3afa2a810d6c3561938e6727deb0ef84260cd0f844cdacdcac458cc372fc2aa4" [label="/bin/sh -c rm -rf /app/*  &&     cp -r /tmp/hackademic/* /app/ &&     chown www-data:www-data -R /app/ &&     rm -rf /tmp/hackademic" shape="box"];
  "sha256:2e770b2d2c0a0479c3cf1288fbdded84506d3f508f6913adbe653cb11bef0e55" [label="sha256:2e770b2d2c0a0479c3cf1288fbdded84506d3f508f6913adbe653cb11bef0e55" shape="plaintext"];
  "sha256:536136d1e0d2aa10dd153d39cbffc75fe569b0a11daca4e64474607c9e113c58" -> "sha256:5d7da2e5eb9a3eea7fb199da2e40f588f6ee75b93dd8ffc1a9253072cf2244a9" [label=""];
  "sha256:5d7da2e5eb9a3eea7fb199da2e40f588f6ee75b93dd8ffc1a9253072cf2244a9" -> "sha256:3afa2a810d6c3561938e6727deb0ef84260cd0f844cdacdcac458cc372fc2aa4" [label=""];
  "sha256:3afa2a810d6c3561938e6727deb0ef84260cd0f844cdacdcac458cc372fc2aa4" -> "sha256:2e770b2d2c0a0479c3cf1288fbdded84506d3f508f6913adbe653cb11bef0e55" [label=""];
}

