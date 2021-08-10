[app/sources/181829894.Dockerfile]
digraph {
  "sha256:975d130ea3d9e2f71e63048939f1be4d0148f69be7eab416f817a79a07e9c588" [label="docker-image://docker.io/google/cloud-sdk:latest" shape="ellipse"];
  "sha256:e61594cee13875e4e7d9c679778aba14d5c4084125db82ce0f8ed554ad2ed961" [label="local://context" shape="ellipse"];
  "sha256:37250a5fe9837fcd40cf929829578c9e405a3b15881960cde72e3354c6e7cdbd" [label="copy{src=/swarm-client.jar, dest=/lib/}" shape="note"];
  "sha256:4dff94c0971471bbdc8b253b7f1bc9426d44cadeaf7d1dbae197e04d660b23d5" [label="sha256:4dff94c0971471bbdc8b253b7f1bc9426d44cadeaf7d1dbae197e04d660b23d5" shape="plaintext"];
  "sha256:975d130ea3d9e2f71e63048939f1be4d0148f69be7eab416f817a79a07e9c588" -> "sha256:37250a5fe9837fcd40cf929829578c9e405a3b15881960cde72e3354c6e7cdbd" [label=""];
  "sha256:e61594cee13875e4e7d9c679778aba14d5c4084125db82ce0f8ed554ad2ed961" -> "sha256:37250a5fe9837fcd40cf929829578c9e405a3b15881960cde72e3354c6e7cdbd" [label=""];
  "sha256:37250a5fe9837fcd40cf929829578c9e405a3b15881960cde72e3354c6e7cdbd" -> "sha256:4dff94c0971471bbdc8b253b7f1bc9426d44cadeaf7d1dbae197e04d660b23d5" [label=""];
}

