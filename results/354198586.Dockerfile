[app/sources/354198586.Dockerfile]
digraph {
  "sha256:e4f26e9fc77749c339721a021c4cb0e9aa2bf127ca09606f1ca912543c05418f" [label="docker-image://k8s.gcr.io/nginx-slim:0.6@sha256:0fe2b10615928443ea2b75934fb80bfa94fa9aab195a8e2e6e1b0d6c240dfcae" shape="ellipse"];
  "sha256:b2e49d512bfe03fc6ac46bf77b19166a3dd321bdc9b498cfd8b2038dd6930e87" [label="local://context" shape="ellipse"];
  "sha256:142d5229afbd0a4ffc389363a493f912638ce4a5ee6011134a620ad9d9ad33b2" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:e3d3863f8f192c1f2ae7596a30bb3c8db8ed527ccbd5e4c162531c178b274e65" [label="copy{src=/README.md, dest=/README.md}" shape="note"];
  "sha256:f9fe394c9fb16ea4907dd8b1db1ca4e5f6abf99d7a9913faa21df5d6590f96f4" [label="sha256:f9fe394c9fb16ea4907dd8b1db1ca4e5f6abf99d7a9913faa21df5d6590f96f4" shape="plaintext"];
  "sha256:e4f26e9fc77749c339721a021c4cb0e9aa2bf127ca09606f1ca912543c05418f" -> "sha256:142d5229afbd0a4ffc389363a493f912638ce4a5ee6011134a620ad9d9ad33b2" [label=""];
  "sha256:b2e49d512bfe03fc6ac46bf77b19166a3dd321bdc9b498cfd8b2038dd6930e87" -> "sha256:142d5229afbd0a4ffc389363a493f912638ce4a5ee6011134a620ad9d9ad33b2" [label=""];
  "sha256:142d5229afbd0a4ffc389363a493f912638ce4a5ee6011134a620ad9d9ad33b2" -> "sha256:e3d3863f8f192c1f2ae7596a30bb3c8db8ed527ccbd5e4c162531c178b274e65" [label=""];
  "sha256:b2e49d512bfe03fc6ac46bf77b19166a3dd321bdc9b498cfd8b2038dd6930e87" -> "sha256:e3d3863f8f192c1f2ae7596a30bb3c8db8ed527ccbd5e4c162531c178b274e65" [label=""];
  "sha256:e3d3863f8f192c1f2ae7596a30bb3c8db8ed527ccbd5e4c162531c178b274e65" -> "sha256:f9fe394c9fb16ea4907dd8b1db1ca4e5f6abf99d7a9913faa21df5d6590f96f4" [label=""];
}

