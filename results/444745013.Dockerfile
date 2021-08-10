[app/sources/444745013.Dockerfile]
digraph {
  "sha256:ee67479010af4479a43b5db35626ec5bb270fa364af5faa475890764f455a2a0" [label="docker-image://docker.io/library/node:8@sha256:a681bf74805b80d03eb21a6c0ef168a976108a287a74167ab593fc953aac34df" shape="ellipse"];
  "sha256:88a5ea17239fbc12fef1d108a3ce0cc1096ccdd72b4460862033de33e4ed93e6" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:eb8e4192bcdc4d22e20455c17a688afd2f42303c71dec7dbba6384b27f32ffe5" [label="local://context" shape="ellipse"];
  "sha256:ef9c2925a645a0ebf82d34740722ee78afd287c8fe7f3b15260e1bf1fb1b749b" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:56fa310a007234be62ef07f515e83ac5fc77f70cfd8a555c544e4e1154a0dce7" [label="/bin/sh -c npm install" shape="box"];
  "sha256:885cb37274cae8993215a2db7f5a8dd686eab2759e83cd00466db7a034978f49" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:defa4d6490e8ee5b4d25c3f238b17bd8d279e806ae84592304e7892347e12461" [label="/bin/sh -c npm run build && npm run test" shape="box"];
  "sha256:8a6ef361179610715afe335de79864733f6fb97c8f43fdec769c226d5619afe3" [label="sha256:8a6ef361179610715afe335de79864733f6fb97c8f43fdec769c226d5619afe3" shape="plaintext"];
  "sha256:ee67479010af4479a43b5db35626ec5bb270fa364af5faa475890764f455a2a0" -> "sha256:88a5ea17239fbc12fef1d108a3ce0cc1096ccdd72b4460862033de33e4ed93e6" [label=""];
  "sha256:88a5ea17239fbc12fef1d108a3ce0cc1096ccdd72b4460862033de33e4ed93e6" -> "sha256:ef9c2925a645a0ebf82d34740722ee78afd287c8fe7f3b15260e1bf1fb1b749b" [label=""];
  "sha256:eb8e4192bcdc4d22e20455c17a688afd2f42303c71dec7dbba6384b27f32ffe5" -> "sha256:ef9c2925a645a0ebf82d34740722ee78afd287c8fe7f3b15260e1bf1fb1b749b" [label=""];
  "sha256:ef9c2925a645a0ebf82d34740722ee78afd287c8fe7f3b15260e1bf1fb1b749b" -> "sha256:56fa310a007234be62ef07f515e83ac5fc77f70cfd8a555c544e4e1154a0dce7" [label=""];
  "sha256:56fa310a007234be62ef07f515e83ac5fc77f70cfd8a555c544e4e1154a0dce7" -> "sha256:885cb37274cae8993215a2db7f5a8dd686eab2759e83cd00466db7a034978f49" [label=""];
  "sha256:eb8e4192bcdc4d22e20455c17a688afd2f42303c71dec7dbba6384b27f32ffe5" -> "sha256:885cb37274cae8993215a2db7f5a8dd686eab2759e83cd00466db7a034978f49" [label=""];
  "sha256:885cb37274cae8993215a2db7f5a8dd686eab2759e83cd00466db7a034978f49" -> "sha256:defa4d6490e8ee5b4d25c3f238b17bd8d279e806ae84592304e7892347e12461" [label=""];
  "sha256:defa4d6490e8ee5b4d25c3f238b17bd8d279e806ae84592304e7892347e12461" -> "sha256:8a6ef361179610715afe335de79864733f6fb97c8f43fdec769c226d5619afe3" [label=""];
}

