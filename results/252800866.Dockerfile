[app/sources/252800866.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:f17a8242cc1cf8063d285ad5fe2c98e6bbe69dcc6a82e031e60e0d6e870a9e16" [label="mkdir{path=/app}" shape="note"];
  "sha256:e51d44f0cb8f246c34d5a1ea79f8bd222efeb31f9576d202de0dacddbff998ea" [label="local://context" shape="ellipse"];
  "sha256:4acaa82ca8a0a0d096b3e8dfd929787c9097e0e087eb835c2eebfe2da9d93f95" [label="copy{src=/--from=build-env, dest=/app},copy{src=/go/bin/pad, dest=/app}" shape="note"];
  "sha256:6a3150731fa8e451a56f341d245e1b23f1ef90d18e562dcd521b8d43c3fd5e52" [label="copy{src=/--from=build-env, dest=/app/web/},copy{src=/go/src/github.com/dotzero/pad/web, dest=/app/web/}" shape="note"];
  "sha256:1cd4e391120d7a3317e888a8c204cec251e4f0404e554bad75d586ec1f86b714" [label="sha256:1cd4e391120d7a3317e888a8c204cec251e4f0404e554bad75d586ec1f86b714" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:f17a8242cc1cf8063d285ad5fe2c98e6bbe69dcc6a82e031e60e0d6e870a9e16" [label=""];
  "sha256:f17a8242cc1cf8063d285ad5fe2c98e6bbe69dcc6a82e031e60e0d6e870a9e16" -> "sha256:4acaa82ca8a0a0d096b3e8dfd929787c9097e0e087eb835c2eebfe2da9d93f95" [label=""];
  "sha256:e51d44f0cb8f246c34d5a1ea79f8bd222efeb31f9576d202de0dacddbff998ea" -> "sha256:4acaa82ca8a0a0d096b3e8dfd929787c9097e0e087eb835c2eebfe2da9d93f95" [label=""];
  "sha256:4acaa82ca8a0a0d096b3e8dfd929787c9097e0e087eb835c2eebfe2da9d93f95" -> "sha256:6a3150731fa8e451a56f341d245e1b23f1ef90d18e562dcd521b8d43c3fd5e52" [label=""];
  "sha256:e51d44f0cb8f246c34d5a1ea79f8bd222efeb31f9576d202de0dacddbff998ea" -> "sha256:6a3150731fa8e451a56f341d245e1b23f1ef90d18e562dcd521b8d43c3fd5e52" [label=""];
  "sha256:6a3150731fa8e451a56f341d245e1b23f1ef90d18e562dcd521b8d43c3fd5e52" -> "sha256:1cd4e391120d7a3317e888a8c204cec251e4f0404e554bad75d586ec1f86b714" [label=""];
}

