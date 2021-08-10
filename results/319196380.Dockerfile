[app/sources/319196380.Dockerfile]
digraph {
  "sha256:b5e64f4ccd512f0630d7b3b023d67c0bf8af951424f0e54c2d2e2cc580b088c3" [label="local://context" shape="ellipse"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:529cbfb716f3c6e2b5acb0ee16e220091348d9c73335641a579247d0cbc9f123" [label="copy{src=/, dest=/go/src/github.com/gortc/gortcd}" shape="note"];
  "sha256:1a7908c2acefaaa010a58eacdc2e03eadb6ab7fff53b91070d6e7bdb17140e2d" [label="/bin/sh -c go install github.com/gortc/gortcd" shape="box"];
  "sha256:251ba960339be0627200645516159818fda59f8daf18a78c4bf89eb14ecda1a7" [label="sha256:251ba960339be0627200645516159818fda59f8daf18a78c4bf89eb14ecda1a7" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:529cbfb716f3c6e2b5acb0ee16e220091348d9c73335641a579247d0cbc9f123" [label=""];
  "sha256:b5e64f4ccd512f0630d7b3b023d67c0bf8af951424f0e54c2d2e2cc580b088c3" -> "sha256:529cbfb716f3c6e2b5acb0ee16e220091348d9c73335641a579247d0cbc9f123" [label=""];
  "sha256:529cbfb716f3c6e2b5acb0ee16e220091348d9c73335641a579247d0cbc9f123" -> "sha256:1a7908c2acefaaa010a58eacdc2e03eadb6ab7fff53b91070d6e7bdb17140e2d" [label=""];
  "sha256:1a7908c2acefaaa010a58eacdc2e03eadb6ab7fff53b91070d6e7bdb17140e2d" -> "sha256:251ba960339be0627200645516159818fda59f8daf18a78c4bf89eb14ecda1a7" [label=""];
}

