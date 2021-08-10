[app/sources/445126038.Dockerfile]
digraph {
  "sha256:d545ae15bb7e6a1f9d42efeeb862588ed623a248b4df5b4c5d331a198a2942ab" [label="docker-image://docker.io/library/openjdk:latest" shape="ellipse"];
  "sha256:90a0f1801b88b74cb71b97f09d52bfe1930ac6ca163fc49028dd51944a87790e" [label="local://context" shape="ellipse"];
  "sha256:f970f1345c66032287a38d022c0f6ad5b1fdf96a66589d8744886fc82effc426" [label="copy{src=/build/libs/quickpoll-1.0.0.jar, dest=/srv/spring-boot-app.jar}" shape="note"];
  "sha256:fc1524477aeca56ac4b4177c9253eb603aa62ead192f1d537efa756fc355ebe3" [label="sha256:fc1524477aeca56ac4b4177c9253eb603aa62ead192f1d537efa756fc355ebe3" shape="plaintext"];
  "sha256:d545ae15bb7e6a1f9d42efeeb862588ed623a248b4df5b4c5d331a198a2942ab" -> "sha256:f970f1345c66032287a38d022c0f6ad5b1fdf96a66589d8744886fc82effc426" [label=""];
  "sha256:90a0f1801b88b74cb71b97f09d52bfe1930ac6ca163fc49028dd51944a87790e" -> "sha256:f970f1345c66032287a38d022c0f6ad5b1fdf96a66589d8744886fc82effc426" [label=""];
  "sha256:f970f1345c66032287a38d022c0f6ad5b1fdf96a66589d8744886fc82effc426" -> "sha256:fc1524477aeca56ac4b4177c9253eb603aa62ead192f1d537efa756fc355ebe3" [label=""];
}

