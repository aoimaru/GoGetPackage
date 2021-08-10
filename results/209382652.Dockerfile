[app/sources/209382652.Dockerfile]
digraph {
  "sha256:8d8b60b62ecebb8386eb2473140effa0b9d68d98f3f326255e7bdb4012bc1c3b" [label="docker-image://docker.io/library/ruby:2.6.2" shape="ellipse"];
  "sha256:0e45464bc488f16257259af8fe51cc44ead4c3155c0d5659f5f39e3cc2077d87" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:15a21f4c231f96f05fac2083c3d24e0917bf52cdfd2fb836eaa458bac6ccdb5f" [label="mkdir{path=/app}" shape="note"];
  "sha256:2f0252e2a2c56c4d2a0b07fa41723ab2219845b8acee1d1154e1b066ba489a26" [label="local://context" shape="ellipse"];
  "sha256:1e247e22e50020f823185dfe4f7af1be2371a2cc0f5111b4d58ffe614cd66788" [label="copy{src=/Gemfile, dest=/app/},copy{src=/Gemfile.lock, dest=/app/}" shape="note"];
  "sha256:394bdd3e3a79b1605b71cb02c0e5581cca707b3c56aec48c4d0e7d42fc70f6d1" [label="/bin/sh -c gem install bundler --no-document && bundle install --jobs 20 --retry 5" shape="box"];
  "sha256:4c71f8d76242b9e8ab0ad1b0f92b7c1cb104dff89c78a113a0db632098d85cd6" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:d5ab135b924167d86d115db40637d6ac7318bdf78fbacceac471e253ad5b70a7" [label="/bin/sh -c mkdir /app/tmp /app/log" shape="box"];
  "sha256:dfb17ae627775c3ab77ee35fbbb2a7a60bdf2d58c757ebb401434356553fd793" [label="/bin/sh -c groupadd --system avro &&     useradd --no-log-init --system --create-home --gid avro avro &&     chown -R avro:avro /app/tmp /app/log" shape="box"];
  "sha256:70d743d978a1388790bf7580b9243bfe283430e720b3292e46c8fd9f1554c6a3" [label="sha256:70d743d978a1388790bf7580b9243bfe283430e720b3292e46c8fd9f1554c6a3" shape="plaintext"];
  "sha256:8d8b60b62ecebb8386eb2473140effa0b9d68d98f3f326255e7bdb4012bc1c3b" -> "sha256:0e45464bc488f16257259af8fe51cc44ead4c3155c0d5659f5f39e3cc2077d87" [label=""];
  "sha256:0e45464bc488f16257259af8fe51cc44ead4c3155c0d5659f5f39e3cc2077d87" -> "sha256:15a21f4c231f96f05fac2083c3d24e0917bf52cdfd2fb836eaa458bac6ccdb5f" [label=""];
  "sha256:15a21f4c231f96f05fac2083c3d24e0917bf52cdfd2fb836eaa458bac6ccdb5f" -> "sha256:1e247e22e50020f823185dfe4f7af1be2371a2cc0f5111b4d58ffe614cd66788" [label=""];
  "sha256:2f0252e2a2c56c4d2a0b07fa41723ab2219845b8acee1d1154e1b066ba489a26" -> "sha256:1e247e22e50020f823185dfe4f7af1be2371a2cc0f5111b4d58ffe614cd66788" [label=""];
  "sha256:1e247e22e50020f823185dfe4f7af1be2371a2cc0f5111b4d58ffe614cd66788" -> "sha256:394bdd3e3a79b1605b71cb02c0e5581cca707b3c56aec48c4d0e7d42fc70f6d1" [label=""];
  "sha256:394bdd3e3a79b1605b71cb02c0e5581cca707b3c56aec48c4d0e7d42fc70f6d1" -> "sha256:4c71f8d76242b9e8ab0ad1b0f92b7c1cb104dff89c78a113a0db632098d85cd6" [label=""];
  "sha256:2f0252e2a2c56c4d2a0b07fa41723ab2219845b8acee1d1154e1b066ba489a26" -> "sha256:4c71f8d76242b9e8ab0ad1b0f92b7c1cb104dff89c78a113a0db632098d85cd6" [label=""];
  "sha256:4c71f8d76242b9e8ab0ad1b0f92b7c1cb104dff89c78a113a0db632098d85cd6" -> "sha256:d5ab135b924167d86d115db40637d6ac7318bdf78fbacceac471e253ad5b70a7" [label=""];
  "sha256:d5ab135b924167d86d115db40637d6ac7318bdf78fbacceac471e253ad5b70a7" -> "sha256:dfb17ae627775c3ab77ee35fbbb2a7a60bdf2d58c757ebb401434356553fd793" [label=""];
  "sha256:dfb17ae627775c3ab77ee35fbbb2a7a60bdf2d58c757ebb401434356553fd793" -> "sha256:70d743d978a1388790bf7580b9243bfe283430e720b3292e46c8fd9f1554c6a3" [label=""];
}

