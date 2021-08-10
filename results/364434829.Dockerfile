[app/sources/364434829.Dockerfile]
digraph {
  "sha256:f5a37cf964e773d93c17f77fb5541b9099737f03e4c3d20814b556171ac71853" [label="local://context" shape="ellipse"];
  "sha256:672da9a98dbf18622a473998a9985532d7a28141fa27b7cd27690abcf513e76d" [label="docker-image://docker.io/library/consul:latest@sha256:c83f868a5c3727aa219f8098193f511cb29ad386ec5359d07194b933085f7285" shape="ellipse"];
  "sha256:5f82b0713da4f8dc811aab35143a016e875cbc4abdc125d7a4afbc356a507223" [label="/bin/sh -c apk --no-cache add jq curl" shape="box"];
  "sha256:224622248a92a5e1ecd5d659cb6d55d1e8c89906aac835199985bdeadca984be" [label="copy{src=/assert, dest=/bin/assert}" shape="note"];
  "sha256:63f7f7df90cfd1230020c81fe12637e3c85e3607b976609a1f0d9d5e881ff439" [label="sha256:63f7f7df90cfd1230020c81fe12637e3c85e3607b976609a1f0d9d5e881ff439" shape="plaintext"];
  "sha256:672da9a98dbf18622a473998a9985532d7a28141fa27b7cd27690abcf513e76d" -> "sha256:5f82b0713da4f8dc811aab35143a016e875cbc4abdc125d7a4afbc356a507223" [label=""];
  "sha256:5f82b0713da4f8dc811aab35143a016e875cbc4abdc125d7a4afbc356a507223" -> "sha256:224622248a92a5e1ecd5d659cb6d55d1e8c89906aac835199985bdeadca984be" [label=""];
  "sha256:f5a37cf964e773d93c17f77fb5541b9099737f03e4c3d20814b556171ac71853" -> "sha256:224622248a92a5e1ecd5d659cb6d55d1e8c89906aac835199985bdeadca984be" [label=""];
  "sha256:224622248a92a5e1ecd5d659cb6d55d1e8c89906aac835199985bdeadca984be" -> "sha256:63f7f7df90cfd1230020c81fe12637e3c85e3607b976609a1f0d9d5e881ff439" [label=""];
}

