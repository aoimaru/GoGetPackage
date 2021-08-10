[app/sources/313371262.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:ff55aee5ef5805cb3e1957be18c28c7353bdb81dba3c8c2cb4c8384448ca788f" [label="local://context" shape="ellipse"];
  "sha256:4d8ae365c49af317af6f093fad8cd062537d000f1ac117301d84df6859f60180" [label="docker-image://docker.io/library/golang:1.9-alpine" shape="ellipse"];
  "sha256:9a42dab417f6b1733a9dfae2efbd0d928994af6b64ceb30efb4d0adaf8ed818b" [label="copy{src=/, dest=/go/src/github.com/banzaicloud/pvc-operator}" shape="note"];
  "sha256:8d9447c47ee5e834f15a29326633099105dc2fdcd1c62b4b98591f962544e3bf" [label="mkdir{path=/go/src/github.com/banzaicloud/pvc-operator}" shape="note"];
  "sha256:c27b82fde82ba1a8a54c0d1ae33ede39591b69246a3d09781114caf475dfedf7" [label="/bin/sh -c go build -o /tmp/pvc-operator cmd/pvc-operator/main.go" shape="box"];
  "sha256:591b3dfb1d7aaa74e2c91bc79ebe6451ae51919d45efd6c213b465f5cec8bf66" [label="copy{src=/tmp/pvc-operator, dest=/usr/local/bin/pvc-operator}" shape="note"];
  "sha256:1215223dd79fe56c0b5c6fd04c259e259bfc085ae4e7ff9ade39964298ceb66e" [label="/bin/sh -c apk update && apk add ca-certificates" shape="box"];
  "sha256:0c6cdbfa069e5b5ce58a03e97d47470ee74b705495ba41c29fa0792fb52d5383" [label="/bin/sh -c adduser -D pvc-operator" shape="box"];
  "sha256:11814d9b76dfedd91a157b2dd01323473cb946d125b5c28467cc6e95ae236bee" [label="sha256:11814d9b76dfedd91a157b2dd01323473cb946d125b5c28467cc6e95ae236bee" shape="plaintext"];
  "sha256:4d8ae365c49af317af6f093fad8cd062537d000f1ac117301d84df6859f60180" -> "sha256:9a42dab417f6b1733a9dfae2efbd0d928994af6b64ceb30efb4d0adaf8ed818b" [label=""];
  "sha256:ff55aee5ef5805cb3e1957be18c28c7353bdb81dba3c8c2cb4c8384448ca788f" -> "sha256:9a42dab417f6b1733a9dfae2efbd0d928994af6b64ceb30efb4d0adaf8ed818b" [label=""];
  "sha256:9a42dab417f6b1733a9dfae2efbd0d928994af6b64ceb30efb4d0adaf8ed818b" -> "sha256:8d9447c47ee5e834f15a29326633099105dc2fdcd1c62b4b98591f962544e3bf" [label=""];
  "sha256:8d9447c47ee5e834f15a29326633099105dc2fdcd1c62b4b98591f962544e3bf" -> "sha256:c27b82fde82ba1a8a54c0d1ae33ede39591b69246a3d09781114caf475dfedf7" [label=""];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:591b3dfb1d7aaa74e2c91bc79ebe6451ae51919d45efd6c213b465f5cec8bf66" [label=""];
  "sha256:c27b82fde82ba1a8a54c0d1ae33ede39591b69246a3d09781114caf475dfedf7" -> "sha256:591b3dfb1d7aaa74e2c91bc79ebe6451ae51919d45efd6c213b465f5cec8bf66" [label=""];
  "sha256:591b3dfb1d7aaa74e2c91bc79ebe6451ae51919d45efd6c213b465f5cec8bf66" -> "sha256:1215223dd79fe56c0b5c6fd04c259e259bfc085ae4e7ff9ade39964298ceb66e" [label=""];
  "sha256:1215223dd79fe56c0b5c6fd04c259e259bfc085ae4e7ff9ade39964298ceb66e" -> "sha256:0c6cdbfa069e5b5ce58a03e97d47470ee74b705495ba41c29fa0792fb52d5383" [label=""];
  "sha256:0c6cdbfa069e5b5ce58a03e97d47470ee74b705495ba41c29fa0792fb52d5383" -> "sha256:11814d9b76dfedd91a157b2dd01323473cb946d125b5c28467cc6e95ae236bee" [label=""];
}

