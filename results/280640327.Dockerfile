[app/sources/280640327.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:3d3d3958a041d82452b4d05537309b63c6da5969b3199b767382948e6429d510" [label="/bin/sh -c apk update --no-cache && apk add ca-certificates" shape="box"];
  "sha256:e361050c19754325c6489fccd5dc7a78c4f75680fce181b86e66b833e20eddcf" [label="local://context" shape="ellipse"];
  "sha256:9ac7a2ab81f406fe532d5fd7c2a221817de0ebef45cf20a9e4ad4938e14c7491" [label="copy{src=/efs-provisioner, dest=/}" shape="note"];
  "sha256:f49713b136dd33abc13d06aaff9df79c67c21d48a2359ca99ca82fc53ee25eb4" [label="sha256:f49713b136dd33abc13d06aaff9df79c67c21d48a2359ca99ca82fc53ee25eb4" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:3d3d3958a041d82452b4d05537309b63c6da5969b3199b767382948e6429d510" [label=""];
  "sha256:3d3d3958a041d82452b4d05537309b63c6da5969b3199b767382948e6429d510" -> "sha256:9ac7a2ab81f406fe532d5fd7c2a221817de0ebef45cf20a9e4ad4938e14c7491" [label=""];
  "sha256:e361050c19754325c6489fccd5dc7a78c4f75680fce181b86e66b833e20eddcf" -> "sha256:9ac7a2ab81f406fe532d5fd7c2a221817de0ebef45cf20a9e4ad4938e14c7491" [label=""];
  "sha256:9ac7a2ab81f406fe532d5fd7c2a221817de0ebef45cf20a9e4ad4938e14c7491" -> "sha256:f49713b136dd33abc13d06aaff9df79c67c21d48a2359ca99ca82fc53ee25eb4" [label=""];
}

