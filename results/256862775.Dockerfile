[app/sources/256862775.Dockerfile]
digraph {
  "sha256:c73e99149ef97f8f412d2e16b3114151b0b6d34f6d1334b16eab514a635faed3" [label="docker-image://docker.io/axacom/screenshots:latest" shape="ellipse"];
  "sha256:ba547d20db1eca14694f0c2e9b38b7b3042ec729cb5a6c071505718612552631" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:af53e04c2694da43fe56eb3a15cf0997eddcae7f69bc2683248ad9e7cdce43e7" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:2024d89e5612fe6c3c090e08041c122638ce0cc2cfeaa2740bfd72bf77286cf8" [label="local://context" shape="ellipse"];
  "sha256:d358d7764a029fdebe7c62ce26e8f71f1dd7ae8d814c775d4bb6de7cd195a8a0" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:472210c9ef5ee49a783e0a8afe733311f1f0f3ab924e843f861da751e2dfaf56" [label="/bin/sh -c npm install --quiet" shape="box"];
  "sha256:a05bcb2dd7faf2e53bd8661457b900007cf8868e3095a2acad470441696dbfc7" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:cae7b2a20de4faaa1bb6617c3c14fe431900325fa85dfaa55298898a4032b88c" [label="/bin/sh -c mkdir tests" shape="box"];
  "sha256:ceaabca0c93383060e948679351ab83b8bcab535e54a7f91def90430e463701a" [label="/bin/sh -c chmod +x ./run-tests.sh" shape="box"];
  "sha256:a2a2d7c4733f51c57efe46133482674047e43304563cb62cda6158119c002161" [label="/bin/sh -c mv fonts/ /usr/share/fonts/truetype/" shape="box"];
  "sha256:cb25c7cc015a955f8de31269919d22de57e9d81facc105c8800d03a8e725ef87" [label="sha256:cb25c7cc015a955f8de31269919d22de57e9d81facc105c8800d03a8e725ef87" shape="plaintext"];
  "sha256:c73e99149ef97f8f412d2e16b3114151b0b6d34f6d1334b16eab514a635faed3" -> "sha256:ba547d20db1eca14694f0c2e9b38b7b3042ec729cb5a6c071505718612552631" [label=""];
  "sha256:ba547d20db1eca14694f0c2e9b38b7b3042ec729cb5a6c071505718612552631" -> "sha256:af53e04c2694da43fe56eb3a15cf0997eddcae7f69bc2683248ad9e7cdce43e7" [label=""];
  "sha256:af53e04c2694da43fe56eb3a15cf0997eddcae7f69bc2683248ad9e7cdce43e7" -> "sha256:d358d7764a029fdebe7c62ce26e8f71f1dd7ae8d814c775d4bb6de7cd195a8a0" [label=""];
  "sha256:2024d89e5612fe6c3c090e08041c122638ce0cc2cfeaa2740bfd72bf77286cf8" -> "sha256:d358d7764a029fdebe7c62ce26e8f71f1dd7ae8d814c775d4bb6de7cd195a8a0" [label=""];
  "sha256:d358d7764a029fdebe7c62ce26e8f71f1dd7ae8d814c775d4bb6de7cd195a8a0" -> "sha256:472210c9ef5ee49a783e0a8afe733311f1f0f3ab924e843f861da751e2dfaf56" [label=""];
  "sha256:472210c9ef5ee49a783e0a8afe733311f1f0f3ab924e843f861da751e2dfaf56" -> "sha256:a05bcb2dd7faf2e53bd8661457b900007cf8868e3095a2acad470441696dbfc7" [label=""];
  "sha256:2024d89e5612fe6c3c090e08041c122638ce0cc2cfeaa2740bfd72bf77286cf8" -> "sha256:a05bcb2dd7faf2e53bd8661457b900007cf8868e3095a2acad470441696dbfc7" [label=""];
  "sha256:a05bcb2dd7faf2e53bd8661457b900007cf8868e3095a2acad470441696dbfc7" -> "sha256:cae7b2a20de4faaa1bb6617c3c14fe431900325fa85dfaa55298898a4032b88c" [label=""];
  "sha256:cae7b2a20de4faaa1bb6617c3c14fe431900325fa85dfaa55298898a4032b88c" -> "sha256:ceaabca0c93383060e948679351ab83b8bcab535e54a7f91def90430e463701a" [label=""];
  "sha256:ceaabca0c93383060e948679351ab83b8bcab535e54a7f91def90430e463701a" -> "sha256:a2a2d7c4733f51c57efe46133482674047e43304563cb62cda6158119c002161" [label=""];
  "sha256:a2a2d7c4733f51c57efe46133482674047e43304563cb62cda6158119c002161" -> "sha256:cb25c7cc015a955f8de31269919d22de57e9d81facc105c8800d03a8e725ef87" [label=""];
}

