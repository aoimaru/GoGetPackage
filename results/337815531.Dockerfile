[app/sources/337815531.Dockerfile]
digraph {
  "sha256:d57fc12b45bc196776704fefb0ea5227d6ca0304c839ef52f4d9f02ee03ccc0b" [label="docker-image://docker.io/library/node:11" shape="ellipse"];
  "sha256:8f570e425ef0ccb1643dcd8f3647ef57f15a0f6c314a42b9909ba540797c45f1" [label="mkdir{path=/app}" shape="note"];
  "sha256:11e19c0596cdb7240564fb77490ea75d58bbc761c60fd910a80be2f5eb620483" [label="local://context" shape="ellipse"];
  "sha256:5c0db205769ea3078a4ba7f7e270d5dfca00f7b13729a7bc65319c59f76016e4" [label="copy{src=/.babelrc, dest=/app/},copy{src=/.browserslistrc, dest=/app/},copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:eeea51d072560e9291871043aafb695238603ccdd065b69cc60cebaa13097fdf" [label="/bin/sh -c yarn" shape="box"];
  "sha256:8e73de8651fb781930d51404aba805a82734d92a0914eb6e4b0fe507174c6784" [label="sha256:8e73de8651fb781930d51404aba805a82734d92a0914eb6e4b0fe507174c6784" shape="plaintext"];
  "sha256:d57fc12b45bc196776704fefb0ea5227d6ca0304c839ef52f4d9f02ee03ccc0b" -> "sha256:8f570e425ef0ccb1643dcd8f3647ef57f15a0f6c314a42b9909ba540797c45f1" [label=""];
  "sha256:8f570e425ef0ccb1643dcd8f3647ef57f15a0f6c314a42b9909ba540797c45f1" -> "sha256:5c0db205769ea3078a4ba7f7e270d5dfca00f7b13729a7bc65319c59f76016e4" [label=""];
  "sha256:11e19c0596cdb7240564fb77490ea75d58bbc761c60fd910a80be2f5eb620483" -> "sha256:5c0db205769ea3078a4ba7f7e270d5dfca00f7b13729a7bc65319c59f76016e4" [label=""];
  "sha256:5c0db205769ea3078a4ba7f7e270d5dfca00f7b13729a7bc65319c59f76016e4" -> "sha256:eeea51d072560e9291871043aafb695238603ccdd065b69cc60cebaa13097fdf" [label=""];
  "sha256:eeea51d072560e9291871043aafb695238603ccdd065b69cc60cebaa13097fdf" -> "sha256:8e73de8651fb781930d51404aba805a82734d92a0914eb6e4b0fe507174c6784" [label=""];
}

