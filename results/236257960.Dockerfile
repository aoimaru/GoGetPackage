[app/sources/236257960.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:f17a8242cc1cf8063d285ad5fe2c98e6bbe69dcc6a82e031e60e0d6e870a9e16" [label="mkdir{path=/app}" shape="note"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:5a7be406de603da5e71814981a25dc3c43515b41ab7260d2484ce50e6e175d0e" [label="local://context" shape="ellipse"];
  "sha256:34c2363aae8bad74966638a1810defdc115ff2109ceb5ebb8d3b20f722cce053" [label="copy{src=/, dest=/go/src/github.com/kubeflow/katib}" shape="note"];
  "sha256:4cf17754efd2b8ed4e3e2719f2db277de8c81cf40e498185e60627ec5e7e8bca" [label="mkdir{path=/go/src/github.com/kubeflow/katib/cmd/suggestion/hyperband}" shape="note"];
  "sha256:2c8a8e88ec981b4f0236db0ceaa21c6d8310830e6490f8aa3483999a07f4795a" [label="/bin/sh -c go build -o hyperband ./v1alpha1" shape="box"];
  "sha256:b1b3d7a37337376be24182fd31d52ca63a4d8b8e515b2e6b215cb54a40a5fc8b" [label="copy{src=/go/src/github.com/kubeflow/katib/cmd/suggestion/hyperband, dest=/app/}" shape="note"];
  "sha256:ba76751172856d628e2a2eaaac0b2645daf068b9bb9c245edcf0f3ff82db9b7a" [label="sha256:ba76751172856d628e2a2eaaac0b2645daf068b9bb9c245edcf0f3ff82db9b7a" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:f17a8242cc1cf8063d285ad5fe2c98e6bbe69dcc6a82e031e60e0d6e870a9e16" [label=""];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:34c2363aae8bad74966638a1810defdc115ff2109ceb5ebb8d3b20f722cce053" [label=""];
  "sha256:5a7be406de603da5e71814981a25dc3c43515b41ab7260d2484ce50e6e175d0e" -> "sha256:34c2363aae8bad74966638a1810defdc115ff2109ceb5ebb8d3b20f722cce053" [label=""];
  "sha256:34c2363aae8bad74966638a1810defdc115ff2109ceb5ebb8d3b20f722cce053" -> "sha256:4cf17754efd2b8ed4e3e2719f2db277de8c81cf40e498185e60627ec5e7e8bca" [label=""];
  "sha256:4cf17754efd2b8ed4e3e2719f2db277de8c81cf40e498185e60627ec5e7e8bca" -> "sha256:2c8a8e88ec981b4f0236db0ceaa21c6d8310830e6490f8aa3483999a07f4795a" [label=""];
  "sha256:f17a8242cc1cf8063d285ad5fe2c98e6bbe69dcc6a82e031e60e0d6e870a9e16" -> "sha256:b1b3d7a37337376be24182fd31d52ca63a4d8b8e515b2e6b215cb54a40a5fc8b" [label=""];
  "sha256:2c8a8e88ec981b4f0236db0ceaa21c6d8310830e6490f8aa3483999a07f4795a" -> "sha256:b1b3d7a37337376be24182fd31d52ca63a4d8b8e515b2e6b215cb54a40a5fc8b" [label=""];
  "sha256:b1b3d7a37337376be24182fd31d52ca63a4d8b8e515b2e6b215cb54a40a5fc8b" -> "sha256:ba76751172856d628e2a2eaaac0b2645daf068b9bb9c245edcf0f3ff82db9b7a" [label=""];
}

