[app/sources/275460801.Dockerfile]
digraph {
  "sha256:dda95aa9ebbe89e428276c3d70125a88394fd7cc936a7ce1effe2bd49f3dc126" [label="local://context" shape="ellipse"];
  "sha256:00042d5a3ce14c12fd8f8bcc8a1d63688dba7de6e2b693b2a0c3b982d713f84b" [label="docker-image://docker.io/library/golang:1.7.5" shape="ellipse"];
  "sha256:781e92b5ea515c20bb1945fba77a5d33d470e9ff9d35c7f8a09babc258339449" [label="/bin/sh -c mkdir -p /go/src/github.com/kenfdev/faas-rancher/" shape="box"];
  "sha256:30ced0f4fc1222bf48417c1fa045a06295bc6bd3646976faef4465a680c5e94b" [label="mkdir{path=/go/src/github.com/kenfdev/faas-rancher}" shape="note"];
  "sha256:ce94506543edc132ceb8d2c39789a0dffb27f98ff67fe46e76db9a6f75d42968" [label="copy{src=/vendor, dest=/go/src/github.com/kenfdev/faas-rancher/vendor}" shape="note"];
  "sha256:d37d4f72779bce9c060df4df3c3e104a806366122e34b9c2ee39fbfde187de8d" [label="copy{src=/handlers, dest=/go/src/github.com/kenfdev/faas-rancher/handlers}" shape="note"];
  "sha256:53ce29dd636cf1a2641cfeee5d3801c43926cbee7ffa00fca124f45e22317047" [label="copy{src=/types, dest=/go/src/github.com/kenfdev/faas-rancher/types}" shape="note"];
  "sha256:0005ffd0013409063486c846f68b77716e4fe0e021115770732d5f29e5497983" [label="copy{src=/rancher, dest=/go/src/github.com/kenfdev/faas-rancher/rancher}" shape="note"];
  "sha256:5a3920f108bcf1fc448682a2a37aad806e905dcb084dba1e0c1e0ce3dee7fbc2" [label="copy{src=/server.go, dest=/go/src/github.com/kenfdev/faas-rancher/}" shape="note"];
  "sha256:86120d5552a05d1e021a9da60a7160f7ff387aa0827a7630e3b913810174ced9" [label="/bin/sh -c gofmt -l -d $(find . -type f -name '*.go' -not -path \"./vendor/*\")   && CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o faas-rancher ." shape="box"];
  "sha256:5b9885dd1d28bda0b2a8850295f1dc544c8ea31d5c7310e5db04f95e2436ef8f" [label="sha256:5b9885dd1d28bda0b2a8850295f1dc544c8ea31d5c7310e5db04f95e2436ef8f" shape="plaintext"];
  "sha256:00042d5a3ce14c12fd8f8bcc8a1d63688dba7de6e2b693b2a0c3b982d713f84b" -> "sha256:781e92b5ea515c20bb1945fba77a5d33d470e9ff9d35c7f8a09babc258339449" [label=""];
  "sha256:781e92b5ea515c20bb1945fba77a5d33d470e9ff9d35c7f8a09babc258339449" -> "sha256:30ced0f4fc1222bf48417c1fa045a06295bc6bd3646976faef4465a680c5e94b" [label=""];
  "sha256:30ced0f4fc1222bf48417c1fa045a06295bc6bd3646976faef4465a680c5e94b" -> "sha256:ce94506543edc132ceb8d2c39789a0dffb27f98ff67fe46e76db9a6f75d42968" [label=""];
  "sha256:dda95aa9ebbe89e428276c3d70125a88394fd7cc936a7ce1effe2bd49f3dc126" -> "sha256:ce94506543edc132ceb8d2c39789a0dffb27f98ff67fe46e76db9a6f75d42968" [label=""];
  "sha256:ce94506543edc132ceb8d2c39789a0dffb27f98ff67fe46e76db9a6f75d42968" -> "sha256:d37d4f72779bce9c060df4df3c3e104a806366122e34b9c2ee39fbfde187de8d" [label=""];
  "sha256:dda95aa9ebbe89e428276c3d70125a88394fd7cc936a7ce1effe2bd49f3dc126" -> "sha256:d37d4f72779bce9c060df4df3c3e104a806366122e34b9c2ee39fbfde187de8d" [label=""];
  "sha256:d37d4f72779bce9c060df4df3c3e104a806366122e34b9c2ee39fbfde187de8d" -> "sha256:53ce29dd636cf1a2641cfeee5d3801c43926cbee7ffa00fca124f45e22317047" [label=""];
  "sha256:dda95aa9ebbe89e428276c3d70125a88394fd7cc936a7ce1effe2bd49f3dc126" -> "sha256:53ce29dd636cf1a2641cfeee5d3801c43926cbee7ffa00fca124f45e22317047" [label=""];
  "sha256:53ce29dd636cf1a2641cfeee5d3801c43926cbee7ffa00fca124f45e22317047" -> "sha256:0005ffd0013409063486c846f68b77716e4fe0e021115770732d5f29e5497983" [label=""];
  "sha256:dda95aa9ebbe89e428276c3d70125a88394fd7cc936a7ce1effe2bd49f3dc126" -> "sha256:0005ffd0013409063486c846f68b77716e4fe0e021115770732d5f29e5497983" [label=""];
  "sha256:0005ffd0013409063486c846f68b77716e4fe0e021115770732d5f29e5497983" -> "sha256:5a3920f108bcf1fc448682a2a37aad806e905dcb084dba1e0c1e0ce3dee7fbc2" [label=""];
  "sha256:dda95aa9ebbe89e428276c3d70125a88394fd7cc936a7ce1effe2bd49f3dc126" -> "sha256:5a3920f108bcf1fc448682a2a37aad806e905dcb084dba1e0c1e0ce3dee7fbc2" [label=""];
  "sha256:5a3920f108bcf1fc448682a2a37aad806e905dcb084dba1e0c1e0ce3dee7fbc2" -> "sha256:86120d5552a05d1e021a9da60a7160f7ff387aa0827a7630e3b913810174ced9" [label=""];
  "sha256:86120d5552a05d1e021a9da60a7160f7ff387aa0827a7630e3b913810174ced9" -> "sha256:5b9885dd1d28bda0b2a8850295f1dc544c8ea31d5c7310e5db04f95e2436ef8f" [label=""];
}

