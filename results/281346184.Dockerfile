[app/sources/281346184.Dockerfile]
digraph {
  "sha256:1bd0a028ecd64926b2e87e7683409fc95cc1d1d01e2f9f1aef0f4a5b0bd7b5cf" [label="docker-image://docker.io/library/corebuild:latest" shape="ellipse"];
  "sha256:9696c1dc84e50a09a8d719ba0e5d2a43311a07404128607f078c03fc51538cd7" [label="copy{src=/go/src/github.com/notegio/openrelay/bin/terms, dest=/terms}" shape="note"];
  "sha256:efd209a8a7af9ce765d4ed2722dc1505fc0031615bb612641b37b12b0c7e0510" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/ca-certificates.crt}" shape="note"];
  "sha256:75bbdfcaad7eb06c30e622f9bacd459f47a9af7fc381af9a01959e7994d1e037" [label="sha256:75bbdfcaad7eb06c30e622f9bacd459f47a9af7fc381af9a01959e7994d1e037" shape="plaintext"];
  "sha256:1bd0a028ecd64926b2e87e7683409fc95cc1d1d01e2f9f1aef0f4a5b0bd7b5cf" -> "sha256:9696c1dc84e50a09a8d719ba0e5d2a43311a07404128607f078c03fc51538cd7" [label=""];
  "sha256:9696c1dc84e50a09a8d719ba0e5d2a43311a07404128607f078c03fc51538cd7" -> "sha256:efd209a8a7af9ce765d4ed2722dc1505fc0031615bb612641b37b12b0c7e0510" [label=""];
  "sha256:1bd0a028ecd64926b2e87e7683409fc95cc1d1d01e2f9f1aef0f4a5b0bd7b5cf" -> "sha256:efd209a8a7af9ce765d4ed2722dc1505fc0031615bb612641b37b12b0c7e0510" [label=""];
  "sha256:efd209a8a7af9ce765d4ed2722dc1505fc0031615bb612641b37b12b0c7e0510" -> "sha256:75bbdfcaad7eb06c30e622f9bacd459f47a9af7fc381af9a01959e7994d1e037" [label=""];
}

