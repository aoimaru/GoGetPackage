[app/sources/304826935.Dockerfile]
digraph {
  "sha256:7a62f9164af3ef1f3a9d3f5244dcd949b103ddd49ed57be18460b428046edb2d" [label="docker-image://docker.io/razorpay/pithos:rzp-php7.1-nginx" shape="ellipse"];
  "sha256:8117d52a537242b00c3beaf9348929d90cbcf1035e664dad7b3b433af9968a7d" [label="local://context" shape="ellipse"];
  "sha256:2d02ecb907a76779d8de140fb3cd92efebe49cb01e1e7fa2f73c653b50a6f9a0" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:93dd758c88c830342cd4408c19de043db58e0db0ab3bd06c89aded571105dea5" [label="copy{src=/dockerconf/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:6cd62a920cd0a720dd813aac485bc50d91b826956286181fc0e560f2f43160b3" [label="mkdir{path=/app}" shape="note"];
  "sha256:b8ac4f0aea31556221422016151067808aca1bee6ad17986499b04d19a748f10" [label="/bin/sh -c apk update &&     apk add --no-cache     php7-tokenizer     php7-xmlwriter     php7-simplexml     && composer install --no-interaction     && composer clear-cache" shape="box"];
  "sha256:859d8741fa35f2ae1969426df91a2c8a70f928a24fe13ba661b762f28cedf15f" [label="sha256:859d8741fa35f2ae1969426df91a2c8a70f928a24fe13ba661b762f28cedf15f" shape="plaintext"];
  "sha256:7a62f9164af3ef1f3a9d3f5244dcd949b103ddd49ed57be18460b428046edb2d" -> "sha256:2d02ecb907a76779d8de140fb3cd92efebe49cb01e1e7fa2f73c653b50a6f9a0" [label=""];
  "sha256:8117d52a537242b00c3beaf9348929d90cbcf1035e664dad7b3b433af9968a7d" -> "sha256:2d02ecb907a76779d8de140fb3cd92efebe49cb01e1e7fa2f73c653b50a6f9a0" [label=""];
  "sha256:2d02ecb907a76779d8de140fb3cd92efebe49cb01e1e7fa2f73c653b50a6f9a0" -> "sha256:93dd758c88c830342cd4408c19de043db58e0db0ab3bd06c89aded571105dea5" [label=""];
  "sha256:8117d52a537242b00c3beaf9348929d90cbcf1035e664dad7b3b433af9968a7d" -> "sha256:93dd758c88c830342cd4408c19de043db58e0db0ab3bd06c89aded571105dea5" [label=""];
  "sha256:93dd758c88c830342cd4408c19de043db58e0db0ab3bd06c89aded571105dea5" -> "sha256:6cd62a920cd0a720dd813aac485bc50d91b826956286181fc0e560f2f43160b3" [label=""];
  "sha256:6cd62a920cd0a720dd813aac485bc50d91b826956286181fc0e560f2f43160b3" -> "sha256:b8ac4f0aea31556221422016151067808aca1bee6ad17986499b04d19a748f10" [label=""];
  "sha256:b8ac4f0aea31556221422016151067808aca1bee6ad17986499b04d19a748f10" -> "sha256:859d8741fa35f2ae1969426df91a2c8a70f928a24fe13ba661b762f28cedf15f" [label=""];
}

