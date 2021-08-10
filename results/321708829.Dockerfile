[app/sources/321708829.Dockerfile]
digraph {
  "sha256:f52641396e8fcad3dd0570d682cacae0f3cf617f4a8ee81153d54cbb01a74aa9" [label="local://context" shape="ellipse"];
  "sha256:3919d71dd6c8716511f921fe583d8c14bca7a7e6ff25918dd1376dba9930dfca" [label="docker-image://docker.io/anapsix/alpine-java:8" shape="ellipse"];
  "sha256:5eda41fac74b0403c0e5d0b936c819154b3af33ac3dea4b38571a73854e5aec5" [label="copy{src=/target/.jar, dest=/streampipes-processing-element-container.jar}" shape="note"];
  "sha256:0cdafb4f04d1eae60e7da073ac678863e462fe328fb57627701d451499957799" [label="sha256:0cdafb4f04d1eae60e7da073ac678863e462fe328fb57627701d451499957799" shape="plaintext"];
  "sha256:3919d71dd6c8716511f921fe583d8c14bca7a7e6ff25918dd1376dba9930dfca" -> "sha256:5eda41fac74b0403c0e5d0b936c819154b3af33ac3dea4b38571a73854e5aec5" [label=""];
  "sha256:f52641396e8fcad3dd0570d682cacae0f3cf617f4a8ee81153d54cbb01a74aa9" -> "sha256:5eda41fac74b0403c0e5d0b936c819154b3af33ac3dea4b38571a73854e5aec5" [label=""];
  "sha256:5eda41fac74b0403c0e5d0b936c819154b3af33ac3dea4b38571a73854e5aec5" -> "sha256:0cdafb4f04d1eae60e7da073ac678863e462fe328fb57627701d451499957799" [label=""];
}

