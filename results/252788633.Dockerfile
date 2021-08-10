[app/sources/252788633.Dockerfile]
digraph {
  "sha256:70a5d9f7fbd3e61b2cc0102e0e58908b7f0ccf58764f07799c8f37cfc74112cc" [label="docker-image://docker.io/csmith/service-reporter-lib:latest" shape="ellipse"];
  "sha256:516fb9d3bbe552c96362b73c700010475f4c1cc13f818ed19658a6dda1e18d1b" [label="local://context" shape="ellipse"];
  "sha256:d64e4cea800832b833f43ddef46dd122ee27dab9cea6b534c3ea8b022cf5a57b" [label="copy{src=/*.py, dest=/}" shape="note"];
  "sha256:53c7c3e8a61440dbaecef6e6f2e4688a02007ccada58e66e764bfe77a1460acc" [label="sha256:53c7c3e8a61440dbaecef6e6f2e4688a02007ccada58e66e764bfe77a1460acc" shape="plaintext"];
  "sha256:70a5d9f7fbd3e61b2cc0102e0e58908b7f0ccf58764f07799c8f37cfc74112cc" -> "sha256:d64e4cea800832b833f43ddef46dd122ee27dab9cea6b534c3ea8b022cf5a57b" [label=""];
  "sha256:516fb9d3bbe552c96362b73c700010475f4c1cc13f818ed19658a6dda1e18d1b" -> "sha256:d64e4cea800832b833f43ddef46dd122ee27dab9cea6b534c3ea8b022cf5a57b" [label=""];
  "sha256:d64e4cea800832b833f43ddef46dd122ee27dab9cea6b534c3ea8b022cf5a57b" -> "sha256:53c7c3e8a61440dbaecef6e6f2e4688a02007ccada58e66e764bfe77a1460acc" [label=""];
}

