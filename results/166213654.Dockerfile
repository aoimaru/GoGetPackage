[app/sources/166213654.Dockerfile]
digraph {
  "sha256:27491483af64cb1ead50f25fa34783c18f3d65d076c16fc6662a6efb67b9a440" [label="docker-image://docker.io/jeffreyksmithjr/elixir-mxnet:latest" shape="ellipse"];
  "sha256:7e42db03fb21f1cf405e4942420294fcd1450e723bad147d39a4e95ca69656d7" [label="local://context" shape="ellipse"];
  "sha256:acd43a415e3aa39f2ed338372a5670bccefbc54bedddfc882b0ea4d739b7bbc0" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:42aa94b29ce574ac14802b39294dc3809ea7777bfbd00e69d13fd96a9cf93bd6" [label="/bin/sh -c mix local.hex --force" shape="box"];
  "sha256:15e70f0fd33cb6abca9a7bc9143d4f674f9d205e21730815a123eb7954e25603" [label="/bin/sh -c mix local.rebar --force" shape="box"];
  "sha256:24fbab6b3c7034dabc28c772fb0b69f1984b64497f556206d0be10b548ae5be5" [label="/bin/sh -c mix deps.get" shape="box"];
  "sha256:330233a2183d47dc5447c8f3df53aab71ca062aa7789c2ea9952e208d1b54595" [label="/bin/sh -c mix format --check-formatted" shape="box"];
  "sha256:4b8cad4f3a84a65a4792f3e34e8993d832a025d4d0a36546509f82532ece0241" [label="/bin/sh -c mix compile" shape="box"];
  "sha256:b570518f32fa05e03e049a65bf436d20c8910a1f7dc3154e3b4f8cdd6642922d" [label="/bin/sh -c mix test" shape="box"];
  "sha256:234ace1ffb549d4a883089646681398b1f908375708259b6423404fc0aef1590" [label="sha256:234ace1ffb549d4a883089646681398b1f908375708259b6423404fc0aef1590" shape="plaintext"];
  "sha256:27491483af64cb1ead50f25fa34783c18f3d65d076c16fc6662a6efb67b9a440" -> "sha256:acd43a415e3aa39f2ed338372a5670bccefbc54bedddfc882b0ea4d739b7bbc0" [label=""];
  "sha256:7e42db03fb21f1cf405e4942420294fcd1450e723bad147d39a4e95ca69656d7" -> "sha256:acd43a415e3aa39f2ed338372a5670bccefbc54bedddfc882b0ea4d739b7bbc0" [label=""];
  "sha256:acd43a415e3aa39f2ed338372a5670bccefbc54bedddfc882b0ea4d739b7bbc0" -> "sha256:42aa94b29ce574ac14802b39294dc3809ea7777bfbd00e69d13fd96a9cf93bd6" [label=""];
  "sha256:42aa94b29ce574ac14802b39294dc3809ea7777bfbd00e69d13fd96a9cf93bd6" -> "sha256:15e70f0fd33cb6abca9a7bc9143d4f674f9d205e21730815a123eb7954e25603" [label=""];
  "sha256:15e70f0fd33cb6abca9a7bc9143d4f674f9d205e21730815a123eb7954e25603" -> "sha256:24fbab6b3c7034dabc28c772fb0b69f1984b64497f556206d0be10b548ae5be5" [label=""];
  "sha256:24fbab6b3c7034dabc28c772fb0b69f1984b64497f556206d0be10b548ae5be5" -> "sha256:330233a2183d47dc5447c8f3df53aab71ca062aa7789c2ea9952e208d1b54595" [label=""];
  "sha256:330233a2183d47dc5447c8f3df53aab71ca062aa7789c2ea9952e208d1b54595" -> "sha256:4b8cad4f3a84a65a4792f3e34e8993d832a025d4d0a36546509f82532ece0241" [label=""];
  "sha256:4b8cad4f3a84a65a4792f3e34e8993d832a025d4d0a36546509f82532ece0241" -> "sha256:b570518f32fa05e03e049a65bf436d20c8910a1f7dc3154e3b4f8cdd6642922d" [label=""];
  "sha256:b570518f32fa05e03e049a65bf436d20c8910a1f7dc3154e3b4f8cdd6642922d" -> "sha256:234ace1ffb549d4a883089646681398b1f908375708259b6423404fc0aef1590" [label=""];
}

