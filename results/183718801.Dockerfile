[app/sources/183718801.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:26e841f058721f04cd2c0f168ea11767f9a7d62ac41f7eafa48f1a78ab1508cc" [label="local://context" shape="ellipse"];
  "sha256:d47bd3725323733957b5809d6bd829f8f1db7e168a7fdea70b742f1ce2b71488" [label="copy{src=/proxy.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:0a4626abdcef43beb4ead992181591704b673f6759b511cb64ed85448503634b" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:14450e92ad8cb8560c8c4e25a0ce7bd93ef9c78caf7535a956a74d5eaf93d6c8" [label="sha256:14450e92ad8cb8560c8c4e25a0ce7bd93ef9c78caf7535a956a74d5eaf93d6c8" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:d47bd3725323733957b5809d6bd829f8f1db7e168a7fdea70b742f1ce2b71488" [label=""];
  "sha256:26e841f058721f04cd2c0f168ea11767f9a7d62ac41f7eafa48f1a78ab1508cc" -> "sha256:d47bd3725323733957b5809d6bd829f8f1db7e168a7fdea70b742f1ce2b71488" [label=""];
  "sha256:d47bd3725323733957b5809d6bd829f8f1db7e168a7fdea70b742f1ce2b71488" -> "sha256:0a4626abdcef43beb4ead992181591704b673f6759b511cb64ed85448503634b" [label=""];
  "sha256:26e841f058721f04cd2c0f168ea11767f9a7d62ac41f7eafa48f1a78ab1508cc" -> "sha256:0a4626abdcef43beb4ead992181591704b673f6759b511cb64ed85448503634b" [label=""];
  "sha256:0a4626abdcef43beb4ead992181591704b673f6759b511cb64ed85448503634b" -> "sha256:14450e92ad8cb8560c8c4e25a0ce7bd93ef9c78caf7535a956a74d5eaf93d6c8" [label=""];
}

