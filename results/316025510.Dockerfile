[app/sources/316025510.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:cf7380dd3019020f8bbd0bbb0a6678555cf9766b7f0cfcaa43c7ef4477e95c69" [label="/bin/sh -c apk add --no-cache         ca-certificates         ffmpeg         openssl" shape="box"];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" [label="docker-image://docker.io/library/golang:1.11-alpine" shape="ellipse"];
  "sha256:c4b53ed9a85a95b0336bc3fdf84d0e0cf63da7171a964337f09ad420a307dc19" [label="/bin/sh -c apk add --no-cache         build-base         git &&     go get github.com/gorilla/websocket &&     go get golang.org/x/crypto/sha3 &&     go get github.com/mattn/go-sqlite3 &&     go get github.com/gin-gonic/gin" shape="box"];
  "sha256:8dcb41588220537a9625eb31242764f47a3e02db2c65ee2128a1f812abca4efd" [label="local://context" shape="ellipse"];
  "sha256:2bb1ecf96e706ca800aa3f1dd6019381b24d22a59134af92cc2a4fb15de1aa63" [label="copy{src=/, dest=/tmp/livedl}" shape="note"];
  "sha256:d2b3900bfa5c98f03f9e9d6d0ef380808baead0d8b5cfd6e7d63328f4a14a364" [label="/bin/sh -c cd /tmp/livedl &&     go build src/livedl.go" shape="box"];
  "sha256:3d3cd85e34a5688ac2fb2b55958875b370b1051c3ec0ee4a288df99e463fbd70" [label="copy{src=/tmp/livedl/livedl, dest=/usr/local/bin/}" shape="note"];
  "sha256:d906433aa099f9bad7764418d1bf63504d203bfdb2753b5e7005fd69a965df82" [label="mkdir{path=/livedl}" shape="note"];
  "sha256:81b3d9668c4cc88a16115684c40fbe56971d14161401083493e497d00328eb73" [label="sha256:81b3d9668c4cc88a16115684c40fbe56971d14161401083493e497d00328eb73" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:cf7380dd3019020f8bbd0bbb0a6678555cf9766b7f0cfcaa43c7ef4477e95c69" [label=""];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" -> "sha256:c4b53ed9a85a95b0336bc3fdf84d0e0cf63da7171a964337f09ad420a307dc19" [label=""];
  "sha256:c4b53ed9a85a95b0336bc3fdf84d0e0cf63da7171a964337f09ad420a307dc19" -> "sha256:2bb1ecf96e706ca800aa3f1dd6019381b24d22a59134af92cc2a4fb15de1aa63" [label=""];
  "sha256:8dcb41588220537a9625eb31242764f47a3e02db2c65ee2128a1f812abca4efd" -> "sha256:2bb1ecf96e706ca800aa3f1dd6019381b24d22a59134af92cc2a4fb15de1aa63" [label=""];
  "sha256:2bb1ecf96e706ca800aa3f1dd6019381b24d22a59134af92cc2a4fb15de1aa63" -> "sha256:d2b3900bfa5c98f03f9e9d6d0ef380808baead0d8b5cfd6e7d63328f4a14a364" [label=""];
  "sha256:cf7380dd3019020f8bbd0bbb0a6678555cf9766b7f0cfcaa43c7ef4477e95c69" -> "sha256:3d3cd85e34a5688ac2fb2b55958875b370b1051c3ec0ee4a288df99e463fbd70" [label=""];
  "sha256:d2b3900bfa5c98f03f9e9d6d0ef380808baead0d8b5cfd6e7d63328f4a14a364" -> "sha256:3d3cd85e34a5688ac2fb2b55958875b370b1051c3ec0ee4a288df99e463fbd70" [label=""];
  "sha256:3d3cd85e34a5688ac2fb2b55958875b370b1051c3ec0ee4a288df99e463fbd70" -> "sha256:d906433aa099f9bad7764418d1bf63504d203bfdb2753b5e7005fd69a965df82" [label=""];
  "sha256:d906433aa099f9bad7764418d1bf63504d203bfdb2753b5e7005fd69a965df82" -> "sha256:81b3d9668c4cc88a16115684c40fbe56971d14161401083493e497d00328eb73" [label=""];
}

