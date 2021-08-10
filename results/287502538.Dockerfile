[app/sources/287502538.Dockerfile]
[33mWARN[0m[0002] reference for unknown type: application/octet-stream  [33mdigest[0m="sha256:99668503de157252ba311f570f036490602095f2620c46cb407d3d2dd88aeb6e" [33mmediatype[0m=application/octet-stream [33msize[0m=4698
digraph {
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" [label="docker-image://docker.io/library/golang:1.5" shape="ellipse"];
  "sha256:4b3cd5b86a65088791d01dca8ef9142939344345277491d52a9ef9701f7cd253" [label="local://context" shape="ellipse"];
  "sha256:1a1be853653e0260494e8ad0852ec2d5c281d251fc0d2c58b339d6db2596bf0e" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:9f4aff7cd63fd335628f098b4b1da849939823f510544a046df33ce4db4f36f7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:e5f8b9a623d3125c7306130ad3491feb2cec25292885a62356395c0652d138d9" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:dc1546c30d2a98477b324ac6ad5c6b8314daa29bf4b45abdf42d963e3e18ebc2" [label="sha256:dc1546c30d2a98477b324ac6ad5c6b8314daa29bf4b45abdf42d963e3e18ebc2" shape="plaintext"];
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" -> "sha256:1a1be853653e0260494e8ad0852ec2d5c281d251fc0d2c58b339d6db2596bf0e" [label=""];
  "sha256:4b3cd5b86a65088791d01dca8ef9142939344345277491d52a9ef9701f7cd253" -> "sha256:1a1be853653e0260494e8ad0852ec2d5c281d251fc0d2c58b339d6db2596bf0e" [label=""];
  "sha256:1a1be853653e0260494e8ad0852ec2d5c281d251fc0d2c58b339d6db2596bf0e" -> "sha256:9f4aff7cd63fd335628f098b4b1da849939823f510544a046df33ce4db4f36f7" [label=""];
  "sha256:9f4aff7cd63fd335628f098b4b1da849939823f510544a046df33ce4db4f36f7" -> "sha256:e5f8b9a623d3125c7306130ad3491feb2cec25292885a62356395c0652d138d9" [label=""];
  "sha256:e5f8b9a623d3125c7306130ad3491feb2cec25292885a62356395c0652d138d9" -> "sha256:dc1546c30d2a98477b324ac6ad5c6b8314daa29bf4b45abdf42d963e3e18ebc2" [label=""];
}

