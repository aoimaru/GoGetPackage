[app/sources/374849954.Dockerfile]
digraph {
  "sha256:c3af21d3cda4c5e2c87b5880c68efc0f02e5fefae7b440e6ac3581e7fb9abd1a" [label="docker-image://docker.io/library/docker:1.11.1" shape="ellipse"];
  "sha256:7986b9367103bede2813918e94f54d4a14522d12cfea70b139d9c6ef08e179ed" [label="/bin/sh -c apk add --no-cache bash" shape="box"];
  "sha256:8fde4f73c25bca8e9750f5ba2111f65727f09a655f42f8ea6fd2a8c9da886257" [label="local://context" shape="ellipse"];
  "sha256:11bb3060322e836e2ff202e77cc53ebcf5a7a9bfe1a85e8b0fe2a888fcd8c7d2" [label="copy{src=/, dest=/docker-clean}" shape="note"];
  "sha256:96f1d95efb43909144f7a103c2b2d3db2a048028689a10b94089e2f2f4ed5d33" [label="sha256:96f1d95efb43909144f7a103c2b2d3db2a048028689a10b94089e2f2f4ed5d33" shape="plaintext"];
  "sha256:c3af21d3cda4c5e2c87b5880c68efc0f02e5fefae7b440e6ac3581e7fb9abd1a" -> "sha256:7986b9367103bede2813918e94f54d4a14522d12cfea70b139d9c6ef08e179ed" [label=""];
  "sha256:7986b9367103bede2813918e94f54d4a14522d12cfea70b139d9c6ef08e179ed" -> "sha256:11bb3060322e836e2ff202e77cc53ebcf5a7a9bfe1a85e8b0fe2a888fcd8c7d2" [label=""];
  "sha256:8fde4f73c25bca8e9750f5ba2111f65727f09a655f42f8ea6fd2a8c9da886257" -> "sha256:11bb3060322e836e2ff202e77cc53ebcf5a7a9bfe1a85e8b0fe2a888fcd8c7d2" [label=""];
  "sha256:11bb3060322e836e2ff202e77cc53ebcf5a7a9bfe1a85e8b0fe2a888fcd8c7d2" -> "sha256:96f1d95efb43909144f7a103c2b2d3db2a048028689a10b94089e2f2f4ed5d33" [label=""];
}

