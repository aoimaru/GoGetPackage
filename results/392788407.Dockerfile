[app/sources/392788407.Dockerfile]
digraph {
  "sha256:e4dcd78238a3a2c4b00ec28f32ccce3691ae8d9f4156b196e54567e675d5360e" [label="docker-image://docker.io/library/openjdk:8u212-alpine3.9" shape="ellipse"];
  "sha256:f032852b2cdf215dbf00be7e704cacdbabf8df32456fe0dbf66aaa5ed488c54d" [label="/bin/sh -c apk add --no-cache   curl tree less wget net-tools bash   busybox-extras" shape="box"];
  "sha256:2105976d75f2d56dbf73e539c8c854d6ed710fb6210f6553660b3f0eb1f3cab3" [label="/bin/sh -c mkdir -p /opt/talkyard/uploads/ &&     chmod -R ugo+rw /opt/talkyard/uploads/" shape="box"];
  "sha256:595332609e1b9b0618c16933cd5c91310a0f7d832326f8e04b722eed8376a3df" [label="local://context" shape="ellipse"];
  "sha256:0f8484a8ae599c4c254163ad363ba9d4a4be1cc2d40ddcb49afb8d0eb1734682" [label="copy{src=/app, dest=/opt/talkyard/app}" shape="note"];
  "sha256:b82e729a257a28dbcb0bac8e42e845d4418ac8e485f0a3cf057fe900ef4822ad" [label="copy{src=/app-lib-talkyard, dest=/opt/talkyard/app/lib/}" shape="note"];
  "sha256:4bb2f3eaddc47ef57639d5c211691f408e526a0b33dc27a628d5d43dc54c7169" [label="copy{src=/app-bin, dest=/opt/talkyard/app/bin/}" shape="note"];
  "sha256:9eb242877658423106977d2443d12be3788432b96fe08933eea44fa85d2640bb" [label="copy{src=/app-conf/app-prod.conf, dest=/opt/talkyard/app/conf/}" shape="note"];
  "sha256:362caf664c41df2353935baf59ee8aa6af27f695a18e53d315c2381d81e8d402" [label="copy{src=/app-conf/logback-prod.xml, dest=/opt/talkyard/app/conf/}" shape="note"];
  "sha256:3625f80be4cb893844e8bfe06b18952e826a97088bb5057bab77a11ec00a8084" [label="copy{src=/version.txt, dest=/opt/talkyard/app/}" shape="note"];
  "sha256:f6debe7e7fd085f61458716acfb483e5690e2121202b191cf885c86e27c0a741" [label="copy{src=/build-info, dest=/opt/talkyard/build-info/}" shape="note"];
  "sha256:981f177235483495a446e41e0efa494ae91c5a878976bd47854948deea3f496e" [label="copy{src=/assets, dest=/opt/talkyard/app/assets}" shape="note"];
  "sha256:70cd369520172d2da30abfd126c7cee7970ae7f570adafa49f685a994ecfd5a0" [label="mkdir{path=/opt/talkyard/app}" shape="note"];
  "sha256:8e8a36a879f8c8dbe812cb41eddba56126c02aca9a295513ef90a662c6b76fa0" [label="sha256:8e8a36a879f8c8dbe812cb41eddba56126c02aca9a295513ef90a662c6b76fa0" shape="plaintext"];
  "sha256:e4dcd78238a3a2c4b00ec28f32ccce3691ae8d9f4156b196e54567e675d5360e" -> "sha256:f032852b2cdf215dbf00be7e704cacdbabf8df32456fe0dbf66aaa5ed488c54d" [label=""];
  "sha256:f032852b2cdf215dbf00be7e704cacdbabf8df32456fe0dbf66aaa5ed488c54d" -> "sha256:2105976d75f2d56dbf73e539c8c854d6ed710fb6210f6553660b3f0eb1f3cab3" [label=""];
  "sha256:2105976d75f2d56dbf73e539c8c854d6ed710fb6210f6553660b3f0eb1f3cab3" -> "sha256:0f8484a8ae599c4c254163ad363ba9d4a4be1cc2d40ddcb49afb8d0eb1734682" [label=""];
  "sha256:595332609e1b9b0618c16933cd5c91310a0f7d832326f8e04b722eed8376a3df" -> "sha256:0f8484a8ae599c4c254163ad363ba9d4a4be1cc2d40ddcb49afb8d0eb1734682" [label=""];
  "sha256:0f8484a8ae599c4c254163ad363ba9d4a4be1cc2d40ddcb49afb8d0eb1734682" -> "sha256:b82e729a257a28dbcb0bac8e42e845d4418ac8e485f0a3cf057fe900ef4822ad" [label=""];
  "sha256:595332609e1b9b0618c16933cd5c91310a0f7d832326f8e04b722eed8376a3df" -> "sha256:b82e729a257a28dbcb0bac8e42e845d4418ac8e485f0a3cf057fe900ef4822ad" [label=""];
  "sha256:b82e729a257a28dbcb0bac8e42e845d4418ac8e485f0a3cf057fe900ef4822ad" -> "sha256:4bb2f3eaddc47ef57639d5c211691f408e526a0b33dc27a628d5d43dc54c7169" [label=""];
  "sha256:595332609e1b9b0618c16933cd5c91310a0f7d832326f8e04b722eed8376a3df" -> "sha256:4bb2f3eaddc47ef57639d5c211691f408e526a0b33dc27a628d5d43dc54c7169" [label=""];
  "sha256:4bb2f3eaddc47ef57639d5c211691f408e526a0b33dc27a628d5d43dc54c7169" -> "sha256:9eb242877658423106977d2443d12be3788432b96fe08933eea44fa85d2640bb" [label=""];
  "sha256:595332609e1b9b0618c16933cd5c91310a0f7d832326f8e04b722eed8376a3df" -> "sha256:9eb242877658423106977d2443d12be3788432b96fe08933eea44fa85d2640bb" [label=""];
  "sha256:9eb242877658423106977d2443d12be3788432b96fe08933eea44fa85d2640bb" -> "sha256:362caf664c41df2353935baf59ee8aa6af27f695a18e53d315c2381d81e8d402" [label=""];
  "sha256:595332609e1b9b0618c16933cd5c91310a0f7d832326f8e04b722eed8376a3df" -> "sha256:362caf664c41df2353935baf59ee8aa6af27f695a18e53d315c2381d81e8d402" [label=""];
  "sha256:362caf664c41df2353935baf59ee8aa6af27f695a18e53d315c2381d81e8d402" -> "sha256:3625f80be4cb893844e8bfe06b18952e826a97088bb5057bab77a11ec00a8084" [label=""];
  "sha256:595332609e1b9b0618c16933cd5c91310a0f7d832326f8e04b722eed8376a3df" -> "sha256:3625f80be4cb893844e8bfe06b18952e826a97088bb5057bab77a11ec00a8084" [label=""];
  "sha256:3625f80be4cb893844e8bfe06b18952e826a97088bb5057bab77a11ec00a8084" -> "sha256:f6debe7e7fd085f61458716acfb483e5690e2121202b191cf885c86e27c0a741" [label=""];
  "sha256:595332609e1b9b0618c16933cd5c91310a0f7d832326f8e04b722eed8376a3df" -> "sha256:f6debe7e7fd085f61458716acfb483e5690e2121202b191cf885c86e27c0a741" [label=""];
  "sha256:f6debe7e7fd085f61458716acfb483e5690e2121202b191cf885c86e27c0a741" -> "sha256:981f177235483495a446e41e0efa494ae91c5a878976bd47854948deea3f496e" [label=""];
  "sha256:595332609e1b9b0618c16933cd5c91310a0f7d832326f8e04b722eed8376a3df" -> "sha256:981f177235483495a446e41e0efa494ae91c5a878976bd47854948deea3f496e" [label=""];
  "sha256:981f177235483495a446e41e0efa494ae91c5a878976bd47854948deea3f496e" -> "sha256:70cd369520172d2da30abfd126c7cee7970ae7f570adafa49f685a994ecfd5a0" [label=""];
  "sha256:70cd369520172d2da30abfd126c7cee7970ae7f570adafa49f685a994ecfd5a0" -> "sha256:8e8a36a879f8c8dbe812cb41eddba56126c02aca9a295513ef90a662c6b76fa0" [label=""];
}

