[app/sources/470540655.Dockerfile]
digraph {
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" [label="docker-image://docker.io/library/redis:latest" shape="ellipse"];
  "sha256:083fdcc2e01bbb55b54cb59da84f7adb15c2006581b1ebc68e53966219ecd036" [label="local://context" shape="ellipse"];
  "sha256:66094a22c74fbcb142bcf583f4396a419b20231b6b0dff17e780485bfd664aeb" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:765b2214046cc3662faea9466971341146d6658546f13c1c68677b1b879924ce" [label="sha256:765b2214046cc3662faea9466971341146d6658546f13c1c68677b1b879924ce" shape="plaintext"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:66094a22c74fbcb142bcf583f4396a419b20231b6b0dff17e780485bfd664aeb" [label=""];
  "sha256:083fdcc2e01bbb55b54cb59da84f7adb15c2006581b1ebc68e53966219ecd036" -> "sha256:66094a22c74fbcb142bcf583f4396a419b20231b6b0dff17e780485bfd664aeb" [label=""];
  "sha256:66094a22c74fbcb142bcf583f4396a419b20231b6b0dff17e780485bfd664aeb" -> "sha256:765b2214046cc3662faea9466971341146d6658546f13c1c68677b1b879924ce" [label=""];
}

