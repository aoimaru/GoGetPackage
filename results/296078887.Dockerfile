[app/sources/296078887.Dockerfile]
digraph {
  "sha256:4f2c721c8f81426066c7b58fbeeed1d90c6801539501b18340d8642cdbb0a5d8" [label="local://context" shape="ellipse"];
  "sha256:dc8bc7d0589656994b6a56905a63badb7a7c20edad9d53db823274ffae84a9ce" [label="docker-image://docker.io/library/node:9-alpine" shape="ellipse"];
  "sha256:fe944d5992b32a0d77bb5f4fac411b03a8d565d3aad927065df6db3c90fb49c4" [label="/bin/sh -c mkdir -p ${APPDIR}" shape="box"];
  "sha256:fd3d1efa2c6712a78d4c59e79ce7e2dba589cce3315c2ee7e1eddac0ef6d5cae" [label="mkdir{path=/app/webapp}" shape="note"];
  "sha256:4ae195a9599c3b64adb1fe872abddc30f518086421f7a53a6de1983222c9c4df" [label="/bin/sh -c apk add --update --no-cache zlib-dev libpng-dev" shape="box"];
  "sha256:fdc05bb9d35d785fdd8c139ef1491d68970372e17e6ed6132ceb33ed80fddc19" [label="copy{src=/package.json, dest=/app/webapp}" shape="note"];
  "sha256:7b785d6758eef8e5eb9278d2cfbf420b5a19e403c1b66ec75fd78ac3a8b8c53e" [label="copy{src=/yarn.lock, dest=/app/webapp}" shape="note"];
  "sha256:66b7cd67347c8f2c09c9a14e54a7ff14844a51f145a2891e3204e5722ba2bd29" [label="copy{src=/internals, dest=/app/webapp/internals/}" shape="note"];
  "sha256:80e99ba0a8105b8db9044cfbbe73b15cf4190a740b892e6bda741dd90198694a" [label="copy{src=/app/images, dest=/app/webapp/app/images}" shape="note"];
  "sha256:072ffd43c88b3ad1288ea1663fd529bc662da6f98c357fe90bfcf57b0fda0330" [label="/bin/sh -c apk add --update --no-cache --virtual .build-deps make bash g++ &&      yarn install &&      apk del .build-deps" shape="box"];
  "sha256:cf3c8b9ba1c6829a4ae7e386487d7b0cc81dea79ebd5781ef2e26f4578dacf76" [label="copy{src=/.babelrc, dest=/app/webapp/},copy{src=/plopfile.js, dest=/app/webapp/},copy{src=/.eslintrc, dest=/app/webapp/}" shape="note"];
  "sha256:be33d2297c938155e1d25b347fc1b37208400a4a554ed7cc5adbc2a6027b7f38" [label="copy{src=/server, dest=/app/webapp/server/}" shape="note"];
  "sha256:ac954d20510354bdcec8931bcd0a32fef3372b4fc05d0bc79f6ecc0662079f07" [label="copy{src=/app, dest=/app/webapp/app/}" shape="note"];
  "sha256:fe8c57eb5a976268de7cf57529e85cad3233431e26e4405e797de9132ccde0b8" [label="sha256:fe8c57eb5a976268de7cf57529e85cad3233431e26e4405e797de9132ccde0b8" shape="plaintext"];
  "sha256:dc8bc7d0589656994b6a56905a63badb7a7c20edad9d53db823274ffae84a9ce" -> "sha256:fe944d5992b32a0d77bb5f4fac411b03a8d565d3aad927065df6db3c90fb49c4" [label=""];
  "sha256:fe944d5992b32a0d77bb5f4fac411b03a8d565d3aad927065df6db3c90fb49c4" -> "sha256:fd3d1efa2c6712a78d4c59e79ce7e2dba589cce3315c2ee7e1eddac0ef6d5cae" [label=""];
  "sha256:fd3d1efa2c6712a78d4c59e79ce7e2dba589cce3315c2ee7e1eddac0ef6d5cae" -> "sha256:4ae195a9599c3b64adb1fe872abddc30f518086421f7a53a6de1983222c9c4df" [label=""];
  "sha256:4ae195a9599c3b64adb1fe872abddc30f518086421f7a53a6de1983222c9c4df" -> "sha256:fdc05bb9d35d785fdd8c139ef1491d68970372e17e6ed6132ceb33ed80fddc19" [label=""];
  "sha256:4f2c721c8f81426066c7b58fbeeed1d90c6801539501b18340d8642cdbb0a5d8" -> "sha256:fdc05bb9d35d785fdd8c139ef1491d68970372e17e6ed6132ceb33ed80fddc19" [label=""];
  "sha256:fdc05bb9d35d785fdd8c139ef1491d68970372e17e6ed6132ceb33ed80fddc19" -> "sha256:7b785d6758eef8e5eb9278d2cfbf420b5a19e403c1b66ec75fd78ac3a8b8c53e" [label=""];
  "sha256:4f2c721c8f81426066c7b58fbeeed1d90c6801539501b18340d8642cdbb0a5d8" -> "sha256:7b785d6758eef8e5eb9278d2cfbf420b5a19e403c1b66ec75fd78ac3a8b8c53e" [label=""];
  "sha256:7b785d6758eef8e5eb9278d2cfbf420b5a19e403c1b66ec75fd78ac3a8b8c53e" -> "sha256:66b7cd67347c8f2c09c9a14e54a7ff14844a51f145a2891e3204e5722ba2bd29" [label=""];
  "sha256:4f2c721c8f81426066c7b58fbeeed1d90c6801539501b18340d8642cdbb0a5d8" -> "sha256:66b7cd67347c8f2c09c9a14e54a7ff14844a51f145a2891e3204e5722ba2bd29" [label=""];
  "sha256:66b7cd67347c8f2c09c9a14e54a7ff14844a51f145a2891e3204e5722ba2bd29" -> "sha256:80e99ba0a8105b8db9044cfbbe73b15cf4190a740b892e6bda741dd90198694a" [label=""];
  "sha256:4f2c721c8f81426066c7b58fbeeed1d90c6801539501b18340d8642cdbb0a5d8" -> "sha256:80e99ba0a8105b8db9044cfbbe73b15cf4190a740b892e6bda741dd90198694a" [label=""];
  "sha256:80e99ba0a8105b8db9044cfbbe73b15cf4190a740b892e6bda741dd90198694a" -> "sha256:072ffd43c88b3ad1288ea1663fd529bc662da6f98c357fe90bfcf57b0fda0330" [label=""];
  "sha256:072ffd43c88b3ad1288ea1663fd529bc662da6f98c357fe90bfcf57b0fda0330" -> "sha256:cf3c8b9ba1c6829a4ae7e386487d7b0cc81dea79ebd5781ef2e26f4578dacf76" [label=""];
  "sha256:4f2c721c8f81426066c7b58fbeeed1d90c6801539501b18340d8642cdbb0a5d8" -> "sha256:cf3c8b9ba1c6829a4ae7e386487d7b0cc81dea79ebd5781ef2e26f4578dacf76" [label=""];
  "sha256:cf3c8b9ba1c6829a4ae7e386487d7b0cc81dea79ebd5781ef2e26f4578dacf76" -> "sha256:be33d2297c938155e1d25b347fc1b37208400a4a554ed7cc5adbc2a6027b7f38" [label=""];
  "sha256:4f2c721c8f81426066c7b58fbeeed1d90c6801539501b18340d8642cdbb0a5d8" -> "sha256:be33d2297c938155e1d25b347fc1b37208400a4a554ed7cc5adbc2a6027b7f38" [label=""];
  "sha256:be33d2297c938155e1d25b347fc1b37208400a4a554ed7cc5adbc2a6027b7f38" -> "sha256:ac954d20510354bdcec8931bcd0a32fef3372b4fc05d0bc79f6ecc0662079f07" [label=""];
  "sha256:4f2c721c8f81426066c7b58fbeeed1d90c6801539501b18340d8642cdbb0a5d8" -> "sha256:ac954d20510354bdcec8931bcd0a32fef3372b4fc05d0bc79f6ecc0662079f07" [label=""];
  "sha256:ac954d20510354bdcec8931bcd0a32fef3372b4fc05d0bc79f6ecc0662079f07" -> "sha256:fe8c57eb5a976268de7cf57529e85cad3233431e26e4405e797de9132ccde0b8" [label=""];
}

