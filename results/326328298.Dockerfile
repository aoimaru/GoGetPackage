[app/sources/326328298.Dockerfile]
digraph {
  "sha256:f56f33dbe87d23848caec945bebc176a12a1ea5bac329283319aab0e81dafd13" [label="local://context" shape="ellipse"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" [label="docker-image://docker.io/library/golang:1.10" shape="ellipse"];
  "sha256:aac3f944e0c52fa10caec17251d82a5e8debf9a2c31c22c2d33837f85874d4d5" [label="mkdir{path=/go/src/github.com/Zach-Johnson/go-docker-hot-reload-example}" shape="note"];
  "sha256:d6caa46d28250eddd920aee535e53c6cd5cd6d02325a98146cfb66935f7a00e6" [label="copy{src=/, dest=/go/src/github.com/Zach-Johnson/go-docker-hot-reload-example/}" shape="note"];
  "sha256:ee27c7f8b919badb0313306e018e36b42bc21b664f6e9829a41eae954930680c" [label="go get github.com/githubnemo/CompileDaemon" shape="box"];
  "sha256:c7d8921394aba731abfcc5974da1d243e4b3e3ae88dc89c0c599fed52af2cd9f" [label="sha256:c7d8921394aba731abfcc5974da1d243e4b3e3ae88dc89c0c599fed52af2cd9f" shape="plaintext"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" -> "sha256:aac3f944e0c52fa10caec17251d82a5e8debf9a2c31c22c2d33837f85874d4d5" [label=""];
  "sha256:aac3f944e0c52fa10caec17251d82a5e8debf9a2c31c22c2d33837f85874d4d5" -> "sha256:d6caa46d28250eddd920aee535e53c6cd5cd6d02325a98146cfb66935f7a00e6" [label=""];
  "sha256:f56f33dbe87d23848caec945bebc176a12a1ea5bac329283319aab0e81dafd13" -> "sha256:d6caa46d28250eddd920aee535e53c6cd5cd6d02325a98146cfb66935f7a00e6" [label=""];
  "sha256:d6caa46d28250eddd920aee535e53c6cd5cd6d02325a98146cfb66935f7a00e6" -> "sha256:ee27c7f8b919badb0313306e018e36b42bc21b664f6e9829a41eae954930680c" [label=""];
  "sha256:ee27c7f8b919badb0313306e018e36b42bc21b664f6e9829a41eae954930680c" -> "sha256:c7d8921394aba731abfcc5974da1d243e4b3e3ae88dc89c0c599fed52af2cd9f" [label=""];
}

