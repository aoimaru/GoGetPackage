[app/sources/142576676.Dockerfile]
digraph {
  "sha256:8f13259ba3ff53a7df5901552dc3ca229f69420780d03fae01ba3e98934e592c" [label="docker-image://quay.io/azavea/terraform:0.10.8@sha256:a46a4a133647b60f201e16feec454c723b9205ad94e0917d015d6d121b16a23d" shape="ellipse"];
  "sha256:ce91a80e5e3705721e7686103925319340bd1e3531356c11e42ee5cabe34ed54" [label="/bin/sh -c pip install docker-compose==1.16.*" shape="box"];
  "sha256:cebedc21e5e5e3023fd00045b746137abe27df9c973dd9cd795dea7fb29e9c65" [label="sha256:cebedc21e5e5e3023fd00045b746137abe27df9c973dd9cd795dea7fb29e9c65" shape="plaintext"];
  "sha256:8f13259ba3ff53a7df5901552dc3ca229f69420780d03fae01ba3e98934e592c" -> "sha256:ce91a80e5e3705721e7686103925319340bd1e3531356c11e42ee5cabe34ed54" [label=""];
  "sha256:ce91a80e5e3705721e7686103925319340bd1e3531356c11e42ee5cabe34ed54" -> "sha256:cebedc21e5e5e3023fd00045b746137abe27df9c973dd9cd795dea7fb29e9c65" [label=""];
}

