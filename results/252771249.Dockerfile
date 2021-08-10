[app/sources/252771249.Dockerfile]
digraph {
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" [label="docker-image://docker.io/library/python:3-alpine" shape="ellipse"];
  "sha256:f091219764c5a217944e334b8bd20fb574f6715eb159f8636f3cfdbb8f5e782a" [label="mkdir{path=/app}" shape="note"];
  "sha256:e614aa7f3f30c57f7a9543dfa31e356996153bfcad3cf59b7ff0659b803a89c4" [label="local://context" shape="ellipse"];
  "sha256:5d6e7dd1db92cd01d387066d88f20f50ceab695a2f3e3069a7aa802865d40e2d" [label="copy{src=/--from=build-env, dest=/app/},copy{src=/GoRunner, dest=/app/}" shape="note"];
  "sha256:ef865bdde43943e2fc34b5e99b2f488dbcffcd9b1c7692abc142cbaf6df721f9" [label="copy{src=/runtime.py, dest=/app/runtime.py}" shape="note"];
  "sha256:1af8e40f5655a5a5d3bcc2db3201a250beedd620608b7cbb7efbdc85c81b9bf3" [label="/bin/sh -c cd /app/runtime.py && python3 setup.py install" shape="box"];
  "sha256:9a0033924f5d00d67564eac80d4731115d7dc7f11b563abfdc7ae524a7f988ab" [label="sha256:9a0033924f5d00d67564eac80d4731115d7dc7f11b563abfdc7ae524a7f988ab" shape="plaintext"];
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" -> "sha256:f091219764c5a217944e334b8bd20fb574f6715eb159f8636f3cfdbb8f5e782a" [label=""];
  "sha256:f091219764c5a217944e334b8bd20fb574f6715eb159f8636f3cfdbb8f5e782a" -> "sha256:5d6e7dd1db92cd01d387066d88f20f50ceab695a2f3e3069a7aa802865d40e2d" [label=""];
  "sha256:e614aa7f3f30c57f7a9543dfa31e356996153bfcad3cf59b7ff0659b803a89c4" -> "sha256:5d6e7dd1db92cd01d387066d88f20f50ceab695a2f3e3069a7aa802865d40e2d" [label=""];
  "sha256:5d6e7dd1db92cd01d387066d88f20f50ceab695a2f3e3069a7aa802865d40e2d" -> "sha256:ef865bdde43943e2fc34b5e99b2f488dbcffcd9b1c7692abc142cbaf6df721f9" [label=""];
  "sha256:e614aa7f3f30c57f7a9543dfa31e356996153bfcad3cf59b7ff0659b803a89c4" -> "sha256:ef865bdde43943e2fc34b5e99b2f488dbcffcd9b1c7692abc142cbaf6df721f9" [label=""];
  "sha256:ef865bdde43943e2fc34b5e99b2f488dbcffcd9b1c7692abc142cbaf6df721f9" -> "sha256:1af8e40f5655a5a5d3bcc2db3201a250beedd620608b7cbb7efbdc85c81b9bf3" [label=""];
  "sha256:1af8e40f5655a5a5d3bcc2db3201a250beedd620608b7cbb7efbdc85c81b9bf3" -> "sha256:9a0033924f5d00d67564eac80d4731115d7dc7f11b563abfdc7ae524a7f988ab" [label=""];
}

