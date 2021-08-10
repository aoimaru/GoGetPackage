[app/sources/329980276.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:6f93c40ead8418c24b90d682679487cc531768d450ab314e095688a24adc6c3b" [label="/bin/sh -c apk add --update nginx ffmpeg && rm -rf /var/cache/apk/* && mkdir /tmp/stream" shape="box"];
  "sha256:f5fc9c20a17fef44343493cda520a1607bd67931d91e313fd31d0b82970cbb5a" [label="local://context" shape="ellipse"];
  "sha256:c2253548881ea2a29ea738980e20cdc7a3763999fe788fed6989d20914d9c379" [label="copy{src=/nginx/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:4813b896868aa967c73ad2d39545dd86d1adf4784721cbd339ef982979bd0185" [label="copy{src=/startup.sh, dest=/}" shape="note"];
  "sha256:c3cee8a80b7c98163ef910909be40a25c251ee8e05acf3fd19f09157309d774d" [label="copy{src=/create_ffmpeg_cmd.sh, dest=/}" shape="note"];
  "sha256:f1009d699057bfbf63b2c2d7505fe2e5ac50f5011d52a8b921eece26465700a1" [label="chmod +x /startup.sh" shape="box"];
  "sha256:428f4fb6eadb3da63612df6d7711e812d7f2ecd7825f76fa4c3cdfba39c41b7c" [label="chmod +x /create_ffmpeg_cmd.sh" shape="box"];
  "sha256:f4b0f198eb3bd45ea8afd10e5533ca71c062ad12b3a8623550f766179b9ef090" [label="sha256:f4b0f198eb3bd45ea8afd10e5533ca71c062ad12b3a8623550f766179b9ef090" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:6f93c40ead8418c24b90d682679487cc531768d450ab314e095688a24adc6c3b" [label=""];
  "sha256:6f93c40ead8418c24b90d682679487cc531768d450ab314e095688a24adc6c3b" -> "sha256:c2253548881ea2a29ea738980e20cdc7a3763999fe788fed6989d20914d9c379" [label=""];
  "sha256:f5fc9c20a17fef44343493cda520a1607bd67931d91e313fd31d0b82970cbb5a" -> "sha256:c2253548881ea2a29ea738980e20cdc7a3763999fe788fed6989d20914d9c379" [label=""];
  "sha256:c2253548881ea2a29ea738980e20cdc7a3763999fe788fed6989d20914d9c379" -> "sha256:4813b896868aa967c73ad2d39545dd86d1adf4784721cbd339ef982979bd0185" [label=""];
  "sha256:f5fc9c20a17fef44343493cda520a1607bd67931d91e313fd31d0b82970cbb5a" -> "sha256:4813b896868aa967c73ad2d39545dd86d1adf4784721cbd339ef982979bd0185" [label=""];
  "sha256:4813b896868aa967c73ad2d39545dd86d1adf4784721cbd339ef982979bd0185" -> "sha256:c3cee8a80b7c98163ef910909be40a25c251ee8e05acf3fd19f09157309d774d" [label=""];
  "sha256:f5fc9c20a17fef44343493cda520a1607bd67931d91e313fd31d0b82970cbb5a" -> "sha256:c3cee8a80b7c98163ef910909be40a25c251ee8e05acf3fd19f09157309d774d" [label=""];
  "sha256:c3cee8a80b7c98163ef910909be40a25c251ee8e05acf3fd19f09157309d774d" -> "sha256:f1009d699057bfbf63b2c2d7505fe2e5ac50f5011d52a8b921eece26465700a1" [label=""];
  "sha256:f1009d699057bfbf63b2c2d7505fe2e5ac50f5011d52a8b921eece26465700a1" -> "sha256:428f4fb6eadb3da63612df6d7711e812d7f2ecd7825f76fa4c3cdfba39c41b7c" [label=""];
  "sha256:428f4fb6eadb3da63612df6d7711e812d7f2ecd7825f76fa4c3cdfba39c41b7c" -> "sha256:f4b0f198eb3bd45ea8afd10e5533ca71c062ad12b3a8623550f766179b9ef090" [label=""];
}

