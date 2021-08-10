[app/sources/152733433.Dockerfile]
digraph {
  "sha256:bbc2505b42a004f3de4cb7dac4adae728624aa38ef6f7fd448594e28cefb59b0" [label="local://context" shape="ellipse"];
  "sha256:008eb27e04e6bbef677d670cd09822d1d981c4ad26dd80f646aa9bd6317d17fd" [label="docker-image://gcr.io/skia-public/basealpine:3.8" shape="ellipse"];
  "sha256:e3e2d1d4c632c791dff7aa81cbf25089b80ce92ecdaca42d26d0caf9b0ed9970" [label="/bin/sh -c apk update && apk add --no-cache git" shape="box"];
  "sha256:e7a12e7096d08ba4066aabd3412b9c085e4a846a76ad3c081b06fcc8986db091" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:fef5b4571424846f6f4893f620e2e05b6d1c256c5f37880e0130bdd617258ac9" [label="sha256:fef5b4571424846f6f4893f620e2e05b6d1c256c5f37880e0130bdd617258ac9" shape="plaintext"];
  "sha256:008eb27e04e6bbef677d670cd09822d1d981c4ad26dd80f646aa9bd6317d17fd" -> "sha256:e3e2d1d4c632c791dff7aa81cbf25089b80ce92ecdaca42d26d0caf9b0ed9970" [label=""];
  "sha256:e3e2d1d4c632c791dff7aa81cbf25089b80ce92ecdaca42d26d0caf9b0ed9970" -> "sha256:e7a12e7096d08ba4066aabd3412b9c085e4a846a76ad3c081b06fcc8986db091" [label=""];
  "sha256:bbc2505b42a004f3de4cb7dac4adae728624aa38ef6f7fd448594e28cefb59b0" -> "sha256:e7a12e7096d08ba4066aabd3412b9c085e4a846a76ad3c081b06fcc8986db091" [label=""];
  "sha256:e7a12e7096d08ba4066aabd3412b9c085e4a846a76ad3c081b06fcc8986db091" -> "sha256:fef5b4571424846f6f4893f620e2e05b6d1c256c5f37880e0130bdd617258ac9" [label=""];
}

