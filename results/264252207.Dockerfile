[app/sources/264252207.Dockerfile]
digraph {
  "sha256:b8a419a70ea0f047af7f6610ede00e65e9add9cf894ef11e432a40075514d7aa" [label="docker-image://docker.io/library/openjdk:8u131-jre-alpine" shape="ellipse"];
  "sha256:1caeff21233cea199f79f2aacf46bda643fe1c8689a11d046a1beb972aa6d281" [label="local://context" shape="ellipse"];
  "sha256:face2ab99eb34f5f6825ad1bc7050da95a9e1f4a247ec031ed58fae686a22c15" [label="copy{src=/target/lib/*, dest=/app/lib/}" shape="note"];
  "sha256:b8059d66a61931c51081e303f17a1fb3c2659aee21e29cfc5b960127b0a1e440" [label="copy{src=/target/guestbook-ui-0.0.1-SNAPSHOT.jar, dest=/app/app.jar}" shape="note"];
  "sha256:7e1d7186a2b473f420fd33f185937a30edc0cca84852fbc9e67d37454b9b6270" [label="sha256:7e1d7186a2b473f420fd33f185937a30edc0cca84852fbc9e67d37454b9b6270" shape="plaintext"];
  "sha256:b8a419a70ea0f047af7f6610ede00e65e9add9cf894ef11e432a40075514d7aa" -> "sha256:face2ab99eb34f5f6825ad1bc7050da95a9e1f4a247ec031ed58fae686a22c15" [label=""];
  "sha256:1caeff21233cea199f79f2aacf46bda643fe1c8689a11d046a1beb972aa6d281" -> "sha256:face2ab99eb34f5f6825ad1bc7050da95a9e1f4a247ec031ed58fae686a22c15" [label=""];
  "sha256:face2ab99eb34f5f6825ad1bc7050da95a9e1f4a247ec031ed58fae686a22c15" -> "sha256:b8059d66a61931c51081e303f17a1fb3c2659aee21e29cfc5b960127b0a1e440" [label=""];
  "sha256:1caeff21233cea199f79f2aacf46bda643fe1c8689a11d046a1beb972aa6d281" -> "sha256:b8059d66a61931c51081e303f17a1fb3c2659aee21e29cfc5b960127b0a1e440" [label=""];
  "sha256:b8059d66a61931c51081e303f17a1fb3c2659aee21e29cfc5b960127b0a1e440" -> "sha256:7e1d7186a2b473f420fd33f185937a30edc0cca84852fbc9e67d37454b9b6270" [label=""];
}

