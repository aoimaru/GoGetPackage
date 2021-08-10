[app/sources/252780464.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:648a7630167d31ecb5b7a12b919acabf27021836de5287c89268df8949a83615" [label="mkdir{path=/opt/cvallance/mongo-k8s-sidecar}" shape="note"];
  "sha256:a548650812fd6787f569d0ca2548f43b6914bce58221755960ae30ab9d0c237e" [label="local://context" shape="ellipse"];
  "sha256:0c199d2768a81a78de44354e9c498d0a1d4a32a1c7af9164e37ea6669ae0963e" [label="copy{src=/package.json, dest=/opt/cvallance/mongo-k8s-sidecar/package.json}" shape="note"];
  "sha256:c70a6e75b95b1e0c4418bfc4b341eae3675afa2998e82a6d61a4e10cd661ae17" [label="/bin/sh -c npm install" shape="box"];
  "sha256:de51e95d6cb394d11300cfed14f397ec203578857f995c320d23f794a9e5d488" [label="copy{src=/src, dest=/opt/cvallance/mongo-k8s-sidecar/src}" shape="note"];
  "sha256:4de1cb8f0d5429009c0627fcc88c07f9de5f62443fe37ccf0f8060a560e3b1d7" [label="copy{src=/.foreverignore, dest=/opt/cvallance/.foreverignore}" shape="note"];
  "sha256:119189e0fb9b3fef03d85b8ee0486be2ec0b985480bc43206df6bc3ca726af92" [label="sha256:119189e0fb9b3fef03d85b8ee0486be2ec0b985480bc43206df6bc3ca726af92" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:648a7630167d31ecb5b7a12b919acabf27021836de5287c89268df8949a83615" [label=""];
  "sha256:648a7630167d31ecb5b7a12b919acabf27021836de5287c89268df8949a83615" -> "sha256:0c199d2768a81a78de44354e9c498d0a1d4a32a1c7af9164e37ea6669ae0963e" [label=""];
  "sha256:a548650812fd6787f569d0ca2548f43b6914bce58221755960ae30ab9d0c237e" -> "sha256:0c199d2768a81a78de44354e9c498d0a1d4a32a1c7af9164e37ea6669ae0963e" [label=""];
  "sha256:0c199d2768a81a78de44354e9c498d0a1d4a32a1c7af9164e37ea6669ae0963e" -> "sha256:c70a6e75b95b1e0c4418bfc4b341eae3675afa2998e82a6d61a4e10cd661ae17" [label=""];
  "sha256:c70a6e75b95b1e0c4418bfc4b341eae3675afa2998e82a6d61a4e10cd661ae17" -> "sha256:de51e95d6cb394d11300cfed14f397ec203578857f995c320d23f794a9e5d488" [label=""];
  "sha256:a548650812fd6787f569d0ca2548f43b6914bce58221755960ae30ab9d0c237e" -> "sha256:de51e95d6cb394d11300cfed14f397ec203578857f995c320d23f794a9e5d488" [label=""];
  "sha256:de51e95d6cb394d11300cfed14f397ec203578857f995c320d23f794a9e5d488" -> "sha256:4de1cb8f0d5429009c0627fcc88c07f9de5f62443fe37ccf0f8060a560e3b1d7" [label=""];
  "sha256:a548650812fd6787f569d0ca2548f43b6914bce58221755960ae30ab9d0c237e" -> "sha256:4de1cb8f0d5429009c0627fcc88c07f9de5f62443fe37ccf0f8060a560e3b1d7" [label=""];
  "sha256:4de1cb8f0d5429009c0627fcc88c07f9de5f62443fe37ccf0f8060a560e3b1d7" -> "sha256:119189e0fb9b3fef03d85b8ee0486be2ec0b985480bc43206df6bc3ca726af92" [label=""];
}

