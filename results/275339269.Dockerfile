[app/sources/275339269.Dockerfile]
digraph {
  "sha256:55c243dfb9e8c3a6539506afbd140b776cc1fac63a916b3b2c440021b3f15bc5" [label="local://context" shape="ellipse"];
  "sha256:5f02bd898b91be6bbc65dcc2027c965acd314cb1a87e46fb4884580808d1d559" [label="docker-image://docker.io/library/openjdk:11-jre" shape="ellipse"];
  "sha256:d6c6e37f623827f86fec01be5ce71074c65ae1459502a7609b120458bdda2f5e" [label="/bin/sh -c mkdir -p                        \"$CENTRALDOGMA_HOME\"/bin          \"$CENTRALDOGMA_HOME\"/bin/native   \"$CENTRALDOGMA_HOME\"/conf         \"$CENTRALDOGMA_HOME\"/lib          \"$CENTRALDOGMA_HOME\"/licenses     \"$CENTRALDOGMA_HOME\"/log" shape="box"];
  "sha256:39318a495de905838957177745546a793d07caea748c602b43f6b8e15ea85dc7" [label="copy{src=/build/dist/LICENSE.txt, dest=/opt/centraldogma/}" shape="note"];
  "sha256:e32cdcc5c9e545474fc31374fdc5082e802d3205bb5d0bfb88d0774c40db26df" [label="copy{src=/build/dist/NOTICE.txt, dest=/opt/centraldogma/}" shape="note"];
  "sha256:5047a4fb7a00e989191a8447915ab354ba0bc39942bca05bdbff59d7d2d56d5c" [label="copy{src=/build/dist/README.md, dest=/opt/centraldogma/}" shape="note"];
  "sha256:23264610ab5f0c97e4cacb54efb27bfd2ee90b994be0296771a16208e6882e2e" [label="copy{src=/build/dist/bin/*, dest=/opt/centraldogma/bin/}" shape="note"];
  "sha256:e535d28b596dfacf73232875e5a591062bdb266dcf4640153d7e5fefcbc98f2b" [label="copy{src=/build/dist/bin/native/*, dest=/opt/centraldogma/bin/native/}" shape="note"];
  "sha256:ea3e29bcdba45970f51e45cee9ce1ae9df9256d3dc78ebf8883a99f5bea86e5c" [label="copy{src=/build/dist/conf/*, dest=/opt/centraldogma/conf/}" shape="note"];
  "sha256:9a57d0addff9bb2ec62bb19f179bd24519bf0d2231ff7dc4f79c03e362583f51" [label="copy{src=/build/dist/lib/*, dest=/opt/centraldogma/lib/}" shape="note"];
  "sha256:c072eb8c01100148ddacda5cc5b7a0f83be1110645de21399c315bbdb1698e3e" [label="copy{src=/build/dist/licenses/*, dest=/opt/centraldogma/licenses/}" shape="note"];
  "sha256:e778d6bb0cc123025ee876c98a888e01cb1e78b26e9102e918ccdef6277b186a" [label="sha256:e778d6bb0cc123025ee876c98a888e01cb1e78b26e9102e918ccdef6277b186a" shape="plaintext"];
  "sha256:5f02bd898b91be6bbc65dcc2027c965acd314cb1a87e46fb4884580808d1d559" -> "sha256:d6c6e37f623827f86fec01be5ce71074c65ae1459502a7609b120458bdda2f5e" [label=""];
  "sha256:d6c6e37f623827f86fec01be5ce71074c65ae1459502a7609b120458bdda2f5e" -> "sha256:39318a495de905838957177745546a793d07caea748c602b43f6b8e15ea85dc7" [label=""];
  "sha256:55c243dfb9e8c3a6539506afbd140b776cc1fac63a916b3b2c440021b3f15bc5" -> "sha256:39318a495de905838957177745546a793d07caea748c602b43f6b8e15ea85dc7" [label=""];
  "sha256:39318a495de905838957177745546a793d07caea748c602b43f6b8e15ea85dc7" -> "sha256:e32cdcc5c9e545474fc31374fdc5082e802d3205bb5d0bfb88d0774c40db26df" [label=""];
  "sha256:55c243dfb9e8c3a6539506afbd140b776cc1fac63a916b3b2c440021b3f15bc5" -> "sha256:e32cdcc5c9e545474fc31374fdc5082e802d3205bb5d0bfb88d0774c40db26df" [label=""];
  "sha256:e32cdcc5c9e545474fc31374fdc5082e802d3205bb5d0bfb88d0774c40db26df" -> "sha256:5047a4fb7a00e989191a8447915ab354ba0bc39942bca05bdbff59d7d2d56d5c" [label=""];
  "sha256:55c243dfb9e8c3a6539506afbd140b776cc1fac63a916b3b2c440021b3f15bc5" -> "sha256:5047a4fb7a00e989191a8447915ab354ba0bc39942bca05bdbff59d7d2d56d5c" [label=""];
  "sha256:5047a4fb7a00e989191a8447915ab354ba0bc39942bca05bdbff59d7d2d56d5c" -> "sha256:23264610ab5f0c97e4cacb54efb27bfd2ee90b994be0296771a16208e6882e2e" [label=""];
  "sha256:55c243dfb9e8c3a6539506afbd140b776cc1fac63a916b3b2c440021b3f15bc5" -> "sha256:23264610ab5f0c97e4cacb54efb27bfd2ee90b994be0296771a16208e6882e2e" [label=""];
  "sha256:23264610ab5f0c97e4cacb54efb27bfd2ee90b994be0296771a16208e6882e2e" -> "sha256:e535d28b596dfacf73232875e5a591062bdb266dcf4640153d7e5fefcbc98f2b" [label=""];
  "sha256:55c243dfb9e8c3a6539506afbd140b776cc1fac63a916b3b2c440021b3f15bc5" -> "sha256:e535d28b596dfacf73232875e5a591062bdb266dcf4640153d7e5fefcbc98f2b" [label=""];
  "sha256:e535d28b596dfacf73232875e5a591062bdb266dcf4640153d7e5fefcbc98f2b" -> "sha256:ea3e29bcdba45970f51e45cee9ce1ae9df9256d3dc78ebf8883a99f5bea86e5c" [label=""];
  "sha256:55c243dfb9e8c3a6539506afbd140b776cc1fac63a916b3b2c440021b3f15bc5" -> "sha256:ea3e29bcdba45970f51e45cee9ce1ae9df9256d3dc78ebf8883a99f5bea86e5c" [label=""];
  "sha256:ea3e29bcdba45970f51e45cee9ce1ae9df9256d3dc78ebf8883a99f5bea86e5c" -> "sha256:9a57d0addff9bb2ec62bb19f179bd24519bf0d2231ff7dc4f79c03e362583f51" [label=""];
  "sha256:55c243dfb9e8c3a6539506afbd140b776cc1fac63a916b3b2c440021b3f15bc5" -> "sha256:9a57d0addff9bb2ec62bb19f179bd24519bf0d2231ff7dc4f79c03e362583f51" [label=""];
  "sha256:9a57d0addff9bb2ec62bb19f179bd24519bf0d2231ff7dc4f79c03e362583f51" -> "sha256:c072eb8c01100148ddacda5cc5b7a0f83be1110645de21399c315bbdb1698e3e" [label=""];
  "sha256:55c243dfb9e8c3a6539506afbd140b776cc1fac63a916b3b2c440021b3f15bc5" -> "sha256:c072eb8c01100148ddacda5cc5b7a0f83be1110645de21399c315bbdb1698e3e" [label=""];
  "sha256:c072eb8c01100148ddacda5cc5b7a0f83be1110645de21399c315bbdb1698e3e" -> "sha256:e778d6bb0cc123025ee876c98a888e01cb1e78b26e9102e918ccdef6277b186a" [label=""];
}

