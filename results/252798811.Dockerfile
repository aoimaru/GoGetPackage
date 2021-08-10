[app/sources/252798811.Dockerfile]
digraph {
  "sha256:8965448617297e38d95728a036bc7a2442ae690381dc5ebaf88c802f0aa3c4f2" [label="docker-image://docker.io/devalias/composer-pcntl:latest" shape="ellipse"];
  "sha256:140408011102d3e8a6d977eb194913729f014ce2bd2192755bcb4edd34132fe5" [label="/bin/sh -c apk update && apk add bzip2-dev && docker-php-ext-install bz2" shape="box"];
  "sha256:8f4451c95621a8fc6d17016bafbcb65436ee4799975d2e9a6815e1e043b99636" [label="/bin/sh -c git clone https://github.com/govCMS/govCMS.git && cd govCMS && git checkout 7.x-2.15" shape="box"];
  "sha256:6937e2943947811e6bc7ac81ee5c7435c3c71fe4ecc5ce38c185f0bd9ce3aefa" [label="mkdir{path=/app/govCMS}" shape="note"];
  "sha256:b03a08ded275273da2028afd01c74269be33df7b6290ded167ef4283730cdc60" [label="/bin/sh -c composer install --prefer-dist --working-dir=build" shape="box"];
  "sha256:5018cd4306c3525f9f256b3ebee1a3d5a2f5602777c48909cad01a61a3061348" [label="/bin/sh -c build/bin/phing -f build/phing/build.xml build" shape="box"];
  "sha256:f0e841103d0ad510ded07ee6d5be12a69c9625165fe10c40a1c6831ea159c222" [label="mkdir{path=/app/govCMS/docroot}" shape="note"];
  "sha256:2dbcd7385cbd47f357ba5e2097f859701d8f4a907acff9347a7bab721f1eb25b" [label="sha256:2dbcd7385cbd47f357ba5e2097f859701d8f4a907acff9347a7bab721f1eb25b" shape="plaintext"];
  "sha256:8965448617297e38d95728a036bc7a2442ae690381dc5ebaf88c802f0aa3c4f2" -> "sha256:140408011102d3e8a6d977eb194913729f014ce2bd2192755bcb4edd34132fe5" [label=""];
  "sha256:140408011102d3e8a6d977eb194913729f014ce2bd2192755bcb4edd34132fe5" -> "sha256:8f4451c95621a8fc6d17016bafbcb65436ee4799975d2e9a6815e1e043b99636" [label=""];
  "sha256:8f4451c95621a8fc6d17016bafbcb65436ee4799975d2e9a6815e1e043b99636" -> "sha256:6937e2943947811e6bc7ac81ee5c7435c3c71fe4ecc5ce38c185f0bd9ce3aefa" [label=""];
  "sha256:6937e2943947811e6bc7ac81ee5c7435c3c71fe4ecc5ce38c185f0bd9ce3aefa" -> "sha256:b03a08ded275273da2028afd01c74269be33df7b6290ded167ef4283730cdc60" [label=""];
  "sha256:b03a08ded275273da2028afd01c74269be33df7b6290ded167ef4283730cdc60" -> "sha256:5018cd4306c3525f9f256b3ebee1a3d5a2f5602777c48909cad01a61a3061348" [label=""];
  "sha256:5018cd4306c3525f9f256b3ebee1a3d5a2f5602777c48909cad01a61a3061348" -> "sha256:f0e841103d0ad510ded07ee6d5be12a69c9625165fe10c40a1c6831ea159c222" [label=""];
  "sha256:f0e841103d0ad510ded07ee6d5be12a69c9625165fe10c40a1c6831ea159c222" -> "sha256:2dbcd7385cbd47f357ba5e2097f859701d8f4a907acff9347a7bab721f1eb25b" [label=""];
}

