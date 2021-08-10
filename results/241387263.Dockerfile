[app/sources/241387263.Dockerfile]
digraph {
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" [label="docker-image://docker.io/library/python:3-alpine" shape="ellipse"];
  "sha256:42b4d2105011ce76413af69dc1076234b01642c25d69bcc3bb2bfbfe7405cacf" [label="/bin/sh -c pip install proselint" shape="box"];
  "sha256:85d0886e1c3decbd07e1f4047455270860ba440f0c8512c86c0f991383ecf343" [label="sha256:85d0886e1c3decbd07e1f4047455270860ba440f0c8512c86c0f991383ecf343" shape="plaintext"];
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" -> "sha256:42b4d2105011ce76413af69dc1076234b01642c25d69bcc3bb2bfbfe7405cacf" [label=""];
  "sha256:42b4d2105011ce76413af69dc1076234b01642c25d69bcc3bb2bfbfe7405cacf" -> "sha256:85d0886e1c3decbd07e1f4047455270860ba440f0c8512c86c0f991383ecf343" [label=""];
}

