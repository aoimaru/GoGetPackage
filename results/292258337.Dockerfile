[app/sources/292258337.Dockerfile]
digraph {
  "sha256:0a4fd9bd1178da491b1b7babec3ba5c3c5e5435d2fb0ffdddcd425ed73f3bd82" [label="docker-image://docker.io/zhoumingjun/pytorch:latest-cuda8-py3" shape="ellipse"];
  "sha256:922f718d66e7afee98f67e958e608663494752865752eb85cfd8fbb09e6d2614" [label="local://context" shape="ellipse"];
  "sha256:1c58e2f83fd3dfe99f1d24d73fa2c7dfc4f173b180b28f1ddfc3d1950c45c8fd" [label="copy{src=/, dest=/lstm}" shape="note"];
  "sha256:5f4ed41cf7dfdec05112db8a6664842ac7623de5371493d4150a7bfd7981e2da" [label="mkdir{path=/lstm}" shape="note"];
  "sha256:c4dddedf461cdc36a93651380a66f5579d42231f143fc1cd1dbfa9943a186041" [label="sha256:c4dddedf461cdc36a93651380a66f5579d42231f143fc1cd1dbfa9943a186041" shape="plaintext"];
  "sha256:0a4fd9bd1178da491b1b7babec3ba5c3c5e5435d2fb0ffdddcd425ed73f3bd82" -> "sha256:1c58e2f83fd3dfe99f1d24d73fa2c7dfc4f173b180b28f1ddfc3d1950c45c8fd" [label=""];
  "sha256:922f718d66e7afee98f67e958e608663494752865752eb85cfd8fbb09e6d2614" -> "sha256:1c58e2f83fd3dfe99f1d24d73fa2c7dfc4f173b180b28f1ddfc3d1950c45c8fd" [label=""];
  "sha256:1c58e2f83fd3dfe99f1d24d73fa2c7dfc4f173b180b28f1ddfc3d1950c45c8fd" -> "sha256:5f4ed41cf7dfdec05112db8a6664842ac7623de5371493d4150a7bfd7981e2da" [label=""];
  "sha256:5f4ed41cf7dfdec05112db8a6664842ac7623de5371493d4150a7bfd7981e2da" -> "sha256:c4dddedf461cdc36a93651380a66f5579d42231f143fc1cd1dbfa9943a186041" [label=""];
}

