[app/sources/224930267.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:e299673e4ec722cdf383c31796680926e94e564a6e98c455969162650f222183" [label="/bin/sh -c apk update && apk upgrade   && apk add ca-certificates   && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:e6b15f58fd1d17629aa9d51d88ff76471b7207acbcf3058d80a9f5c60fb57c4d" [label="sha256:e6b15f58fd1d17629aa9d51d88ff76471b7207acbcf3058d80a9f5c60fb57c4d" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:e299673e4ec722cdf383c31796680926e94e564a6e98c455969162650f222183" [label=""];
  "sha256:e299673e4ec722cdf383c31796680926e94e564a6e98c455969162650f222183" -> "sha256:e6b15f58fd1d17629aa9d51d88ff76471b7207acbcf3058d80a9f5c60fb57c4d" [label=""];
}

