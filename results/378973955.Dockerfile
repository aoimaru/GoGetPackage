[app/sources/378973955.Dockerfile]
digraph {
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" [label="docker-image://docker.io/library/python:3.7-alpine" shape="ellipse"];
  "sha256:de048f316891203fd3514c00b9b3af474cd336b2adea4c0dee88e6534152cc2a" [label="mkdir{path=/app}" shape="note"];
  "sha256:24e439d75db9de3474f3c99960a3cfe5054ae890500ea853bda574df635dbe53" [label="local://context" shape="ellipse"];
  "sha256:6bae853b3b31e955e5ad74cee1c248e3fcf66cab537e58dda23d81bb5f4e204e" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:6a0f83caa8f400d87307b663d2869ca8831096c4bd0f0402b96bfa17133420b3" [label="/bin/sh -c apk add --update --no-cache g++ gcc libxslt-dev" shape="box"];
  "sha256:874a7b95523b165fe42f8c8bbfd033eacddcb3f9a679e0f717ec340ad98ce47c" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:b5f0fb37b04b87d30f4752a5a44e412ceb1f60722760a4b7d660b51226f97ca9" [label="mkdir{path=/app/datahoarder-ui}" shape="note"];
  "sha256:f050b8f93d1abcd2a99a476af2d0d76dda8cc451d58a6c50ccabb64b678d2dac" [label="/bin/sh -c apk add --update nodejs nodejs-npm yarn" shape="box"];
  "sha256:1f8940a3bbe4f60ffc9b45cb4e8531b26af4dd93b99757fe23bbe45691b47816" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:2994f4f42c0bef64206aa53a3fc760b285497897e4bab7e1fbe09fdd8e0b0793" [label="/bin/sh -c yarn build" shape="box"];
  "sha256:6b8597fac3896bc93d71f3ae49b2591fcabf9fab58426bb5d3c64228d24021e4" [label="mkdir{path=/app}" shape="note"];
  "sha256:8f537124f96165d6160b5c55644847d31ad4557107132c038a20efb7a495bab2" [label="sha256:8f537124f96165d6160b5c55644847d31ad4557107132c038a20efb7a495bab2" shape="plaintext"];
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" -> "sha256:de048f316891203fd3514c00b9b3af474cd336b2adea4c0dee88e6534152cc2a" [label=""];
  "sha256:de048f316891203fd3514c00b9b3af474cd336b2adea4c0dee88e6534152cc2a" -> "sha256:6bae853b3b31e955e5ad74cee1c248e3fcf66cab537e58dda23d81bb5f4e204e" [label=""];
  "sha256:24e439d75db9de3474f3c99960a3cfe5054ae890500ea853bda574df635dbe53" -> "sha256:6bae853b3b31e955e5ad74cee1c248e3fcf66cab537e58dda23d81bb5f4e204e" [label=""];
  "sha256:6bae853b3b31e955e5ad74cee1c248e3fcf66cab537e58dda23d81bb5f4e204e" -> "sha256:6a0f83caa8f400d87307b663d2869ca8831096c4bd0f0402b96bfa17133420b3" [label=""];
  "sha256:6a0f83caa8f400d87307b663d2869ca8831096c4bd0f0402b96bfa17133420b3" -> "sha256:874a7b95523b165fe42f8c8bbfd033eacddcb3f9a679e0f717ec340ad98ce47c" [label=""];
  "sha256:874a7b95523b165fe42f8c8bbfd033eacddcb3f9a679e0f717ec340ad98ce47c" -> "sha256:b5f0fb37b04b87d30f4752a5a44e412ceb1f60722760a4b7d660b51226f97ca9" [label=""];
  "sha256:b5f0fb37b04b87d30f4752a5a44e412ceb1f60722760a4b7d660b51226f97ca9" -> "sha256:f050b8f93d1abcd2a99a476af2d0d76dda8cc451d58a6c50ccabb64b678d2dac" [label=""];
  "sha256:f050b8f93d1abcd2a99a476af2d0d76dda8cc451d58a6c50ccabb64b678d2dac" -> "sha256:1f8940a3bbe4f60ffc9b45cb4e8531b26af4dd93b99757fe23bbe45691b47816" [label=""];
  "sha256:1f8940a3bbe4f60ffc9b45cb4e8531b26af4dd93b99757fe23bbe45691b47816" -> "sha256:2994f4f42c0bef64206aa53a3fc760b285497897e4bab7e1fbe09fdd8e0b0793" [label=""];
  "sha256:2994f4f42c0bef64206aa53a3fc760b285497897e4bab7e1fbe09fdd8e0b0793" -> "sha256:6b8597fac3896bc93d71f3ae49b2591fcabf9fab58426bb5d3c64228d24021e4" [label=""];
  "sha256:6b8597fac3896bc93d71f3ae49b2591fcabf9fab58426bb5d3c64228d24021e4" -> "sha256:8f537124f96165d6160b5c55644847d31ad4557107132c038a20efb7a495bab2" [label=""];
}

