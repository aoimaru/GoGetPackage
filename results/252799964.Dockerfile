[app/sources/252799964.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:f2fd32abf55078fd663c8cd58e99646d44b4b1c8ce074d123b74edbfef34b277" [label="/bin/sh -c apk update && apk upgrade && apk add --no-cache --update uwsgi uwsgi-python3 py-pip nodejs git postgresql-devpy3-psycopg2 && rm -rf /var/cache/apk/* # Delete the cache folder to save some space" shape="box"];
  "sha256:b980ba326446ebb1155e6ed1f524f0c407bdd64d4743b3b7f5f6913aafbf6db9" [label="sha256:b980ba326446ebb1155e6ed1f524f0c407bdd64d4743b3b7f5f6913aafbf6db9" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:f2fd32abf55078fd663c8cd58e99646d44b4b1c8ce074d123b74edbfef34b277" [label=""];
  "sha256:f2fd32abf55078fd663c8cd58e99646d44b4b1c8ce074d123b74edbfef34b277" -> "sha256:b980ba326446ebb1155e6ed1f524f0c407bdd64d4743b3b7f5f6913aafbf6db9" [label=""];
}

