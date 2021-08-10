[app/sources/360358385.Dockerfile]
digraph {
  "sha256:a6eaedf4b475379d445a6bfb3be1934b73031feeaf7b55a59826053ff35f3e82" [label="docker-image://docker.io/nvidia/cuda:9.2-cudnn7-devel-ubuntu18.04" shape="ellipse"];
  "sha256:b2a983ad4e7da255b16dcf8fac36843ffd4bd8c02c4f41887ad377ea275239c8" [label="mkdir{path=/work/deps}" shape="note"];
  "sha256:53b87332a5bf72324beca3615fb30d1e4ef37e1ed08a2de2e3f1e23944f36e4a" [label="local://context" shape="ellipse"];
  "sha256:9410cd7909def0b0b268d794e5716f73912e165388e57e8ff60a7a0a6e78c792" [label="copy{src=/install/ubuntu_base.sh, dest=/work/}" shape="note"];
  "sha256:04fad4386989421c1ba5fb226ff247f8af802bbeb933728e3cc56f3f5aab329b" [label="/bin/sh -c /work/ubuntu_base.sh" shape="box"];
  "sha256:b25a969fd42383de0af13e6711310e15e6023d667ea3148ff9d8d61647db95f8" [label="copy{src=/install/ubuntu_scala.sh, dest=/work/}" shape="note"];
  "sha256:c6d85fb251d54fbefe9583d58ca2d6e4cede4676310f9c6702649c463b8edfa2" [label="/bin/sh -c /work/ubuntu_scala.sh" shape="box"];
  "sha256:d186cf18b02f82fb6d4546264d661c559043bdcbd1a8d86550637c773858ae24" [label="copy{src=/install/ubuntu_adduser.sh, dest=/work/}" shape="note"];
  "sha256:915744bf2a98348d678c6624eeddf7a128bff3e28100fa501f4dbc43d394348e" [label="/bin/sh -c /work/ubuntu_adduser.sh" shape="box"];
  "sha256:00c4228cb340076a941cb2d963078025b54b8c78b6e7188cd8d17cca19b591fc" [label="copy{src=/runtime_functions.sh, dest=/work/}" shape="note"];
  "sha256:5d787448141c5a4fb8844e85059b3b61c93051fac77cb5f00a122fd326fa7922" [label="mkdir{path=/work/mxnet}" shape="note"];
  "sha256:4093f20a058eae8c726e3c22a464dd88f0174e70e781216d69a842f06bbd36da" [label="sha256:4093f20a058eae8c726e3c22a464dd88f0174e70e781216d69a842f06bbd36da" shape="plaintext"];
  "sha256:a6eaedf4b475379d445a6bfb3be1934b73031feeaf7b55a59826053ff35f3e82" -> "sha256:b2a983ad4e7da255b16dcf8fac36843ffd4bd8c02c4f41887ad377ea275239c8" [label=""];
  "sha256:b2a983ad4e7da255b16dcf8fac36843ffd4bd8c02c4f41887ad377ea275239c8" -> "sha256:9410cd7909def0b0b268d794e5716f73912e165388e57e8ff60a7a0a6e78c792" [label=""];
  "sha256:53b87332a5bf72324beca3615fb30d1e4ef37e1ed08a2de2e3f1e23944f36e4a" -> "sha256:9410cd7909def0b0b268d794e5716f73912e165388e57e8ff60a7a0a6e78c792" [label=""];
  "sha256:9410cd7909def0b0b268d794e5716f73912e165388e57e8ff60a7a0a6e78c792" -> "sha256:04fad4386989421c1ba5fb226ff247f8af802bbeb933728e3cc56f3f5aab329b" [label=""];
  "sha256:04fad4386989421c1ba5fb226ff247f8af802bbeb933728e3cc56f3f5aab329b" -> "sha256:b25a969fd42383de0af13e6711310e15e6023d667ea3148ff9d8d61647db95f8" [label=""];
  "sha256:53b87332a5bf72324beca3615fb30d1e4ef37e1ed08a2de2e3f1e23944f36e4a" -> "sha256:b25a969fd42383de0af13e6711310e15e6023d667ea3148ff9d8d61647db95f8" [label=""];
  "sha256:b25a969fd42383de0af13e6711310e15e6023d667ea3148ff9d8d61647db95f8" -> "sha256:c6d85fb251d54fbefe9583d58ca2d6e4cede4676310f9c6702649c463b8edfa2" [label=""];
  "sha256:c6d85fb251d54fbefe9583d58ca2d6e4cede4676310f9c6702649c463b8edfa2" -> "sha256:d186cf18b02f82fb6d4546264d661c559043bdcbd1a8d86550637c773858ae24" [label=""];
  "sha256:53b87332a5bf72324beca3615fb30d1e4ef37e1ed08a2de2e3f1e23944f36e4a" -> "sha256:d186cf18b02f82fb6d4546264d661c559043bdcbd1a8d86550637c773858ae24" [label=""];
  "sha256:d186cf18b02f82fb6d4546264d661c559043bdcbd1a8d86550637c773858ae24" -> "sha256:915744bf2a98348d678c6624eeddf7a128bff3e28100fa501f4dbc43d394348e" [label=""];
  "sha256:915744bf2a98348d678c6624eeddf7a128bff3e28100fa501f4dbc43d394348e" -> "sha256:00c4228cb340076a941cb2d963078025b54b8c78b6e7188cd8d17cca19b591fc" [label=""];
  "sha256:53b87332a5bf72324beca3615fb30d1e4ef37e1ed08a2de2e3f1e23944f36e4a" -> "sha256:00c4228cb340076a941cb2d963078025b54b8c78b6e7188cd8d17cca19b591fc" [label=""];
  "sha256:00c4228cb340076a941cb2d963078025b54b8c78b6e7188cd8d17cca19b591fc" -> "sha256:5d787448141c5a4fb8844e85059b3b61c93051fac77cb5f00a122fd326fa7922" [label=""];
  "sha256:5d787448141c5a4fb8844e85059b3b61c93051fac77cb5f00a122fd326fa7922" -> "sha256:4093f20a058eae8c726e3c22a464dd88f0174e70e781216d69a842f06bbd36da" [label=""];
}

