[app/sources/197421777.Dockerfile]
digraph {
  "sha256:207237cf3203f4e03c369c3ad465d289de1d5c9af831688ebcfa671433e20ccb" [label="docker-image://docker.io/library/node:4" shape="ellipse"];
  "sha256:39a834e975fabb26558b22e2b2c28214d4e05ad905f9502e30691cbd09d13001" [label="local://context" shape="ellipse"];
  "sha256:9808b61b8282a42e9f156c36d92c49e65beaa1dbd7d0da2f3724f58180734eec" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:5275b075dbac50ebe72833babe1a4a65f7171526f35072abf17a56ccc11756d3" [label="/bin/sh -c npm install --ignore-scripts" shape="box"];
  "sha256:60272e24e4fcccf19a2552961a4ade58263b04d60f04a04dc765d43654ffebcb" [label="sha256:60272e24e4fcccf19a2552961a4ade58263b04d60f04a04dc765d43654ffebcb" shape="plaintext"];
  "sha256:207237cf3203f4e03c369c3ad465d289de1d5c9af831688ebcfa671433e20ccb" -> "sha256:9808b61b8282a42e9f156c36d92c49e65beaa1dbd7d0da2f3724f58180734eec" [label=""];
  "sha256:39a834e975fabb26558b22e2b2c28214d4e05ad905f9502e30691cbd09d13001" -> "sha256:9808b61b8282a42e9f156c36d92c49e65beaa1dbd7d0da2f3724f58180734eec" [label=""];
  "sha256:9808b61b8282a42e9f156c36d92c49e65beaa1dbd7d0da2f3724f58180734eec" -> "sha256:5275b075dbac50ebe72833babe1a4a65f7171526f35072abf17a56ccc11756d3" [label=""];
  "sha256:5275b075dbac50ebe72833babe1a4a65f7171526f35072abf17a56ccc11756d3" -> "sha256:60272e24e4fcccf19a2552961a4ade58263b04d60f04a04dc765d43654ffebcb" [label=""];
}

