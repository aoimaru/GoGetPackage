[app/sources/382443653.Dockerfile]
digraph {
  "sha256:aaa1fa21456ce8f3be35ad5d91528d4eb2d8214af814988dec325892675d2bab" [label="local://context" shape="ellipse"];
  "sha256:8d6fd6ed4dc45cf1ce5e9134a6f9b7ed2723c48e159e0bee9b3dec780a189b3c" [label="docker-image://gcr.io/distroless/static:latest@sha256:c9320b754c2fa2cd2dea50993195f104a24f4c7ebe6e0297c6ddb40ce3679e7d" shape="ellipse"];
  "sha256:6a2befb590153fb99fa4ca417392141c6e2210a15f5beb82c5f8127c2753b44a" [label="copy{src=/bin/csi-resizer, dest=/csi-resizer}" shape="note"];
  "sha256:17cdf95a077b0fca60df14a2508f212469c5e473467e4084e7d2bfacbc39034b" [label="sha256:17cdf95a077b0fca60df14a2508f212469c5e473467e4084e7d2bfacbc39034b" shape="plaintext"];
  "sha256:8d6fd6ed4dc45cf1ce5e9134a6f9b7ed2723c48e159e0bee9b3dec780a189b3c" -> "sha256:6a2befb590153fb99fa4ca417392141c6e2210a15f5beb82c5f8127c2753b44a" [label=""];
  "sha256:aaa1fa21456ce8f3be35ad5d91528d4eb2d8214af814988dec325892675d2bab" -> "sha256:6a2befb590153fb99fa4ca417392141c6e2210a15f5beb82c5f8127c2753b44a" [label=""];
  "sha256:6a2befb590153fb99fa4ca417392141c6e2210a15f5beb82c5f8127c2753b44a" -> "sha256:17cdf95a077b0fca60df14a2508f212469c5e473467e4084e7d2bfacbc39034b" [label=""];
}

