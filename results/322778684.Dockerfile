[app/sources/322778684.Dockerfile]
digraph {
  "sha256:8d6fd6ed4dc45cf1ce5e9134a6f9b7ed2723c48e159e0bee9b3dec780a189b3c" [label="docker-image://gcr.io/distroless/static:latest@sha256:c9320b754c2fa2cd2dea50993195f104a24f4c7ebe6e0297c6ddb40ce3679e7d" shape="ellipse"];
  "sha256:24860afafa447ee46de442d29a9fb113656923e37bc3c7c485f662fec23ad116" [label="mkdir{path=/app}" shape="note"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:f17ea781f11468654b6aa9a0bf2214b76ae253fc6318262ac2c8b44546838920" [label="/bin/sh -c go get github.com/golang/dep/cmd/dep" shape="box"];
  "sha256:497ca3c0f51e54654c4e4d1ef954ce46884fc59e6827a395469b17349a1437b1" [label="mkdir{path=/go/src/github.com/GoogleCloudPlatform/k8s-node-termination-handler}" shape="note"];
  "sha256:020c7fc7221714aa8fc53610d93b07046587ef151a780e8730054f76c98b99c0" [label="local://context" shape="ellipse"];
  "sha256:409e961afc65462557d301ff3ac7b370030037c3d27081d82ba5a69dba6a48a9" [label="copy{src=/, dest=/go/src/github.com/GoogleCloudPlatform/k8s-node-termination-handler/}" shape="note"];
  "sha256:c3dbd81ccdf4dc7cb75827f33e41b685906a2bc25368d141693aa83c7e5d4b5f" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -ldflags '-extldflags \"-static\"' -tags netgo -o node-termination-handler && go test ./..." shape="box"];
  "sha256:56154fe10efde145360f412c7f8c09c02c5126be5623944ec2877412ac5ba550" [label="copy{src=/go/src/github.com/GoogleCloudPlatform/k8s-node-termination-handler/node-termination-handler, dest=/app/}" shape="note"];
  "sha256:af5dddc94d521bfe82383accab5b5220919d5f1ac77d8c763298eac677916e7e" [label="sha256:af5dddc94d521bfe82383accab5b5220919d5f1ac77d8c763298eac677916e7e" shape="plaintext"];
  "sha256:8d6fd6ed4dc45cf1ce5e9134a6f9b7ed2723c48e159e0bee9b3dec780a189b3c" -> "sha256:24860afafa447ee46de442d29a9fb113656923e37bc3c7c485f662fec23ad116" [label=""];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:f17ea781f11468654b6aa9a0bf2214b76ae253fc6318262ac2c8b44546838920" [label=""];
  "sha256:f17ea781f11468654b6aa9a0bf2214b76ae253fc6318262ac2c8b44546838920" -> "sha256:497ca3c0f51e54654c4e4d1ef954ce46884fc59e6827a395469b17349a1437b1" [label=""];
  "sha256:497ca3c0f51e54654c4e4d1ef954ce46884fc59e6827a395469b17349a1437b1" -> "sha256:409e961afc65462557d301ff3ac7b370030037c3d27081d82ba5a69dba6a48a9" [label=""];
  "sha256:020c7fc7221714aa8fc53610d93b07046587ef151a780e8730054f76c98b99c0" -> "sha256:409e961afc65462557d301ff3ac7b370030037c3d27081d82ba5a69dba6a48a9" [label=""];
  "sha256:409e961afc65462557d301ff3ac7b370030037c3d27081d82ba5a69dba6a48a9" -> "sha256:c3dbd81ccdf4dc7cb75827f33e41b685906a2bc25368d141693aa83c7e5d4b5f" [label=""];
  "sha256:24860afafa447ee46de442d29a9fb113656923e37bc3c7c485f662fec23ad116" -> "sha256:56154fe10efde145360f412c7f8c09c02c5126be5623944ec2877412ac5ba550" [label=""];
  "sha256:c3dbd81ccdf4dc7cb75827f33e41b685906a2bc25368d141693aa83c7e5d4b5f" -> "sha256:56154fe10efde145360f412c7f8c09c02c5126be5623944ec2877412ac5ba550" [label=""];
  "sha256:56154fe10efde145360f412c7f8c09c02c5126be5623944ec2877412ac5ba550" -> "sha256:af5dddc94d521bfe82383accab5b5220919d5f1ac77d8c763298eac677916e7e" [label=""];
}

