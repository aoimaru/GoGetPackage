[app/sources/242157836.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:3c76e1df3004e6313ec872b2ff1dbb43cb3e96fc8f781e6ef7d167a6523d2a9a" [label="/bin/sh -c apk --no-cache add py-pip libpq python-dev curl" shape="box"];
  "sha256:4d76264d5ca145eb7c2f667e4f710de7dfbd8629063dba342f036e26a841739e" [label="/bin/sh -c pip install flask==0.10.1 python-consul" shape="box"];
  "sha256:0e65be16f3854fc43bf0797df822c87c2768f758b6e65859a6da8aa8983dac51" [label="local://context" shape="ellipse"];
  "sha256:03e6d353596dfd0febe2b9872188af6c7d986a9d9f15d76338ec92127b5b7ba0" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:c6ddafd1169fde6e2536a757ed593d29892f5e926d14993a9ef6c1344ade9363" [label="mkdir{path=/app}" shape="note"];
  "sha256:0794420feac1b771512bc09f8a8e78d25b60e7a6c6ca2cda10b37668bf5f2594" [label="sha256:0794420feac1b771512bc09f8a8e78d25b60e7a6c6ca2cda10b37668bf5f2594" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:3c76e1df3004e6313ec872b2ff1dbb43cb3e96fc8f781e6ef7d167a6523d2a9a" [label=""];
  "sha256:3c76e1df3004e6313ec872b2ff1dbb43cb3e96fc8f781e6ef7d167a6523d2a9a" -> "sha256:4d76264d5ca145eb7c2f667e4f710de7dfbd8629063dba342f036e26a841739e" [label=""];
  "sha256:4d76264d5ca145eb7c2f667e4f710de7dfbd8629063dba342f036e26a841739e" -> "sha256:03e6d353596dfd0febe2b9872188af6c7d986a9d9f15d76338ec92127b5b7ba0" [label=""];
  "sha256:0e65be16f3854fc43bf0797df822c87c2768f758b6e65859a6da8aa8983dac51" -> "sha256:03e6d353596dfd0febe2b9872188af6c7d986a9d9f15d76338ec92127b5b7ba0" [label=""];
  "sha256:03e6d353596dfd0febe2b9872188af6c7d986a9d9f15d76338ec92127b5b7ba0" -> "sha256:c6ddafd1169fde6e2536a757ed593d29892f5e926d14993a9ef6c1344ade9363" [label=""];
  "sha256:c6ddafd1169fde6e2536a757ed593d29892f5e926d14993a9ef6c1344ade9363" -> "sha256:0794420feac1b771512bc09f8a8e78d25b60e7a6c6ca2cda10b37668bf5f2594" [label=""];
}

