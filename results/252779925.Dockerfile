[app/sources/252779925.Dockerfile]
digraph {
  "sha256:cef24027e53e306096f9e5e90e5570145d7c7e6430cd67145bc6add8dc44e181" [label="docker-image://docker.io/axeclbr/java:jre8" shape="ellipse"];
  "sha256:da267a7cd62b7132ca44999ac18d34e1da0d8ac7c347676fa6ffcbce3de3e001" [label="/bin/sh -c apk --update add bash curl vim && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:59c0a7aa378a3e000cfe6776c922685426a15ffcb34daccc54636449a440af55" [label="sha256:59c0a7aa378a3e000cfe6776c922685426a15ffcb34daccc54636449a440af55" shape="plaintext"];
  "sha256:cef24027e53e306096f9e5e90e5570145d7c7e6430cd67145bc6add8dc44e181" -> "sha256:da267a7cd62b7132ca44999ac18d34e1da0d8ac7c347676fa6ffcbce3de3e001" [label=""];
  "sha256:da267a7cd62b7132ca44999ac18d34e1da0d8ac7c347676fa6ffcbce3de3e001" -> "sha256:59c0a7aa378a3e000cfe6776c922685426a15ffcb34daccc54636449a440af55" [label=""];
}

