[app/sources/301380115.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:9fd047e9cb3bdcfee3b360c200b4cff569e28fe73f99e9c90ad92bca95bc0ef2" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:63568080c6105aa80841e538acbf4b32ea397f77b5b5411b5d8d5be95d0a81ad" [label="local://context" shape="ellipse"];
  "sha256:2366e6e2069bad4093d355f24bda1de766e507faf3e162624f61c5aa6ec789d9" [label="copy{src=/deployment/nginx.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:f96c0446716f4589452f79420324f9dd20564bdeae8fb0e0279a5f7d6fc99607" [label="sha256:f96c0446716f4589452f79420324f9dd20564bdeae8fb0e0279a5f7d6fc99607" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:9fd047e9cb3bdcfee3b360c200b4cff569e28fe73f99e9c90ad92bca95bc0ef2" [label=""];
  "sha256:9fd047e9cb3bdcfee3b360c200b4cff569e28fe73f99e9c90ad92bca95bc0ef2" -> "sha256:2366e6e2069bad4093d355f24bda1de766e507faf3e162624f61c5aa6ec789d9" [label=""];
  "sha256:63568080c6105aa80841e538acbf4b32ea397f77b5b5411b5d8d5be95d0a81ad" -> "sha256:2366e6e2069bad4093d355f24bda1de766e507faf3e162624f61c5aa6ec789d9" [label=""];
  "sha256:2366e6e2069bad4093d355f24bda1de766e507faf3e162624f61c5aa6ec789d9" -> "sha256:f96c0446716f4589452f79420324f9dd20564bdeae8fb0e0279a5f7d6fc99607" [label=""];
}

