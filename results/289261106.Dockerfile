[app/sources/289261106.Dockerfile]
digraph {
  "sha256:fc7b21acc41b25985fc2ee997de0c740e7ca1afe90713a2a45f0033870c429cb" [label="docker-image://docker.io/library/python:3-alpine3.7" shape="ellipse"];
  "sha256:3e1c5862b469061762f85869b2b6777c24aeffa7ad460b4446b7ef278663dca4" [label="local://context" shape="ellipse"];
  "sha256:9cd09df5274a6ef6d7989c39ae2511706aa1a02c5520cc2ef53deacd47a6e02a" [label="copy{src=/, dest=/gensynet}" shape="note"];
  "sha256:911ba822fc473ff2e7854b2da365fbbcdc75bdd191fc4506107b5c8386c6c9a6" [label="mkdir{path=/gensynet}" shape="note"];
  "sha256:3febcfaba0f613dba9cd7cd97cb38896daa49825c44b76a695432180dd56bc96" [label="sha256:3febcfaba0f613dba9cd7cd97cb38896daa49825c44b76a695432180dd56bc96" shape="plaintext"];
  "sha256:fc7b21acc41b25985fc2ee997de0c740e7ca1afe90713a2a45f0033870c429cb" -> "sha256:9cd09df5274a6ef6d7989c39ae2511706aa1a02c5520cc2ef53deacd47a6e02a" [label=""];
  "sha256:3e1c5862b469061762f85869b2b6777c24aeffa7ad460b4446b7ef278663dca4" -> "sha256:9cd09df5274a6ef6d7989c39ae2511706aa1a02c5520cc2ef53deacd47a6e02a" [label=""];
  "sha256:9cd09df5274a6ef6d7989c39ae2511706aa1a02c5520cc2ef53deacd47a6e02a" -> "sha256:911ba822fc473ff2e7854b2da365fbbcdc75bdd191fc4506107b5c8386c6c9a6" [label=""];
  "sha256:911ba822fc473ff2e7854b2da365fbbcdc75bdd191fc4506107b5c8386c6c9a6" -> "sha256:3febcfaba0f613dba9cd7cd97cb38896daa49825c44b76a695432180dd56bc96" [label=""];
}

