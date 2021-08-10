[app/sources/294284421.Dockerfile]
digraph {
  "sha256:45ef94b0625e2256426b394af7de0b6705ab9107e114d83dd2269ad82419dce2" [label="docker-image://docker.io/library/alpine:latest@sha256:eb3e4e175ba6d212ba1d6e04fc0782916c08e1c9d7b45892e9796141b1d379ae" shape="ellipse"];
  "sha256:1c138490258906d27ddca385f77432784429ca0a3e632ef1801f817281e00cae" [label="/bin/sh -c apk update && apk add ca-certificates && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:fe333f78778e795c4c9ae3eac48eef98a81811fe8d9a93490da0080194ec7ab1" [label="local://context" shape="ellipse"];
  "sha256:68126bf7d5c473c6d365cebad1c789cba57af9d3c2212f51bd1daed938196f2e" [label="copy{src=/parse.d, dest=/}" shape="note"];
  "sha256:011d7988bc7d82a86f1b72a72b70b8ad3e0aeb875a65b784fd447dd395658620" [label="sha256:011d7988bc7d82a86f1b72a72b70b8ad3e0aeb875a65b784fd447dd395658620" shape="plaintext"];
  "sha256:45ef94b0625e2256426b394af7de0b6705ab9107e114d83dd2269ad82419dce2" -> "sha256:1c138490258906d27ddca385f77432784429ca0a3e632ef1801f817281e00cae" [label=""];
  "sha256:1c138490258906d27ddca385f77432784429ca0a3e632ef1801f817281e00cae" -> "sha256:68126bf7d5c473c6d365cebad1c789cba57af9d3c2212f51bd1daed938196f2e" [label=""];
  "sha256:fe333f78778e795c4c9ae3eac48eef98a81811fe8d9a93490da0080194ec7ab1" -> "sha256:68126bf7d5c473c6d365cebad1c789cba57af9d3c2212f51bd1daed938196f2e" [label=""];
  "sha256:68126bf7d5c473c6d365cebad1c789cba57af9d3c2212f51bd1daed938196f2e" -> "sha256:011d7988bc7d82a86f1b72a72b70b8ad3e0aeb875a65b784fd447dd395658620" [label=""];
}

