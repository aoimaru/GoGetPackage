[app/sources/465651608.Dockerfile]
digraph {
  "sha256:38c21611320cfa49ceeb4cda17a0b879b09382516d0f54a35b1e225928168851" [label="docker-image://docker.io/library/golang:1.7.4-alpine" shape="ellipse"];
  "sha256:b03f7d95b0900363b42132a2ccafea883e08f286a0efb0c069f3dd9b90674e07" [label="/bin/sh -c apk add --update git make" shape="box"];
  "sha256:454bbf08ab518e2f3c2cdb4287efe7289b4bb7aa2275029fe298ade556a14fa3" [label="local://context" shape="ellipse"];
  "sha256:ee83e9b9b64743b1b96d2bd2988168527a23ce058b1bfa6c8bc731f06efdfd9d" [label="copy{src=/, dest=/go/src/github.com/odg0318/aws-ec2-price}" shape="note"];
  "sha256:270e7a8d229ac15ba141e8087d273c9222c9bc94cc5207298e374688152e46e2" [label="/bin/sh -c cd /go/src/github.com/odg0318/aws-ec2-price && make build" shape="box"];
  "sha256:78b52877d71415dcf0125492c531f6e1bccdd6f6dc06f281c6152e13a3d74224" [label="mkdir{path=/go/bin}" shape="note"];
  "sha256:7015ca6e5d3bba944a3719a1f30cd435438fb5f605ece82470197e5608929fbc" [label="sha256:7015ca6e5d3bba944a3719a1f30cd435438fb5f605ece82470197e5608929fbc" shape="plaintext"];
  "sha256:38c21611320cfa49ceeb4cda17a0b879b09382516d0f54a35b1e225928168851" -> "sha256:b03f7d95b0900363b42132a2ccafea883e08f286a0efb0c069f3dd9b90674e07" [label=""];
  "sha256:b03f7d95b0900363b42132a2ccafea883e08f286a0efb0c069f3dd9b90674e07" -> "sha256:ee83e9b9b64743b1b96d2bd2988168527a23ce058b1bfa6c8bc731f06efdfd9d" [label=""];
  "sha256:454bbf08ab518e2f3c2cdb4287efe7289b4bb7aa2275029fe298ade556a14fa3" -> "sha256:ee83e9b9b64743b1b96d2bd2988168527a23ce058b1bfa6c8bc731f06efdfd9d" [label=""];
  "sha256:ee83e9b9b64743b1b96d2bd2988168527a23ce058b1bfa6c8bc731f06efdfd9d" -> "sha256:270e7a8d229ac15ba141e8087d273c9222c9bc94cc5207298e374688152e46e2" [label=""];
  "sha256:270e7a8d229ac15ba141e8087d273c9222c9bc94cc5207298e374688152e46e2" -> "sha256:78b52877d71415dcf0125492c531f6e1bccdd6f6dc06f281c6152e13a3d74224" [label=""];
  "sha256:78b52877d71415dcf0125492c531f6e1bccdd6f6dc06f281c6152e13a3d74224" -> "sha256:7015ca6e5d3bba944a3719a1f30cd435438fb5f605ece82470197e5608929fbc" [label=""];
}

