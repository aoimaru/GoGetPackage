[app/sources/275223342.Dockerfile]
digraph {
  "sha256:13bc32dfbc85dfb52b54cd30d4c84c6d3c1b03d571cac4c527354de30744e48d" [label="docker-image://docker.io/lagoon/oc:latest" shape="ellipse"];
  "sha256:5445caf39cf11afd6edeabace7579269d37524e4dea67c23b7834347f0da8d8c" [label="/bin/sh -c apk add --no-cache tini jq openssl bash curl nodejs nodejs-npm     && npm config set unsafe-perm true     && npm -g install jwtgen" shape="box"];
  "sha256:e4f21b252cb91763cb8e6eafbbcb82a582c64103c225de10c78226d6a3b728f2" [label="local://context" shape="ellipse"];
  "sha256:6bcd4a0b22e801bb87136bc6fc494792c636662bba185e65a3d0af33170ccc56" [label="copy{src=/create_jwt.sh, dest=/},copy{src=/idle-services.sh, dest=/},copy{src=/idle-clis.sh, dest=/}" shape="note"];
  "sha256:96eb7c09cdea126b9ab10b2209afc04d1927f9b3d0f4a1f583c097104f5d8c23" [label="sha256:96eb7c09cdea126b9ab10b2209afc04d1927f9b3d0f4a1f583c097104f5d8c23" shape="plaintext"];
  "sha256:13bc32dfbc85dfb52b54cd30d4c84c6d3c1b03d571cac4c527354de30744e48d" -> "sha256:5445caf39cf11afd6edeabace7579269d37524e4dea67c23b7834347f0da8d8c" [label=""];
  "sha256:5445caf39cf11afd6edeabace7579269d37524e4dea67c23b7834347f0da8d8c" -> "sha256:6bcd4a0b22e801bb87136bc6fc494792c636662bba185e65a3d0af33170ccc56" [label=""];
  "sha256:e4f21b252cb91763cb8e6eafbbcb82a582c64103c225de10c78226d6a3b728f2" -> "sha256:6bcd4a0b22e801bb87136bc6fc494792c636662bba185e65a3d0af33170ccc56" [label=""];
  "sha256:6bcd4a0b22e801bb87136bc6fc494792c636662bba185e65a3d0af33170ccc56" -> "sha256:96eb7c09cdea126b9ab10b2209afc04d1927f9b3d0f4a1f583c097104f5d8c23" [label=""];
}

