[app/sources/308228066.Dockerfile]
digraph {
  "sha256:8d6fd6ed4dc45cf1ce5e9134a6f9b7ed2723c48e159e0bee9b3dec780a189b3c" [label="docker-image://gcr.io/distroless/static:latest@sha256:c9320b754c2fa2cd2dea50993195f104a24f4c7ebe6e0297c6ddb40ce3679e7d" shape="ellipse"];
  "sha256:cf3257f07a99891df693f758c6b83a23528e8a659cd1d9b6d7a6d78bdd830bc6" [label="local://context" shape="ellipse"];
  "sha256:0222ea3e847e7d6444c39f74c9d5e3f19675c6b23ec963944c4138ec5f6fc796" [label="copy{src=/bin/livenessprobe, dest=/livenessprobe}" shape="note"];
  "sha256:db30e5b3bf591c285290f3197275606d13d5d60d0c1597250b74513785f9481a" [label="sha256:db30e5b3bf591c285290f3197275606d13d5d60d0c1597250b74513785f9481a" shape="plaintext"];
  "sha256:8d6fd6ed4dc45cf1ce5e9134a6f9b7ed2723c48e159e0bee9b3dec780a189b3c" -> "sha256:0222ea3e847e7d6444c39f74c9d5e3f19675c6b23ec963944c4138ec5f6fc796" [label=""];
  "sha256:cf3257f07a99891df693f758c6b83a23528e8a659cd1d9b6d7a6d78bdd830bc6" -> "sha256:0222ea3e847e7d6444c39f74c9d5e3f19675c6b23ec963944c4138ec5f6fc796" [label=""];
  "sha256:0222ea3e847e7d6444c39f74c9d5e3f19675c6b23ec963944c4138ec5f6fc796" -> "sha256:db30e5b3bf591c285290f3197275606d13d5d60d0c1597250b74513785f9481a" [label=""];
}

