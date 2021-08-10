[app/sources/165675253.Dockerfile]
digraph {
  "sha256:4d8ae365c49af317af6f093fad8cd062537d000f1ac117301d84df6859f60180" [label="docker-image://docker.io/library/golang:1.9-alpine" shape="ellipse"];
  "sha256:d05167ff66f909d01da05b6420a938385ab3193c2efae66700b71d98c31b587b" [label="/bin/sh -c apk --no-cache add git" shape="box"];
  "sha256:c380f621be32798853d7c726380a031fe5ed3ec3b37dbc9c3ddfcae71102c095" [label="mkdir{path=/go/src/github.com/go/helloworld}" shape="note"];
  "sha256:0c1cb3abf1e0f62eab476e5bb432fbc2b47710484f147f61a693192dabbce6ae" [label="local://context" shape="ellipse"];
  "sha256:9b205e4ed487e238919b536a2cdfe22475af21c0cc414c7ea396661567bd76f9" [label="copy{src=/app.go, dest=/go/src/github.com/go/helloworld/}" shape="note"];
  "sha256:cd3ff487fa8801fb697754954218b29e5855b444c8de286939c184d5cace33cc" [label="/bin/sh -c go get -d -v github.com/go-sql-driver/mysql   && CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app ." shape="box"];
  "sha256:fc1fa0a6c21bdf762887d8d06ee36eb81f8ff70ad7c1fb2fe2bcdec8079c3410" [label="sha256:fc1fa0a6c21bdf762887d8d06ee36eb81f8ff70ad7c1fb2fe2bcdec8079c3410" shape="plaintext"];
  "sha256:4d8ae365c49af317af6f093fad8cd062537d000f1ac117301d84df6859f60180" -> "sha256:d05167ff66f909d01da05b6420a938385ab3193c2efae66700b71d98c31b587b" [label=""];
  "sha256:d05167ff66f909d01da05b6420a938385ab3193c2efae66700b71d98c31b587b" -> "sha256:c380f621be32798853d7c726380a031fe5ed3ec3b37dbc9c3ddfcae71102c095" [label=""];
  "sha256:c380f621be32798853d7c726380a031fe5ed3ec3b37dbc9c3ddfcae71102c095" -> "sha256:9b205e4ed487e238919b536a2cdfe22475af21c0cc414c7ea396661567bd76f9" [label=""];
  "sha256:0c1cb3abf1e0f62eab476e5bb432fbc2b47710484f147f61a693192dabbce6ae" -> "sha256:9b205e4ed487e238919b536a2cdfe22475af21c0cc414c7ea396661567bd76f9" [label=""];
  "sha256:9b205e4ed487e238919b536a2cdfe22475af21c0cc414c7ea396661567bd76f9" -> "sha256:cd3ff487fa8801fb697754954218b29e5855b444c8de286939c184d5cace33cc" [label=""];
  "sha256:cd3ff487fa8801fb697754954218b29e5855b444c8de286939c184d5cace33cc" -> "sha256:fc1fa0a6c21bdf762887d8d06ee36eb81f8ff70ad7c1fb2fe2bcdec8079c3410" [label=""];
}

