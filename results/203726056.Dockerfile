[app/sources/203726056.Dockerfile]
[33mWARN[0m[0002] reference for unknown type: application/octet-stream  [33mdigest[0m="sha256:99668503de157252ba311f570f036490602095f2620c46cb407d3d2dd88aeb6e" [33mmediatype[0m=application/octet-stream [33msize[0m=4698
digraph {
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" [label="docker-image://docker.io/library/golang:1.5" shape="ellipse"];
  "sha256:0a968ad47f5848548464d70925954d8429d3c53e0b88b6df12f8f2adbedbfa07" [label="local://context" shape="ellipse"];
  "sha256:4726187ff8f880e199a97448380c0f01c7292ee7e0ace9fbc31b216ba162399a" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:161ae1ec1cdc4d29333d8552ad829c8db037f40d5eeef5590009bd9d3af06020" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:fbf50fc04fb4a308f2d0df1120784298e81db333012934213f712cb1613a127c" [label="sha256:fbf50fc04fb4a308f2d0df1120784298e81db333012934213f712cb1613a127c" shape="plaintext"];
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" -> "sha256:4726187ff8f880e199a97448380c0f01c7292ee7e0ace9fbc31b216ba162399a" [label=""];
  "sha256:0a968ad47f5848548464d70925954d8429d3c53e0b88b6df12f8f2adbedbfa07" -> "sha256:4726187ff8f880e199a97448380c0f01c7292ee7e0ace9fbc31b216ba162399a" [label=""];
  "sha256:4726187ff8f880e199a97448380c0f01c7292ee7e0ace9fbc31b216ba162399a" -> "sha256:161ae1ec1cdc4d29333d8552ad829c8db037f40d5eeef5590009bd9d3af06020" [label=""];
  "sha256:161ae1ec1cdc4d29333d8552ad829c8db037f40d5eeef5590009bd9d3af06020" -> "sha256:fbf50fc04fb4a308f2d0df1120784298e81db333012934213f712cb1613a127c" [label=""];
}

