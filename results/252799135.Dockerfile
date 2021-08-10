[app/sources/252799135.Dockerfile]
digraph {
  "sha256:5b50cb41c0797d987e482b92109e5cc4e1a9454107bcba643a70465be184e26c" [label="docker-image://docker.io/dexec/base-c:1.0.1@sha256:aadfdbf98e808fa004ebdfa09862abb636945015f9a075dc43b86b5579d54378" shape="ellipse"];
  "sha256:eff44ff9fd11b23ed02c7407b4e6f5b54e5080c4070515172bceac5069218764" [label="local://context" shape="ellipse"];
  "sha256:cae66cd4dce1b846c7cbb961fe0303a7e1cf4b0d7dff2ff023dfb9fa06741352" [label="copy{src=/image-common, dest=/tmp/dexec/image-common}" shape="note"];
  "sha256:35d392c1025b3a654d1519f9e8ca21e3130aba26b98e01c0bba5b53d5b7f9224" [label="sha256:35d392c1025b3a654d1519f9e8ca21e3130aba26b98e01c0bba5b53d5b7f9224" shape="plaintext"];
  "sha256:5b50cb41c0797d987e482b92109e5cc4e1a9454107bcba643a70465be184e26c" -> "sha256:cae66cd4dce1b846c7cbb961fe0303a7e1cf4b0d7dff2ff023dfb9fa06741352" [label=""];
  "sha256:eff44ff9fd11b23ed02c7407b4e6f5b54e5080c4070515172bceac5069218764" -> "sha256:cae66cd4dce1b846c7cbb961fe0303a7e1cf4b0d7dff2ff023dfb9fa06741352" [label=""];
  "sha256:cae66cd4dce1b846c7cbb961fe0303a7e1cf4b0d7dff2ff023dfb9fa06741352" -> "sha256:35d392c1025b3a654d1519f9e8ca21e3130aba26b98e01c0bba5b53d5b7f9224" [label=""];
}

