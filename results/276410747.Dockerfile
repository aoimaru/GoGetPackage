[app/sources/276410747.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:4001713d821dba8bc3cc025383e05f412aeb43fc4cdc431d7905de47bd9e4942" [label="/bin/sh -c apk --no-cache add curl" shape="box"];
  "sha256:cc04bcb985a3a010429721aa20bc615498efb3f90a42a4ced58b7fcb9e26bf8f" [label="sha256:cc04bcb985a3a010429721aa20bc615498efb3f90a42a4ced58b7fcb9e26bf8f" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:4001713d821dba8bc3cc025383e05f412aeb43fc4cdc431d7905de47bd9e4942" [label=""];
  "sha256:4001713d821dba8bc3cc025383e05f412aeb43fc4cdc431d7905de47bd9e4942" -> "sha256:cc04bcb985a3a010429721aa20bc615498efb3f90a42a4ced58b7fcb9e26bf8f" [label=""];
}

