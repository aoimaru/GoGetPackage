[app/sources/335973126.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:fcd366255aab9b2e9261bf9e647e133a8adb0f2d329b24897266297eda876805" [label="mkdir{path=/root/stage}" shape="note"];
  "sha256:62c45981294361ee20b063e746c6e32e5e66fdbb7fc82df6b6c90fd4140d3c4c" [label="local://context" shape="ellipse"];
  "sha256:a61ce813d65820da4ac335aebbfef84a5639e82ac793fb50a2b439fdce9d94f3" [label="copy{src=/package.json, dest=/root/stage/}" shape="note"];
  "sha256:d0721aa6239615831de1f3619c7c5d59b762a953ec80a0b072933db0766d71c9" [label="copy{src=/package-lock.json, dest=/root/stage/}" shape="note"];
  "sha256:4f0e2775706b18c4a4785cc3ff8c0c7b1ca8d55cbf6de80c638ffae9138d742c" [label="/bin/sh -c npm ci" shape="box"];
  "sha256:1fc154e7c01b99e03cfba27f00e708acf1347f2ce32e79144b5d70e69eb9e3fe" [label="copy{src=/, dest=/root/stage/}" shape="note"];
  "sha256:cbfff5d75d37321cd622fcef7923ce95995e0a233338062d393e3b7e833e5523" [label="copy{src=/build_and_publish.sh, dest=/}" shape="note"];
  "sha256:47284dda173b19b9c334b1b1ac18384448fadc142dad15fd60717e78819aa57f" [label="/bin/sh -c chmod +x /build_and_publish.sh" shape="box"];
  "sha256:b8396913474e7d85274487357305b3c60b11d78875fa83f7b851837b644c7f99" [label="sha256:b8396913474e7d85274487357305b3c60b11d78875fa83f7b851837b644c7f99" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:fcd366255aab9b2e9261bf9e647e133a8adb0f2d329b24897266297eda876805" [label=""];
  "sha256:fcd366255aab9b2e9261bf9e647e133a8adb0f2d329b24897266297eda876805" -> "sha256:a61ce813d65820da4ac335aebbfef84a5639e82ac793fb50a2b439fdce9d94f3" [label=""];
  "sha256:62c45981294361ee20b063e746c6e32e5e66fdbb7fc82df6b6c90fd4140d3c4c" -> "sha256:a61ce813d65820da4ac335aebbfef84a5639e82ac793fb50a2b439fdce9d94f3" [label=""];
  "sha256:a61ce813d65820da4ac335aebbfef84a5639e82ac793fb50a2b439fdce9d94f3" -> "sha256:d0721aa6239615831de1f3619c7c5d59b762a953ec80a0b072933db0766d71c9" [label=""];
  "sha256:62c45981294361ee20b063e746c6e32e5e66fdbb7fc82df6b6c90fd4140d3c4c" -> "sha256:d0721aa6239615831de1f3619c7c5d59b762a953ec80a0b072933db0766d71c9" [label=""];
  "sha256:d0721aa6239615831de1f3619c7c5d59b762a953ec80a0b072933db0766d71c9" -> "sha256:4f0e2775706b18c4a4785cc3ff8c0c7b1ca8d55cbf6de80c638ffae9138d742c" [label=""];
  "sha256:4f0e2775706b18c4a4785cc3ff8c0c7b1ca8d55cbf6de80c638ffae9138d742c" -> "sha256:1fc154e7c01b99e03cfba27f00e708acf1347f2ce32e79144b5d70e69eb9e3fe" [label=""];
  "sha256:62c45981294361ee20b063e746c6e32e5e66fdbb7fc82df6b6c90fd4140d3c4c" -> "sha256:1fc154e7c01b99e03cfba27f00e708acf1347f2ce32e79144b5d70e69eb9e3fe" [label=""];
  "sha256:1fc154e7c01b99e03cfba27f00e708acf1347f2ce32e79144b5d70e69eb9e3fe" -> "sha256:cbfff5d75d37321cd622fcef7923ce95995e0a233338062d393e3b7e833e5523" [label=""];
  "sha256:62c45981294361ee20b063e746c6e32e5e66fdbb7fc82df6b6c90fd4140d3c4c" -> "sha256:cbfff5d75d37321cd622fcef7923ce95995e0a233338062d393e3b7e833e5523" [label=""];
  "sha256:cbfff5d75d37321cd622fcef7923ce95995e0a233338062d393e3b7e833e5523" -> "sha256:47284dda173b19b9c334b1b1ac18384448fadc142dad15fd60717e78819aa57f" [label=""];
  "sha256:47284dda173b19b9c334b1b1ac18384448fadc142dad15fd60717e78819aa57f" -> "sha256:b8396913474e7d85274487357305b3c60b11d78875fa83f7b851837b644c7f99" [label=""];
}

