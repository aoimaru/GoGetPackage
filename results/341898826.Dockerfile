[app/sources/341898826.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:b8d943bcff2e1cc12b10fd00224ec0a4457614450e8eaf2edf23506277841024" [label="local://context" shape="ellipse"];
  "sha256:3ab98ed1797319e13eab13a92cd440cb6e066000dd621bea0d0b44171e9db49c" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:db203c436c9f36b3a3da64d20fab9309249a6fcb80455b8cc23142bae301bf19" [label="pip install requests" shape="box"];
  "sha256:329b34f17a2ac03edc93d5bd063426e37412fe2c03b893ac7e196827e4ac937a" [label="pip install os" shape="box"];
  "sha256:b6224973baeaeb984c42dc4e7b15af9b6593b7c4c1810b4506ce4d9a85bd7b77" [label="sha256:b6224973baeaeb984c42dc4e7b15af9b6593b7c4c1810b4506ce4d9a85bd7b77" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:3ab98ed1797319e13eab13a92cd440cb6e066000dd621bea0d0b44171e9db49c" [label=""];
  "sha256:b8d943bcff2e1cc12b10fd00224ec0a4457614450e8eaf2edf23506277841024" -> "sha256:3ab98ed1797319e13eab13a92cd440cb6e066000dd621bea0d0b44171e9db49c" [label=""];
  "sha256:3ab98ed1797319e13eab13a92cd440cb6e066000dd621bea0d0b44171e9db49c" -> "sha256:db203c436c9f36b3a3da64d20fab9309249a6fcb80455b8cc23142bae301bf19" [label=""];
  "sha256:db203c436c9f36b3a3da64d20fab9309249a6fcb80455b8cc23142bae301bf19" -> "sha256:329b34f17a2ac03edc93d5bd063426e37412fe2c03b893ac7e196827e4ac937a" [label=""];
  "sha256:329b34f17a2ac03edc93d5bd063426e37412fe2c03b893ac7e196827e4ac937a" -> "sha256:b6224973baeaeb984c42dc4e7b15af9b6593b7c4c1810b4506ce4d9a85bd7b77" [label=""];
}

