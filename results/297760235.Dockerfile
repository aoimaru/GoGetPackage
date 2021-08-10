[app/sources/297760235.Dockerfile]
digraph {
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:bbe04a2ec9a3697c2a29a535fe34d3b4e802a62e341d95fa072d3ba5384a8000" [label="mkdir{path=/go/src/github.com/msales/kage}" shape="note"];
  "sha256:68fda7e393f1f67d39f5f89129939d45f39a258244ef06cb02c75c6626c1b0aa" [label="local://context" shape="ellipse"];
  "sha256:94709ebec985ef99b80a85333e493a875708b4d07947e4c63bfa6d5661763b32" [label="copy{src=/, dest=/go/src/github.com/msales/kage/}" shape="note"];
  "sha256:7a999441feb4c3797b3fc7209d910b640731223ddc630396f21b1adce2aa1d46" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -ldflags \"-s -X main.Version=$(git describe --tags --always)\" -o kage ./cmd/kage" shape="box"];
  "sha256:710f1281dadfbca3158ebe4594389db7a182d94704a55647cf7a8e7f5b25da1a" [label="copy{src=/go/src/github.com/msales/kage/kage, dest=/}" shape="note"];
  "sha256:701f77a4d2364eba34588ed7729d5b3329ef97df22dc9a73a5d09694202140e8" [label="copy{src=/etc/ssl/certs, dest=/etc/ssl/certs}" shape="note"];
  "sha256:9e6ade2cf887eae16df9887e3525d773823ce32dfd4aced952ff999091d511ef" [label="sha256:9e6ade2cf887eae16df9887e3525d773823ce32dfd4aced952ff999091d511ef" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:bbe04a2ec9a3697c2a29a535fe34d3b4e802a62e341d95fa072d3ba5384a8000" [label=""];
  "sha256:bbe04a2ec9a3697c2a29a535fe34d3b4e802a62e341d95fa072d3ba5384a8000" -> "sha256:94709ebec985ef99b80a85333e493a875708b4d07947e4c63bfa6d5661763b32" [label=""];
  "sha256:68fda7e393f1f67d39f5f89129939d45f39a258244ef06cb02c75c6626c1b0aa" -> "sha256:94709ebec985ef99b80a85333e493a875708b4d07947e4c63bfa6d5661763b32" [label=""];
  "sha256:94709ebec985ef99b80a85333e493a875708b4d07947e4c63bfa6d5661763b32" -> "sha256:7a999441feb4c3797b3fc7209d910b640731223ddc630396f21b1adce2aa1d46" [label=""];
  "sha256:7a999441feb4c3797b3fc7209d910b640731223ddc630396f21b1adce2aa1d46" -> "sha256:710f1281dadfbca3158ebe4594389db7a182d94704a55647cf7a8e7f5b25da1a" [label=""];
  "sha256:710f1281dadfbca3158ebe4594389db7a182d94704a55647cf7a8e7f5b25da1a" -> "sha256:701f77a4d2364eba34588ed7729d5b3329ef97df22dc9a73a5d09694202140e8" [label=""];
  "sha256:7a999441feb4c3797b3fc7209d910b640731223ddc630396f21b1adce2aa1d46" -> "sha256:701f77a4d2364eba34588ed7729d5b3329ef97df22dc9a73a5d09694202140e8" [label=""];
  "sha256:701f77a4d2364eba34588ed7729d5b3329ef97df22dc9a73a5d09694202140e8" -> "sha256:9e6ade2cf887eae16df9887e3525d773823ce32dfd4aced952ff999091d511ef" [label=""];
}

