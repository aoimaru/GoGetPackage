[app/sources/437222553.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:a1ccca5e27ca90276e80251cbc941c24b87c2a77008f9e70166ab29611868e1d" [label="/bin/sh -c apk add --no-cache openssl-dev=1.1.1b-r1 && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:395c2cbd0e67e9ac8568d3d228eb49ae47f9f7aeec210c8875bdab6a32b9f915" [label="local://context" shape="ellipse"];
  "sha256:92ece2393fe31360f4c8fceaeb7680e0979a71d184e25922be90a5e5e8a2e586" [label="copy{src=/spec/event_success.json, dest=/github/workflow/event.json}" shape="note"];
  "sha256:c446a51cef0b87ae9e901e7c3054600cdbd9b2fc0d0cd249812b84a48351bb5e" [label="mkdir{path=/app}" shape="note"];
  "sha256:7713e2f3ca824b6a5686ccc1c927ab83a45fad97b0c7a7254d46f702f59466dd" [label="/bin/sh -c apk add --no-cache crystal=0.27.0-r0 shards=0.8.1-r0 libc-dev=0.7.1-r0 openssl-dev=1.1.1b-r1 zlib-dev=1.2.11-r1 && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:e0f16c571ab501d38f574426aad09a7c1ff604deea5f0c6ee150396cb2b5f790" [label="mkdir{path=/src}" shape="note"];
  "sha256:3b8766e4f218389dd56085224031b23d3d3a4fd65b9a2b9a70afb4f9914cf0ad" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:be9bcaef387d36f36e9a7142a9b2522d2483052910f0737e1ddc3016e7cee21a" [label="/bin/sh -c crystal build --release --static src/run.cr -o /src/run" shape="box"];
  "sha256:4ce9ed1df28a502ba74d22a2c17ca59a5baad9eeeb9d2c1575c489405eb42d31" [label="copy{src=/src/run, dest=/app/run}" shape="note"];
  "sha256:7e6f37012709655643012e3da58ee5bbf1fc84aa1d41f4921d0b96e593beae9b" [label="sha256:7e6f37012709655643012e3da58ee5bbf1fc84aa1d41f4921d0b96e593beae9b" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:a1ccca5e27ca90276e80251cbc941c24b87c2a77008f9e70166ab29611868e1d" [label=""];
  "sha256:a1ccca5e27ca90276e80251cbc941c24b87c2a77008f9e70166ab29611868e1d" -> "sha256:92ece2393fe31360f4c8fceaeb7680e0979a71d184e25922be90a5e5e8a2e586" [label=""];
  "sha256:395c2cbd0e67e9ac8568d3d228eb49ae47f9f7aeec210c8875bdab6a32b9f915" -> "sha256:92ece2393fe31360f4c8fceaeb7680e0979a71d184e25922be90a5e5e8a2e586" [label=""];
  "sha256:92ece2393fe31360f4c8fceaeb7680e0979a71d184e25922be90a5e5e8a2e586" -> "sha256:c446a51cef0b87ae9e901e7c3054600cdbd9b2fc0d0cd249812b84a48351bb5e" [label=""];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:7713e2f3ca824b6a5686ccc1c927ab83a45fad97b0c7a7254d46f702f59466dd" [label=""];
  "sha256:7713e2f3ca824b6a5686ccc1c927ab83a45fad97b0c7a7254d46f702f59466dd" -> "sha256:e0f16c571ab501d38f574426aad09a7c1ff604deea5f0c6ee150396cb2b5f790" [label=""];
  "sha256:e0f16c571ab501d38f574426aad09a7c1ff604deea5f0c6ee150396cb2b5f790" -> "sha256:3b8766e4f218389dd56085224031b23d3d3a4fd65b9a2b9a70afb4f9914cf0ad" [label=""];
  "sha256:395c2cbd0e67e9ac8568d3d228eb49ae47f9f7aeec210c8875bdab6a32b9f915" -> "sha256:3b8766e4f218389dd56085224031b23d3d3a4fd65b9a2b9a70afb4f9914cf0ad" [label=""];
  "sha256:3b8766e4f218389dd56085224031b23d3d3a4fd65b9a2b9a70afb4f9914cf0ad" -> "sha256:be9bcaef387d36f36e9a7142a9b2522d2483052910f0737e1ddc3016e7cee21a" [label=""];
  "sha256:c446a51cef0b87ae9e901e7c3054600cdbd9b2fc0d0cd249812b84a48351bb5e" -> "sha256:4ce9ed1df28a502ba74d22a2c17ca59a5baad9eeeb9d2c1575c489405eb42d31" [label=""];
  "sha256:be9bcaef387d36f36e9a7142a9b2522d2483052910f0737e1ddc3016e7cee21a" -> "sha256:4ce9ed1df28a502ba74d22a2c17ca59a5baad9eeeb9d2c1575c489405eb42d31" [label=""];
  "sha256:4ce9ed1df28a502ba74d22a2c17ca59a5baad9eeeb9d2c1575c489405eb42d31" -> "sha256:7e6f37012709655643012e3da58ee5bbf1fc84aa1d41f4921d0b96e593beae9b" [label=""];
}

