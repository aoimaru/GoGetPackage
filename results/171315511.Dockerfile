[app/sources/171315511.Dockerfile]
digraph {
  "sha256:016c359d671b64a6a925de1f5a6b02939a1634c33b097e6f4cfc8b2f89d3e89e" [label="docker-image://docker.io/google/golang:stable" shape="ellipse"];
  "sha256:69b0ec1397652edfef9626ab29bf5fc7427cf8de13f20245e32609c062036512" [label="local://context" shape="ellipse"];
  "sha256:3702bdfa012ecd81d1a0ab87837320dfcadb96536952f775abefcab972fc71d9" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:85402c31b5191bf1384dfa5a0da5c4a7c4df2567a9d26341d825157ae7b3b34c" [label="/bin/sh -c cd /src && go build -o /tmp/a.out" shape="box"];
  "sha256:786b1adfe41562cdbbadc9ed1772a21a16257f42fcf069e04339185139f5c796" [label="sha256:786b1adfe41562cdbbadc9ed1772a21a16257f42fcf069e04339185139f5c796" shape="plaintext"];
  "sha256:016c359d671b64a6a925de1f5a6b02939a1634c33b097e6f4cfc8b2f89d3e89e" -> "sha256:3702bdfa012ecd81d1a0ab87837320dfcadb96536952f775abefcab972fc71d9" [label=""];
  "sha256:69b0ec1397652edfef9626ab29bf5fc7427cf8de13f20245e32609c062036512" -> "sha256:3702bdfa012ecd81d1a0ab87837320dfcadb96536952f775abefcab972fc71d9" [label=""];
  "sha256:3702bdfa012ecd81d1a0ab87837320dfcadb96536952f775abefcab972fc71d9" -> "sha256:85402c31b5191bf1384dfa5a0da5c4a7c4df2567a9d26341d825157ae7b3b34c" [label=""];
  "sha256:85402c31b5191bf1384dfa5a0da5c4a7c4df2567a9d26341d825157ae7b3b34c" -> "sha256:786b1adfe41562cdbbadc9ed1772a21a16257f42fcf069e04339185139f5c796" [label=""];
}

