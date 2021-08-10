[app/sources/252778748.Dockerfile]
digraph {
  "sha256:b4d80dccab164622f6c45c9f517b9dd8bf1a2fe5a3ac132048461059b91760a9" [label="docker-image://docker.io/library/node:8-alpine@sha256:38f7bf07ffd72ac612ec8c829cb20ad416518dbb679768d7733c93175453f4d4" shape="ellipse"];
  "sha256:c58ac2d37ca5d17a919bbf79fb3c79d9d06980702483ec01c06ff7c9adaf7561" [label="local://context" shape="ellipse"];
  "sha256:53a2aa3d70cf952238877813a2406c59066eaf08b5ff175a5158670b2fd882ac" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:2ec6760966704f248cad9cf8ac9d15b7187dde51410ae6f0f9681a80ffddd9dc" [label="/bin/sh -c apk add --update git" shape="box"];
  "sha256:2ab77838f20e50216ad8fac13d242c86e6537eabe6246f6c0c5d52811b559ab5" [label="/bin/sh -c cd /app/ && npm install --dev && npm run dist" shape="box"];
  "sha256:1d69bf591f4c8470d55296ce8be2c0dd2bd89ec6116073e7c917f804b3ce7f05" [label="sha256:1d69bf591f4c8470d55296ce8be2c0dd2bd89ec6116073e7c917f804b3ce7f05" shape="plaintext"];
  "sha256:b4d80dccab164622f6c45c9f517b9dd8bf1a2fe5a3ac132048461059b91760a9" -> "sha256:53a2aa3d70cf952238877813a2406c59066eaf08b5ff175a5158670b2fd882ac" [label=""];
  "sha256:c58ac2d37ca5d17a919bbf79fb3c79d9d06980702483ec01c06ff7c9adaf7561" -> "sha256:53a2aa3d70cf952238877813a2406c59066eaf08b5ff175a5158670b2fd882ac" [label=""];
  "sha256:53a2aa3d70cf952238877813a2406c59066eaf08b5ff175a5158670b2fd882ac" -> "sha256:2ec6760966704f248cad9cf8ac9d15b7187dde51410ae6f0f9681a80ffddd9dc" [label=""];
  "sha256:2ec6760966704f248cad9cf8ac9d15b7187dde51410ae6f0f9681a80ffddd9dc" -> "sha256:2ab77838f20e50216ad8fac13d242c86e6537eabe6246f6c0c5d52811b559ab5" [label=""];
  "sha256:2ab77838f20e50216ad8fac13d242c86e6537eabe6246f6c0c5d52811b559ab5" -> "sha256:1d69bf591f4c8470d55296ce8be2c0dd2bd89ec6116073e7c917f804b3ce7f05" [label=""];
}

