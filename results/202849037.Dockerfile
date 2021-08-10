[app/sources/202849037.Dockerfile]
digraph {
  "sha256:55835338edd8c513e23b78d52d4f2ec48b631654b66e7d67fa4c506910496fa0" [label="docker-image://marketplace.gcr.io/google/ubuntu1804:latest" shape="ellipse"];
  "sha256:9eb6775bea876a662a585f76dfe44ef8d9240599ea19798c80a78c2939990141" [label="local://context" shape="ellipse"];
  "sha256:49004bb517f01d55d33ca6b72c5f5a7c6e125b8d02efaa91d672bf0769fe144f" [label="copy{src=/build.sh, dest=/}" shape="note"];
  "sha256:7c86c08760796643de432c034f572e955c882f7306b8b63a1de9ae53f9f6aba4" [label="bash ./build.sh" shape="box"];
  "sha256:48ef3d00b176896d51dfc88bf8d0f37d142e644a052b520d5e2b4dd98df4a6d9" [label="sha256:48ef3d00b176896d51dfc88bf8d0f37d142e644a052b520d5e2b4dd98df4a6d9" shape="plaintext"];
  "sha256:55835338edd8c513e23b78d52d4f2ec48b631654b66e7d67fa4c506910496fa0" -> "sha256:49004bb517f01d55d33ca6b72c5f5a7c6e125b8d02efaa91d672bf0769fe144f" [label=""];
  "sha256:9eb6775bea876a662a585f76dfe44ef8d9240599ea19798c80a78c2939990141" -> "sha256:49004bb517f01d55d33ca6b72c5f5a7c6e125b8d02efaa91d672bf0769fe144f" [label=""];
  "sha256:49004bb517f01d55d33ca6b72c5f5a7c6e125b8d02efaa91d672bf0769fe144f" -> "sha256:7c86c08760796643de432c034f572e955c882f7306b8b63a1de9ae53f9f6aba4" [label=""];
  "sha256:7c86c08760796643de432c034f572e955c882f7306b8b63a1de9ae53f9f6aba4" -> "sha256:48ef3d00b176896d51dfc88bf8d0f37d142e644a052b520d5e2b4dd98df4a6d9" [label=""];
}

