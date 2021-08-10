[app/sources/355964501.Dockerfile]
digraph {
  "sha256:6deb26f03955e867146fc35d7eb4a6a900f737ea2a5a3096c43a19c7c8805fc8" [label="docker-image://docker.io/library/python:3.6-slim" shape="ellipse"];
  "sha256:c4c129e920a3dd53cc47b22ddb24b5d7869b365bcc280cb950df4012b34bd788" [label="/bin/sh -c mkdir -p /datasets/tiny" shape="box"];
  "sha256:bf0f76b0ae1e1f10e508b2d5f54cbd8ba646f4f62b5d33449aa5e5622db3c784" [label="local://context" shape="ellipse"];
  "sha256:333db32ac520b747b908b2db5ef9cccf112fa10dfa72ca9552a4002281a54bfa" [label="copy{src=/corpus.tar.bz2, dest=/datasets/tiny/}" shape="note"];
  "sha256:7f6425d16d26e020af0c11c7332d0ba30e4613de95dfc515b215f071181247e3" [label="copy{src=/config.pbtxt, dest=/datasets/tiny/}" shape="note"];
  "sha256:9505c1e0d70b6c9df18db181010179f85e290827051e81d9a5d6c39d2a4c3a17" [label="/bin/sh -c mkdir -p /clgen/bin" shape="box"];
  "sha256:49c9416f8a9e9fe5ae10b8df56032b22f673867b8a3110a4b01335e1a7140276" [label="copy{src=/clgen.tar.bz2, dest=/clgen/bin/}" shape="note"];
  "sha256:2c2cdd4e80f883934881ee947e8d29f4a2a1053b2805564b3d9752edd9e42b17" [label="sha256:2c2cdd4e80f883934881ee947e8d29f4a2a1053b2805564b3d9752edd9e42b17" shape="plaintext"];
  "sha256:6deb26f03955e867146fc35d7eb4a6a900f737ea2a5a3096c43a19c7c8805fc8" -> "sha256:c4c129e920a3dd53cc47b22ddb24b5d7869b365bcc280cb950df4012b34bd788" [label=""];
  "sha256:c4c129e920a3dd53cc47b22ddb24b5d7869b365bcc280cb950df4012b34bd788" -> "sha256:333db32ac520b747b908b2db5ef9cccf112fa10dfa72ca9552a4002281a54bfa" [label=""];
  "sha256:bf0f76b0ae1e1f10e508b2d5f54cbd8ba646f4f62b5d33449aa5e5622db3c784" -> "sha256:333db32ac520b747b908b2db5ef9cccf112fa10dfa72ca9552a4002281a54bfa" [label=""];
  "sha256:333db32ac520b747b908b2db5ef9cccf112fa10dfa72ca9552a4002281a54bfa" -> "sha256:7f6425d16d26e020af0c11c7332d0ba30e4613de95dfc515b215f071181247e3" [label=""];
  "sha256:bf0f76b0ae1e1f10e508b2d5f54cbd8ba646f4f62b5d33449aa5e5622db3c784" -> "sha256:7f6425d16d26e020af0c11c7332d0ba30e4613de95dfc515b215f071181247e3" [label=""];
  "sha256:7f6425d16d26e020af0c11c7332d0ba30e4613de95dfc515b215f071181247e3" -> "sha256:9505c1e0d70b6c9df18db181010179f85e290827051e81d9a5d6c39d2a4c3a17" [label=""];
  "sha256:9505c1e0d70b6c9df18db181010179f85e290827051e81d9a5d6c39d2a4c3a17" -> "sha256:49c9416f8a9e9fe5ae10b8df56032b22f673867b8a3110a4b01335e1a7140276" [label=""];
  "sha256:bf0f76b0ae1e1f10e508b2d5f54cbd8ba646f4f62b5d33449aa5e5622db3c784" -> "sha256:49c9416f8a9e9fe5ae10b8df56032b22f673867b8a3110a4b01335e1a7140276" [label=""];
  "sha256:49c9416f8a9e9fe5ae10b8df56032b22f673867b8a3110a4b01335e1a7140276" -> "sha256:2c2cdd4e80f883934881ee947e8d29f4a2a1053b2805564b3d9752edd9e42b17" [label=""];
}

