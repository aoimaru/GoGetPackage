[app/sources/266117840.Dockerfile]
digraph {
  "sha256:ed3338fe2a0c184642b8c7b6223fb6d18bbfcb6460ed3c0c2d78f1268435cd3c" [label="docker-image://docker.io/library/node:0.12" shape="ellipse"];
  "sha256:9e41cc3ba1635a7518f63db3985ed43cb0091d3447c629e0cf3de761c0da5902" [label="/bin/sh -c mkdir app" shape="box"];
  "sha256:49495047a6eaed63bb0c7b7e29a34c247a6ae4cc7c18960441c6b7903478d8b6" [label="local://context" shape="ellipse"];
  "sha256:a235483b80f8da76476c527a6849f1348ce969b19c03fadd1f7b2ae47d6f2a99" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:251090b7d51b1994d13d67cbe76a5d51464e694a9b971ab6dd176c88890c8bbd" [label="mkdir{path=/app}" shape="note"];
  "sha256:0c304152711426aaa7885396efaa4e2d5dfe603ec766f1bf36d88f5c10bf0d70" [label="/bin/sh -c npm install" shape="box"];
  "sha256:140d789d61c53a6dec9343024bca71e84d52a4b62ad1e3648bff788f436285c3" [label="/bin/sh -c npm install webpack@\"1.8\"" shape="box"];
  "sha256:972e076902151f5e99ac87df898390d6ba152e442e064bc27f0ecbf8a684d57e" [label="sha256:972e076902151f5e99ac87df898390d6ba152e442e064bc27f0ecbf8a684d57e" shape="plaintext"];
  "sha256:ed3338fe2a0c184642b8c7b6223fb6d18bbfcb6460ed3c0c2d78f1268435cd3c" -> "sha256:9e41cc3ba1635a7518f63db3985ed43cb0091d3447c629e0cf3de761c0da5902" [label=""];
  "sha256:9e41cc3ba1635a7518f63db3985ed43cb0091d3447c629e0cf3de761c0da5902" -> "sha256:a235483b80f8da76476c527a6849f1348ce969b19c03fadd1f7b2ae47d6f2a99" [label=""];
  "sha256:49495047a6eaed63bb0c7b7e29a34c247a6ae4cc7c18960441c6b7903478d8b6" -> "sha256:a235483b80f8da76476c527a6849f1348ce969b19c03fadd1f7b2ae47d6f2a99" [label=""];
  "sha256:a235483b80f8da76476c527a6849f1348ce969b19c03fadd1f7b2ae47d6f2a99" -> "sha256:251090b7d51b1994d13d67cbe76a5d51464e694a9b971ab6dd176c88890c8bbd" [label=""];
  "sha256:251090b7d51b1994d13d67cbe76a5d51464e694a9b971ab6dd176c88890c8bbd" -> "sha256:0c304152711426aaa7885396efaa4e2d5dfe603ec766f1bf36d88f5c10bf0d70" [label=""];
  "sha256:0c304152711426aaa7885396efaa4e2d5dfe603ec766f1bf36d88f5c10bf0d70" -> "sha256:140d789d61c53a6dec9343024bca71e84d52a4b62ad1e3648bff788f436285c3" [label=""];
  "sha256:140d789d61c53a6dec9343024bca71e84d52a4b62ad1e3648bff788f436285c3" -> "sha256:972e076902151f5e99ac87df898390d6ba152e442e064bc27f0ecbf8a684d57e" [label=""];
}

