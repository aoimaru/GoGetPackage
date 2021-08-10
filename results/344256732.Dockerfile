[app/sources/344256732.Dockerfile]
digraph {
  "sha256:725659f55d2ca38666e89ef3c948d63c96501832644696569e736cfee6d39ead" [label="local://context" shape="ellipse"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:85de3a651b91d24f37defdb3897d4a41f3db9e3abb29d031bf0a23fdd40c5b14" [label="/bin/sh -c npm install -g npm@6 && rm -rf ~app/.npm /tmp/*" shape="box"];
  "sha256:15cd8e2a50bc6861c967afc04c095fc539e191786be776f5b80fe95359ec9a92" [label="/bin/sh -c addgroup -g 10001 app &&     adduser -D -G app -h /app -u 10001 app" shape="box"];
  "sha256:8394194546321eaf11d9d0330e60af57ddb0e6083172a4526ee6f2f1ae4e8985" [label="mkdir{path=/app}" shape="note"];
  "sha256:4932d27a516b3ee8398b5e2773ec1f1ffd1450f40a387c7aa48ba4e98908e1fa" [label="https://s3.amazonaws.com/dumb-init-dist/v1.2.0/dumb-init_1.2.0_amd64" shape="ellipse"];
  "sha256:6cad4593abac56eb6766897a54899f2d2d71077dd008f033b3d598d0e832da18" [label="copy{src=/dumb-init_1.2.0_amd64, dest=/usr/local/bin/dumb-init}" shape="note"];
  "sha256:34fc39645e92aa6babae8b8e2532a6b0c1c13fec1b2ac5028710dbfa5e60b268" [label="/bin/sh -c chmod +x /usr/local/bin/dumb-init" shape="box"];
  "sha256:43e248b2b861b7786e7924018c79251c16c7b347a91c25edd79e0ea30291927d" [label="/bin/sh -c apk add --repository http://dl-cdn.alpinelinux.org/alpine/v3.5/community/ --no-cache graphicsmagick git &&     apk add --repository http://dl-cdn.alpinelinux.org/alpine/v3.5/community/ --no-cache --virtual .build-deps git python make g++" shape="box"];
  "sha256:ce235976ffbe2735b2b485c24b83c1e2956620b1a6bad43d8afc810c0ce30e83" [label="copy{src=/npm-shrinkwrap.json, dest=/app/npm-shrinkwrap.json}" shape="note"];
  "sha256:9f432e7bc6773f65951966501bb44d48b8a3e299daaa87f3d72bab6e83c31bed" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:c4ef92a47b74d5e004b345e350a84e91fec417670970835db9c6a474e648dc6e" [label="copy{src=/scripts/check_gm.sh, dest=/app/scripts/check_gm.sh}" shape="note"];
  "sha256:4bae11e8196c3f3c1f6f5211903b52c954ab7db7375aef69b20c7e2d0d03c4e2" [label="/bin/sh -c npm install --production && rm -rf ~app/.npm /tmp/*" shape="box"];
  "sha256:b7f2eb37a1ab2ce871e8600f64580705f1e4796b20cb6a62915134761bcf2a90" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:2c3af0e9cb07bfca0e3086a27fe94d373914a418589a98300d5f8e9d188e6d3d" [label="/bin/sh -c apk add --repository http://dl-cdn.alpinelinux.org/alpine/v3.5/community/ --no-cache graphicsmagick git" shape="box"];
  "sha256:62741d7fc5922108895aa8605c7087df135885fa23c51b3f24e47b95b0c9d26b" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:68da465454b0e87a841bbe80c67d763221a8e2935925d487841c8d94480d2d29" [label="sha256:68da465454b0e87a841bbe80c67d763221a8e2935925d487841c8d94480d2d29" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:85de3a651b91d24f37defdb3897d4a41f3db9e3abb29d031bf0a23fdd40c5b14" [label=""];
  "sha256:85de3a651b91d24f37defdb3897d4a41f3db9e3abb29d031bf0a23fdd40c5b14" -> "sha256:15cd8e2a50bc6861c967afc04c095fc539e191786be776f5b80fe95359ec9a92" [label=""];
  "sha256:15cd8e2a50bc6861c967afc04c095fc539e191786be776f5b80fe95359ec9a92" -> "sha256:8394194546321eaf11d9d0330e60af57ddb0e6083172a4526ee6f2f1ae4e8985" [label=""];
  "sha256:8394194546321eaf11d9d0330e60af57ddb0e6083172a4526ee6f2f1ae4e8985" -> "sha256:6cad4593abac56eb6766897a54899f2d2d71077dd008f033b3d598d0e832da18" [label=""];
  "sha256:4932d27a516b3ee8398b5e2773ec1f1ffd1450f40a387c7aa48ba4e98908e1fa" -> "sha256:6cad4593abac56eb6766897a54899f2d2d71077dd008f033b3d598d0e832da18" [label=""];
  "sha256:6cad4593abac56eb6766897a54899f2d2d71077dd008f033b3d598d0e832da18" -> "sha256:34fc39645e92aa6babae8b8e2532a6b0c1c13fec1b2ac5028710dbfa5e60b268" [label=""];
  "sha256:34fc39645e92aa6babae8b8e2532a6b0c1c13fec1b2ac5028710dbfa5e60b268" -> "sha256:43e248b2b861b7786e7924018c79251c16c7b347a91c25edd79e0ea30291927d" [label=""];
  "sha256:43e248b2b861b7786e7924018c79251c16c7b347a91c25edd79e0ea30291927d" -> "sha256:ce235976ffbe2735b2b485c24b83c1e2956620b1a6bad43d8afc810c0ce30e83" [label=""];
  "sha256:725659f55d2ca38666e89ef3c948d63c96501832644696569e736cfee6d39ead" -> "sha256:ce235976ffbe2735b2b485c24b83c1e2956620b1a6bad43d8afc810c0ce30e83" [label=""];
  "sha256:ce235976ffbe2735b2b485c24b83c1e2956620b1a6bad43d8afc810c0ce30e83" -> "sha256:9f432e7bc6773f65951966501bb44d48b8a3e299daaa87f3d72bab6e83c31bed" [label=""];
  "sha256:725659f55d2ca38666e89ef3c948d63c96501832644696569e736cfee6d39ead" -> "sha256:9f432e7bc6773f65951966501bb44d48b8a3e299daaa87f3d72bab6e83c31bed" [label=""];
  "sha256:9f432e7bc6773f65951966501bb44d48b8a3e299daaa87f3d72bab6e83c31bed" -> "sha256:c4ef92a47b74d5e004b345e350a84e91fec417670970835db9c6a474e648dc6e" [label=""];
  "sha256:725659f55d2ca38666e89ef3c948d63c96501832644696569e736cfee6d39ead" -> "sha256:c4ef92a47b74d5e004b345e350a84e91fec417670970835db9c6a474e648dc6e" [label=""];
  "sha256:c4ef92a47b74d5e004b345e350a84e91fec417670970835db9c6a474e648dc6e" -> "sha256:4bae11e8196c3f3c1f6f5211903b52c954ab7db7375aef69b20c7e2d0d03c4e2" [label=""];
  "sha256:4bae11e8196c3f3c1f6f5211903b52c954ab7db7375aef69b20c7e2d0d03c4e2" -> "sha256:b7f2eb37a1ab2ce871e8600f64580705f1e4796b20cb6a62915134761bcf2a90" [label=""];
  "sha256:725659f55d2ca38666e89ef3c948d63c96501832644696569e736cfee6d39ead" -> "sha256:b7f2eb37a1ab2ce871e8600f64580705f1e4796b20cb6a62915134761bcf2a90" [label=""];
  "sha256:34fc39645e92aa6babae8b8e2532a6b0c1c13fec1b2ac5028710dbfa5e60b268" -> "sha256:2c3af0e9cb07bfca0e3086a27fe94d373914a418589a98300d5f8e9d188e6d3d" [label=""];
  "sha256:2c3af0e9cb07bfca0e3086a27fe94d373914a418589a98300d5f8e9d188e6d3d" -> "sha256:62741d7fc5922108895aa8605c7087df135885fa23c51b3f24e47b95b0c9d26b" [label=""];
  "sha256:b7f2eb37a1ab2ce871e8600f64580705f1e4796b20cb6a62915134761bcf2a90" -> "sha256:62741d7fc5922108895aa8605c7087df135885fa23c51b3f24e47b95b0c9d26b" [label=""];
  "sha256:62741d7fc5922108895aa8605c7087df135885fa23c51b3f24e47b95b0c9d26b" -> "sha256:68da465454b0e87a841bbe80c67d763221a8e2935925d487841c8d94480d2d29" [label=""];
}

