[app/sources/232491212.Dockerfile]
digraph {
  "sha256:6f669955457faa26c05c3c81fa475cb7b756893c49bd40d4e313d57b3618ddb8" [label="local://context" shape="ellipse"];
  "sha256:56a3d0cf97146b7c73d2bfd13f830a27873d8b59feb21c5e5a892c6bd9bd2f09" [label="docker-image://hub.c.163.com/bingohuang/jdk8:latest@sha256:aafdfa98e472faec325f0ff74d0bfad820c7b5ff7d867103552d7599ca290ff1" shape="ellipse"];
  "sha256:e9df6fcb4a2594fb03dacd1d2599c9372dc12dbce3155b6c2feb00e0986eed6f" [label="copy{src=/target/spring-boot-docker-cloudcomb-0.1.0.jar, dest=/app.jar}" shape="note"];
  "sha256:80fd83ec8536c5c73369be1e3cb45253d46b971113534541a8563afd46ad949f" [label="sha256:80fd83ec8536c5c73369be1e3cb45253d46b971113534541a8563afd46ad949f" shape="plaintext"];
  "sha256:56a3d0cf97146b7c73d2bfd13f830a27873d8b59feb21c5e5a892c6bd9bd2f09" -> "sha256:e9df6fcb4a2594fb03dacd1d2599c9372dc12dbce3155b6c2feb00e0986eed6f" [label=""];
  "sha256:6f669955457faa26c05c3c81fa475cb7b756893c49bd40d4e313d57b3618ddb8" -> "sha256:e9df6fcb4a2594fb03dacd1d2599c9372dc12dbce3155b6c2feb00e0986eed6f" [label=""];
  "sha256:e9df6fcb4a2594fb03dacd1d2599c9372dc12dbce3155b6c2feb00e0986eed6f" -> "sha256:80fd83ec8536c5c73369be1e3cb45253d46b971113534541a8563afd46ad949f" [label=""];
}

