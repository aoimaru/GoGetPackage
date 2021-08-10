[app/sources/161145192.Dockerfile]
digraph {
  "sha256:3a9e2f973f1d317c8c6da93efcd32faa0de2d8fa05e6a4549d312b68119187b2" [label="local://context" shape="ellipse"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" [label="docker-image://docker.io/library/golang:1.10" shape="ellipse"];
  "sha256:210fe4a28fba1c82a4b33dff7701eacaa5e2b349ecdbdeec8bd72d8cbfe7c06f" [label="/bin/sh -c echo 'deb http://httpredir.debian.org/debian testing main non-free contrib' >> /etc/apt/sources.list" shape="box"];
  "sha256:f31fbdf02168efcbaff2a157d02472745cbe09d55264f14bd2602f465e960585" [label="/bin/sh -c apt-get update &&   apt-get install -y --no-install-recommends   jq bsdmainutils vim-common psmisc netcat curl" shape="box"];
  "sha256:f406ed4011fd380fb41c13cffc453acaa8c315ee259c2bf38fbb92f13b65a227" [label="mkdir{path=/src/github.com/tendermint/tendermint}" shape="note"];
  "sha256:5613347e54e2316dea65a0826cb83c9886d71ffbddc945350cc1b2bf74741f8e" [label="copy{src=/, dest=/src/github.com/tendermint/tendermint}" shape="note"];
  "sha256:6adc76e834ed5451b1382e4fb8ea44006a75061558684d8da9efedec90864e6b" [label="/bin/sh -c make get_tools" shape="box"];
  "sha256:a88e88b889bc86a17d7654cdfa50aa2008c22fe221a603901a6503ecb1a45e13" [label="/bin/sh -c make get_vendor_deps" shape="box"];
  "sha256:7c6f9f52b6b3663568d8e35e2e6f98b1415325578451b794bd4602c1ecec39b5" [label="copy{src=/, dest=/src/github.com/tendermint/tendermint}" shape="note"];
  "sha256:bceabe55153fdec964173fae35aa9b0815bf0ace1d95f873f7601a3a1ffc0bbb" [label="/bin/sh -c make install_abci" shape="box"];
  "sha256:d683f1ff0d64690291b2c89fd91a2939b3e547a4d36e0f3eba1f751bb03234e1" [label="/bin/sh -c make install" shape="box"];
  "sha256:caff62ea54f8d986fce8a7a7fae031925016486208e27492d217d88272f12848" [label="sha256:caff62ea54f8d986fce8a7a7fae031925016486208e27492d217d88272f12848" shape="plaintext"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" -> "sha256:210fe4a28fba1c82a4b33dff7701eacaa5e2b349ecdbdeec8bd72d8cbfe7c06f" [label=""];
  "sha256:210fe4a28fba1c82a4b33dff7701eacaa5e2b349ecdbdeec8bd72d8cbfe7c06f" -> "sha256:f31fbdf02168efcbaff2a157d02472745cbe09d55264f14bd2602f465e960585" [label=""];
  "sha256:f31fbdf02168efcbaff2a157d02472745cbe09d55264f14bd2602f465e960585" -> "sha256:f406ed4011fd380fb41c13cffc453acaa8c315ee259c2bf38fbb92f13b65a227" [label=""];
  "sha256:f406ed4011fd380fb41c13cffc453acaa8c315ee259c2bf38fbb92f13b65a227" -> "sha256:5613347e54e2316dea65a0826cb83c9886d71ffbddc945350cc1b2bf74741f8e" [label=""];
  "sha256:3a9e2f973f1d317c8c6da93efcd32faa0de2d8fa05e6a4549d312b68119187b2" -> "sha256:5613347e54e2316dea65a0826cb83c9886d71ffbddc945350cc1b2bf74741f8e" [label=""];
  "sha256:5613347e54e2316dea65a0826cb83c9886d71ffbddc945350cc1b2bf74741f8e" -> "sha256:6adc76e834ed5451b1382e4fb8ea44006a75061558684d8da9efedec90864e6b" [label=""];
  "sha256:6adc76e834ed5451b1382e4fb8ea44006a75061558684d8da9efedec90864e6b" -> "sha256:a88e88b889bc86a17d7654cdfa50aa2008c22fe221a603901a6503ecb1a45e13" [label=""];
  "sha256:a88e88b889bc86a17d7654cdfa50aa2008c22fe221a603901a6503ecb1a45e13" -> "sha256:7c6f9f52b6b3663568d8e35e2e6f98b1415325578451b794bd4602c1ecec39b5" [label=""];
  "sha256:3a9e2f973f1d317c8c6da93efcd32faa0de2d8fa05e6a4549d312b68119187b2" -> "sha256:7c6f9f52b6b3663568d8e35e2e6f98b1415325578451b794bd4602c1ecec39b5" [label=""];
  "sha256:7c6f9f52b6b3663568d8e35e2e6f98b1415325578451b794bd4602c1ecec39b5" -> "sha256:bceabe55153fdec964173fae35aa9b0815bf0ace1d95f873f7601a3a1ffc0bbb" [label=""];
  "sha256:bceabe55153fdec964173fae35aa9b0815bf0ace1d95f873f7601a3a1ffc0bbb" -> "sha256:d683f1ff0d64690291b2c89fd91a2939b3e547a4d36e0f3eba1f751bb03234e1" [label=""];
  "sha256:d683f1ff0d64690291b2c89fd91a2939b3e547a4d36e0f3eba1f751bb03234e1" -> "sha256:caff62ea54f8d986fce8a7a7fae031925016486208e27492d217d88272f12848" [label=""];
}

