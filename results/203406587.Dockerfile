[app/sources/203406587.Dockerfile]
digraph {
  "sha256:ea7ffae07ce84b175cf8f141045738aeddd709cd8aea229c5b3f6041bd742acb" [label="docker-image://docker.io/arm32v7/node:10-stretch" shape="ellipse"];
  "sha256:3b87d8e4bff3f1397d70df75166bd514f1cf86b3b0c6864d91639b10000f90de" [label="/bin/sh -c git clone https://github.com/bpatrik/pigallery2.git &&     cd /pigallery2 &&     npm install --unsafe-perm &&     npm run build-release &&     cp -r /pigallery2/release /pigallery2-release &&     rm /pigallery2 -R &&     cd /pigallery2-release &&     npm install --unsafe-perm" shape="box"];
  "sha256:4627151fcc5a647e5fa602d52b7980ecb419ab64b6cc889c9f654106cab6252c" [label="sha256:4627151fcc5a647e5fa602d52b7980ecb419ab64b6cc889c9f654106cab6252c" shape="plaintext"];
  "sha256:ea7ffae07ce84b175cf8f141045738aeddd709cd8aea229c5b3f6041bd742acb" -> "sha256:3b87d8e4bff3f1397d70df75166bd514f1cf86b3b0c6864d91639b10000f90de" [label=""];
  "sha256:3b87d8e4bff3f1397d70df75166bd514f1cf86b3b0c6864d91639b10000f90de" -> "sha256:4627151fcc5a647e5fa602d52b7980ecb419ab64b6cc889c9f654106cab6252c" [label=""];
}

