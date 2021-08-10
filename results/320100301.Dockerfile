[app/sources/320100301.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:018728713bc45301c9d45f3b723fa6ca8b160bfcf03ef1b9b622eb913a6488a1" [label="/bin/sh -c buildDeps='                ca-certificates                openssl        '        && apk --no-cache add --update        python3        $buildDeps        && wget https://github.com/luismartingarcia/protocol/archive/master.zip        && unzip master.zip        && cd protocol-master && python3 setup.py install        && apk del --purge $buildDeps" shape="box"];
  "sha256:f6cc821858b6df91c78f2d7feefa0934af66a3c4f3cc3eaf960595697b342267" [label="sha256:f6cc821858b6df91c78f2d7feefa0934af66a3c4f3cc3eaf960595697b342267" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:018728713bc45301c9d45f3b723fa6ca8b160bfcf03ef1b9b622eb913a6488a1" [label=""];
  "sha256:018728713bc45301c9d45f3b723fa6ca8b160bfcf03ef1b9b622eb913a6488a1" -> "sha256:f6cc821858b6df91c78f2d7feefa0934af66a3c4f3cc3eaf960595697b342267" [label=""];
}

