[app/sources/321889220.Dockerfile]
digraph {
  "sha256:b416ba098f7f6d0a05e40deac3e1938deb64354a2fd04d78f17fa2a3a60d88d1" [label="docker-image://nvcr.io/nvidia/pytorch:19.05-py3@sha256:6614fa29720fc253bcb0e99c29af2f93caff16976661f241ec5ed5cf08e7c010" shape="ellipse"];
  "sha256:0c723235b3223b9c734d02d65961fcd01e64031df1b80a6df04400defd526a42" [label="/bin/sh -c pip install --upgrade --no-cache-dir pip  && pip install --no-cache-dir       sacrebleu       sentencepiece" shape="box"];
  "sha256:dfe7d89052286884008af45c38924c29c057d2ba05321eb5fb9a7ea1d7f5cfbb" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:1cc6cee3328d40575964c62560fa18892603ae627c0c130a598b0542bf91f658" [label="/bin/sh -c apt-get install -y cmake pkg-config libprotobuf9v5 protobuf-compiler libprotobuf-dev libgoogle-perftools-dev" shape="box"];
  "sha256:6d5b943e9e392c9876f548ef8822f50c42614d3e8308330a45102d508a945e6e" [label="/bin/sh -c git clone https://github.com/google/sentencepiece.git /workspace/sentencepiece" shape="box"];
  "sha256:35459f0ff14da7c823d39a25ce1f395ba46c18c46f2b380b4082e073bdb90a14" [label="/bin/sh -c cd /workspace/sentencepiece   && mkdir build   && cd build   && cmake ..   && make -j 8   && make install   && ldconfig -v" shape="box"];
  "sha256:fa36c51d37f6876a81617c390cf7a58d9e8ed4baa244b51e95fdb78b03058fdb" [label="mkdir{path=/workspace/translation}" shape="note"];
  "sha256:b02954ec6020180db5a51441a368c3dd77ee559b991b68d89571ef5b4ba56c49" [label="local://context" shape="ellipse"];
  "sha256:17e6252ba24288d206f9b433b7b698d965425a0afc65abaa6cc60582b3b11a86" [label="copy{src=/, dest=/workspace/translation/}" shape="note"];
  "sha256:b981b5aed83526518de6bd8f00366ff98e86187047959b65b4ece186f49ba7ee" [label="/bin/sh -c git clone https://github.com/rsennrich/subword-nmt.git /workspace/translation/examples/translation/subword-nmt/" shape="box"];
  "sha256:da3e6159b513ea1824a91f4522a1b1a040133eb00a867f17a75a9a7dea2764f3" [label="/bin/sh -c pip install -e ." shape="box"];
  "sha256:ba4c10452243f8eec46702a188039d67fd0b28d01f7e8afbe3a15d2d55063169" [label="sha256:ba4c10452243f8eec46702a188039d67fd0b28d01f7e8afbe3a15d2d55063169" shape="plaintext"];
  "sha256:b416ba098f7f6d0a05e40deac3e1938deb64354a2fd04d78f17fa2a3a60d88d1" -> "sha256:0c723235b3223b9c734d02d65961fcd01e64031df1b80a6df04400defd526a42" [label=""];
  "sha256:0c723235b3223b9c734d02d65961fcd01e64031df1b80a6df04400defd526a42" -> "sha256:dfe7d89052286884008af45c38924c29c057d2ba05321eb5fb9a7ea1d7f5cfbb" [label=""];
  "sha256:dfe7d89052286884008af45c38924c29c057d2ba05321eb5fb9a7ea1d7f5cfbb" -> "sha256:1cc6cee3328d40575964c62560fa18892603ae627c0c130a598b0542bf91f658" [label=""];
  "sha256:1cc6cee3328d40575964c62560fa18892603ae627c0c130a598b0542bf91f658" -> "sha256:6d5b943e9e392c9876f548ef8822f50c42614d3e8308330a45102d508a945e6e" [label=""];
  "sha256:6d5b943e9e392c9876f548ef8822f50c42614d3e8308330a45102d508a945e6e" -> "sha256:35459f0ff14da7c823d39a25ce1f395ba46c18c46f2b380b4082e073bdb90a14" [label=""];
  "sha256:35459f0ff14da7c823d39a25ce1f395ba46c18c46f2b380b4082e073bdb90a14" -> "sha256:fa36c51d37f6876a81617c390cf7a58d9e8ed4baa244b51e95fdb78b03058fdb" [label=""];
  "sha256:fa36c51d37f6876a81617c390cf7a58d9e8ed4baa244b51e95fdb78b03058fdb" -> "sha256:17e6252ba24288d206f9b433b7b698d965425a0afc65abaa6cc60582b3b11a86" [label=""];
  "sha256:b02954ec6020180db5a51441a368c3dd77ee559b991b68d89571ef5b4ba56c49" -> "sha256:17e6252ba24288d206f9b433b7b698d965425a0afc65abaa6cc60582b3b11a86" [label=""];
  "sha256:17e6252ba24288d206f9b433b7b698d965425a0afc65abaa6cc60582b3b11a86" -> "sha256:b981b5aed83526518de6bd8f00366ff98e86187047959b65b4ece186f49ba7ee" [label=""];
  "sha256:b981b5aed83526518de6bd8f00366ff98e86187047959b65b4ece186f49ba7ee" -> "sha256:da3e6159b513ea1824a91f4522a1b1a040133eb00a867f17a75a9a7dea2764f3" [label=""];
  "sha256:da3e6159b513ea1824a91f4522a1b1a040133eb00a867f17a75a9a7dea2764f3" -> "sha256:ba4c10452243f8eec46702a188039d67fd0b28d01f7e8afbe3a15d2d55063169" [label=""];
}

