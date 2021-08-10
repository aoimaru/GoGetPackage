[app/sources/178355966.Dockerfile]
digraph {
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" [label="docker-image://docker.io/library/node:0.10" shape="ellipse"];
  "sha256:a29968933f1ac639888ddbf329e400f75c3c61d9968bb95e50cd29665c629af5" [label="/bin/sh -c cp /usr/share/zoneinfo/Asia/Taipei /etc/localtime" shape="box"];
  "sha256:7bc96cac60d069ed0be44b003a138d6f07665e3bcd88d81a2effe479620b64f1" [label="/bin/sh -c echo 'Asia/Taipei' > /etc/timezone" shape="box"];
  "sha256:329785b76042ed44216217bc086beeafa4864e1017ec59ba05175334a2784930" [label="local://context" shape="ellipse"];
  "sha256:da576042b93a65272a0075d4dbabbefcd71cadc892adeedeafaa31ada9b53f29" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:1a067875b383e183fb47f6e8202ee7b659117e0b5a6d245fbc6db353122718a8" [label="mkdir{path=/app}" shape="note"];
  "sha256:bc12aef84a915aadadf44de00ad812e4485e7511aa56cbe6bbc5eb452cb08a4f" [label="/bin/sh -c npm install || exit 0" shape="box"];
  "sha256:8112045d7c42ceb26c85f146d9a545ce2264492b0da5c97ab3d15274d5dd0953" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:a29939561501cb453ba88b88273ee7f6807a6ec908a2fad118289db56e0aefdf" [label="sha256:a29939561501cb453ba88b88273ee7f6807a6ec908a2fad118289db56e0aefdf" shape="plaintext"];
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" -> "sha256:a29968933f1ac639888ddbf329e400f75c3c61d9968bb95e50cd29665c629af5" [label=""];
  "sha256:a29968933f1ac639888ddbf329e400f75c3c61d9968bb95e50cd29665c629af5" -> "sha256:7bc96cac60d069ed0be44b003a138d6f07665e3bcd88d81a2effe479620b64f1" [label=""];
  "sha256:7bc96cac60d069ed0be44b003a138d6f07665e3bcd88d81a2effe479620b64f1" -> "sha256:da576042b93a65272a0075d4dbabbefcd71cadc892adeedeafaa31ada9b53f29" [label=""];
  "sha256:329785b76042ed44216217bc086beeafa4864e1017ec59ba05175334a2784930" -> "sha256:da576042b93a65272a0075d4dbabbefcd71cadc892adeedeafaa31ada9b53f29" [label=""];
  "sha256:da576042b93a65272a0075d4dbabbefcd71cadc892adeedeafaa31ada9b53f29" -> "sha256:1a067875b383e183fb47f6e8202ee7b659117e0b5a6d245fbc6db353122718a8" [label=""];
  "sha256:1a067875b383e183fb47f6e8202ee7b659117e0b5a6d245fbc6db353122718a8" -> "sha256:bc12aef84a915aadadf44de00ad812e4485e7511aa56cbe6bbc5eb452cb08a4f" [label=""];
  "sha256:bc12aef84a915aadadf44de00ad812e4485e7511aa56cbe6bbc5eb452cb08a4f" -> "sha256:8112045d7c42ceb26c85f146d9a545ce2264492b0da5c97ab3d15274d5dd0953" [label=""];
  "sha256:8112045d7c42ceb26c85f146d9a545ce2264492b0da5c97ab3d15274d5dd0953" -> "sha256:a29939561501cb453ba88b88273ee7f6807a6ec908a2fad118289db56e0aefdf" [label=""];
}

