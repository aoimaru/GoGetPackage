[app/sources/469460704.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:3d3d3958a041d82452b4d05537309b63c6da5969b3199b767382948e6429d510" [label="/bin/sh -c apk update --no-cache && apk add ca-certificates" shape="box"];
  "sha256:dad2673ce949a59f3b92007cba8fb74e58dba8f7c21ada7c5aede8028df224e8" [label="local://context" shape="ellipse"];
  "sha256:39eebff3f10bf534e7685188019316da1a6089887a0b7cf77fd41de540aa1015" [label="copy{src=/efs-provisioner, dest=/}" shape="note"];
  "sha256:f62b717923de30519f9692a46599dd1d13a38b09af0fc8fb9107ffcfa28c53aa" [label="sha256:f62b717923de30519f9692a46599dd1d13a38b09af0fc8fb9107ffcfa28c53aa" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:3d3d3958a041d82452b4d05537309b63c6da5969b3199b767382948e6429d510" [label=""];
  "sha256:3d3d3958a041d82452b4d05537309b63c6da5969b3199b767382948e6429d510" -> "sha256:39eebff3f10bf534e7685188019316da1a6089887a0b7cf77fd41de540aa1015" [label=""];
  "sha256:dad2673ce949a59f3b92007cba8fb74e58dba8f7c21ada7c5aede8028df224e8" -> "sha256:39eebff3f10bf534e7685188019316da1a6089887a0b7cf77fd41de540aa1015" [label=""];
  "sha256:39eebff3f10bf534e7685188019316da1a6089887a0b7cf77fd41de540aa1015" -> "sha256:f62b717923de30519f9692a46599dd1d13a38b09af0fc8fb9107ffcfa28c53aa" [label=""];
}

