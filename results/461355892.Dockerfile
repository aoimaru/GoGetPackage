[app/sources/461355892.Dockerfile]
digraph {
  "sha256:52e04ec9e1693e0907107028d5dc60b73f019239204447f3c78279acc2819714" [label="docker-image://docker.io/library/python:3.6.2-slim" shape="ellipse"];
  "sha256:60fdc9a48bd70edb4ad521fd5ded1ceee8273ad436d50bd8605afa536857534e" [label="/bin/sh -c apt-get update && apt-get install -y make gcc libssl-dev" shape="box"];
  "sha256:a78560e334e72a1ec719fc57c385bd85d36d94eef37f5c7d110c369d7300d272" [label="local://context" shape="ellipse"];
  "sha256:f06b6aa12b06290b690c4d591c58ac47c76649fff5e2047f918c24a7c75c964a" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:e43d929ff34d78ce29f6a4951d27caf8721929b3a175ca361ceac300b3a9dc31" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:b44fac2ebc38cbb41e5bebd82f0b80fb921525747b6f06a031f578362ee95b07" [label="mkdir{path=/src}" shape="note"];
  "sha256:c3cccb378646bff01bf9375941c784b5f1167f722129dc2847b21e5e3c7799dd" [label="sha256:c3cccb378646bff01bf9375941c784b5f1167f722129dc2847b21e5e3c7799dd" shape="plaintext"];
  "sha256:52e04ec9e1693e0907107028d5dc60b73f019239204447f3c78279acc2819714" -> "sha256:60fdc9a48bd70edb4ad521fd5ded1ceee8273ad436d50bd8605afa536857534e" [label=""];
  "sha256:60fdc9a48bd70edb4ad521fd5ded1ceee8273ad436d50bd8605afa536857534e" -> "sha256:f06b6aa12b06290b690c4d591c58ac47c76649fff5e2047f918c24a7c75c964a" [label=""];
  "sha256:a78560e334e72a1ec719fc57c385bd85d36d94eef37f5c7d110c369d7300d272" -> "sha256:f06b6aa12b06290b690c4d591c58ac47c76649fff5e2047f918c24a7c75c964a" [label=""];
  "sha256:f06b6aa12b06290b690c4d591c58ac47c76649fff5e2047f918c24a7c75c964a" -> "sha256:e43d929ff34d78ce29f6a4951d27caf8721929b3a175ca361ceac300b3a9dc31" [label=""];
  "sha256:e43d929ff34d78ce29f6a4951d27caf8721929b3a175ca361ceac300b3a9dc31" -> "sha256:b44fac2ebc38cbb41e5bebd82f0b80fb921525747b6f06a031f578362ee95b07" [label=""];
  "sha256:b44fac2ebc38cbb41e5bebd82f0b80fb921525747b6f06a031f578362ee95b07" -> "sha256:c3cccb378646bff01bf9375941c784b5f1167f722129dc2847b21e5e3c7799dd" [label=""];
}

