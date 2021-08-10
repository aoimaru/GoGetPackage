[app/sources/132499680.Dockerfile]
digraph {
  "sha256:2863c77d38f73508050fd402b2322719e62fec5356750211ba380da8628264e4" [label="docker-image://docker.io/library/amazonlinux:2" shape="ellipse"];
  "sha256:437369c4f563fa3f14ec6cec9cff669912cfcdb76ef21d3989f0681f8f542577" [label="/bin/sh -c yum install util-linux amazon-efs-utils -y" shape="box"];
  "sha256:565c6b17dfbc803f9dd813b6c5ca3d6e6a3a4348a99543002ba8b003135766fe" [label="docker-image://docker.io/library/golang:1.11.4-stretch" shape="ellipse"];
  "sha256:3c72243b60ed84d3c476858d9d4aa58ab33af302eb9245179542a2045b44ce85" [label="mkdir{path=/go/src/github.com/kubernetes-sigs/aws-efs-csi-driver}" shape="note"];
  "sha256:c1a798335d4aeb175ce2e7f19bb6f6b0599028bb8c972d0f837ffee343349ee6" [label="local://context" shape="ellipse"];
  "sha256:0ec2afc5da9aa448b2a7c5f517db76149b38ba24012db85478c0d5227c2b7420" [label="copy{src=/, dest=/go/src/github.com/kubernetes-sigs/aws-efs-csi-driver/}" shape="note"];
  "sha256:a3ff5f3cdea03034486e37600af80a8c0f57c59161ab9306a34f8b81ff54c3cd" [label="/bin/sh -c make" shape="box"];
  "sha256:80594512b1ec34e7607465f8ef2db052f5964a622a06bb5ea7c4709f02d2389a" [label="copy{src=/go/src/github.com/kubernetes-sigs/aws-efs-csi-driver/bin/aws-efs-csi-driver, dest=/bin/aws-efs-csi-driver}" shape="note"];
  "sha256:97e83d0d81a7b152044da1324a30e63510356b0bdc0f595783f095b8d9d87114" [label="copy{src=/THIRD-PARTY, dest=/}" shape="note"];
  "sha256:3586f2460a1096c34e57a81d937a672077c8a0558199f01861a6cd9bee79bba8" [label="sha256:3586f2460a1096c34e57a81d937a672077c8a0558199f01861a6cd9bee79bba8" shape="plaintext"];
  "sha256:2863c77d38f73508050fd402b2322719e62fec5356750211ba380da8628264e4" -> "sha256:437369c4f563fa3f14ec6cec9cff669912cfcdb76ef21d3989f0681f8f542577" [label=""];
  "sha256:565c6b17dfbc803f9dd813b6c5ca3d6e6a3a4348a99543002ba8b003135766fe" -> "sha256:3c72243b60ed84d3c476858d9d4aa58ab33af302eb9245179542a2045b44ce85" [label=""];
  "sha256:3c72243b60ed84d3c476858d9d4aa58ab33af302eb9245179542a2045b44ce85" -> "sha256:0ec2afc5da9aa448b2a7c5f517db76149b38ba24012db85478c0d5227c2b7420" [label=""];
  "sha256:c1a798335d4aeb175ce2e7f19bb6f6b0599028bb8c972d0f837ffee343349ee6" -> "sha256:0ec2afc5da9aa448b2a7c5f517db76149b38ba24012db85478c0d5227c2b7420" [label=""];
  "sha256:0ec2afc5da9aa448b2a7c5f517db76149b38ba24012db85478c0d5227c2b7420" -> "sha256:a3ff5f3cdea03034486e37600af80a8c0f57c59161ab9306a34f8b81ff54c3cd" [label=""];
  "sha256:437369c4f563fa3f14ec6cec9cff669912cfcdb76ef21d3989f0681f8f542577" -> "sha256:80594512b1ec34e7607465f8ef2db052f5964a622a06bb5ea7c4709f02d2389a" [label=""];
  "sha256:a3ff5f3cdea03034486e37600af80a8c0f57c59161ab9306a34f8b81ff54c3cd" -> "sha256:80594512b1ec34e7607465f8ef2db052f5964a622a06bb5ea7c4709f02d2389a" [label=""];
  "sha256:80594512b1ec34e7607465f8ef2db052f5964a622a06bb5ea7c4709f02d2389a" -> "sha256:97e83d0d81a7b152044da1324a30e63510356b0bdc0f595783f095b8d9d87114" [label=""];
  "sha256:c1a798335d4aeb175ce2e7f19bb6f6b0599028bb8c972d0f837ffee343349ee6" -> "sha256:97e83d0d81a7b152044da1324a30e63510356b0bdc0f595783f095b8d9d87114" [label=""];
  "sha256:97e83d0d81a7b152044da1324a30e63510356b0bdc0f595783f095b8d9d87114" -> "sha256:3586f2460a1096c34e57a81d937a672077c8a0558199f01861a6cd9bee79bba8" [label=""];
}

