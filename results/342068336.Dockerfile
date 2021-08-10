[app/sources/342068336.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:1bed3ff573103dd401e7d0da63bb430d88a644b85541462c61be13e0747523d9" [label="local://context" shape="ellipse"];
  "sha256:5fc0b88ca771ae3e116f928b0d59bccdff4629e8b66800c6c880d0b7ed7c5143" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:15892448df01b57e55fe9ddabd7dbe0ef3926f59585fdcc5cfe7c3a1120b58ec" [label="pip install pycallgraph" shape="box"];
  "sha256:79ebecd7986fcb872853a1e72cbdeab3454a965ad0cbf2d65735c7da834c4af5" [label="pip install pycallgraph" shape="box"];
  "sha256:411daf3a3e5731b36e8372d01d8f97a9e2d3bcdc753e8058db95b6350f791358" [label="sha256:411daf3a3e5731b36e8372d01d8f97a9e2d3bcdc753e8058db95b6350f791358" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:5fc0b88ca771ae3e116f928b0d59bccdff4629e8b66800c6c880d0b7ed7c5143" [label=""];
  "sha256:1bed3ff573103dd401e7d0da63bb430d88a644b85541462c61be13e0747523d9" -> "sha256:5fc0b88ca771ae3e116f928b0d59bccdff4629e8b66800c6c880d0b7ed7c5143" [label=""];
  "sha256:5fc0b88ca771ae3e116f928b0d59bccdff4629e8b66800c6c880d0b7ed7c5143" -> "sha256:15892448df01b57e55fe9ddabd7dbe0ef3926f59585fdcc5cfe7c3a1120b58ec" [label=""];
  "sha256:15892448df01b57e55fe9ddabd7dbe0ef3926f59585fdcc5cfe7c3a1120b58ec" -> "sha256:79ebecd7986fcb872853a1e72cbdeab3454a965ad0cbf2d65735c7da834c4af5" [label=""];
  "sha256:79ebecd7986fcb872853a1e72cbdeab3454a965ad0cbf2d65735c7da834c4af5" -> "sha256:411daf3a3e5731b36e8372d01d8f97a9e2d3bcdc753e8058db95b6350f791358" [label=""];
}

