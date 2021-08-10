[app/sources/264384563.Dockerfile]
digraph {
  "sha256:f5e5e47e804f267d0fa25e332546b4f4df22dea136baa50895e5256add90efa4" [label="docker-image://docker.io/anapsix/alpine-java:8_jdk" shape="ellipse"];
  "sha256:999d5f6ec68ff5acb502dc2f546ad05a4392a8c485ae646a2dbfa6e4d7a309b7" [label="local://context" shape="ellipse"];
  "sha256:bc1d19af7bb8af464a614d91ab79b824f72502cddb2aaa5e309b1c47fc14423b" [label="copy{src=/auth-server-1.3.0-RELEASE.jar, dest=/}" shape="note"];
  "sha256:e8549da7b0d08d318775d9c4326cef53c404b1ac584413fea795c2d95cad2a95" [label="sha256:e8549da7b0d08d318775d9c4326cef53c404b1ac584413fea795c2d95cad2a95" shape="plaintext"];
  "sha256:f5e5e47e804f267d0fa25e332546b4f4df22dea136baa50895e5256add90efa4" -> "sha256:bc1d19af7bb8af464a614d91ab79b824f72502cddb2aaa5e309b1c47fc14423b" [label=""];
  "sha256:999d5f6ec68ff5acb502dc2f546ad05a4392a8c485ae646a2dbfa6e4d7a309b7" -> "sha256:bc1d19af7bb8af464a614d91ab79b824f72502cddb2aaa5e309b1c47fc14423b" [label=""];
  "sha256:bc1d19af7bb8af464a614d91ab79b824f72502cddb2aaa5e309b1c47fc14423b" -> "sha256:e8549da7b0d08d318775d9c4326cef53c404b1ac584413fea795c2d95cad2a95" [label=""];
}

