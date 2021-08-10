[app/sources/362684398.Dockerfile]
digraph {
  "sha256:73e94ae0804a4d181c3150712c8f653b4790556a8459cf93e0167e0a458b1b30" [label="docker-image://docker.io/chapdev/alpine-nginx-php:latest" shape="ellipse"];
  "sha256:d45fd2327c165c37bf5c820e03b9d57b2faa7563ae439f0fbf2e196c124a54fc" [label="local://context" shape="ellipse"];
  "sha256:a84087527fee6e40f95e4f2f950326fb1fc3f6a51d7efadcce69e225943ba596" [label="copy{src=/, dest=/setup/}" shape="note"];
  "sha256:566419053df13b6e28bbc0701501441aa1ee58abbb5477627a06e64a58853a56" [label="/bin/sh -c /setup/build/install.sh" shape="box"];
  "sha256:316c334cab7e1438d4b5633add11fad416dcf8afef5ff52f192a44356d09683d" [label="sha256:316c334cab7e1438d4b5633add11fad416dcf8afef5ff52f192a44356d09683d" shape="plaintext"];
  "sha256:73e94ae0804a4d181c3150712c8f653b4790556a8459cf93e0167e0a458b1b30" -> "sha256:a84087527fee6e40f95e4f2f950326fb1fc3f6a51d7efadcce69e225943ba596" [label=""];
  "sha256:d45fd2327c165c37bf5c820e03b9d57b2faa7563ae439f0fbf2e196c124a54fc" -> "sha256:a84087527fee6e40f95e4f2f950326fb1fc3f6a51d7efadcce69e225943ba596" [label=""];
  "sha256:a84087527fee6e40f95e4f2f950326fb1fc3f6a51d7efadcce69e225943ba596" -> "sha256:566419053df13b6e28bbc0701501441aa1ee58abbb5477627a06e64a58853a56" [label=""];
  "sha256:566419053df13b6e28bbc0701501441aa1ee58abbb5477627a06e64a58853a56" -> "sha256:316c334cab7e1438d4b5633add11fad416dcf8afef5ff52f192a44356d09683d" [label=""];
}

