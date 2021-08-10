[app/sources/245295350.Dockerfile]
digraph {
  "sha256:28d3372d0d7c6df5045e40398d1f7ef3a391600af82c99c100847c6e88e3daf8" [label="local://context" shape="ellipse"];
  "sha256:d712fad79caf60e0db2662a586e23eb3a32de2f5f084b6d663669b20311f3e9d" [label="docker-image://docker.io/anapsix/alpine-java:latest" shape="ellipse"];
  "sha256:3707806003ab08540a724b1e51aa0c75dae11ccbced3d8fe3a53006bde92c37d" [label="/bin/sh -c mkdir app" shape="box"];
  "sha256:e1f2bba45ab41a47ddab9383e718f4b726be7616680b3111483d31576a981339" [label="mkdir{path=/app}" shape="note"];
  "sha256:bdf153ba3d7e3d96890eaad08f25e02c089258fa98f890973be269825988faac" [label="copy{src=/target/docker-kafka-streams-1.0.jar, dest=/app/}" shape="note"];
  "sha256:429fa28741cbf939ab933fcf3b90deb6dab92d66647c6da1c9a539d2080ab6c9" [label="copy{src=/init.sh, dest=/app/}" shape="note"];
  "sha256:5bd276be8e1d82fdf83d8f183f6a7a483833d519cef84f40de81896951ed1dce" [label="chmod +x /app/init.sh" shape="box"];
  "sha256:f9fda645cd0a44d5a1c583d65862a932d95560f583d36f184105f60717be25e5" [label="sha256:f9fda645cd0a44d5a1c583d65862a932d95560f583d36f184105f60717be25e5" shape="plaintext"];
  "sha256:d712fad79caf60e0db2662a586e23eb3a32de2f5f084b6d663669b20311f3e9d" -> "sha256:3707806003ab08540a724b1e51aa0c75dae11ccbced3d8fe3a53006bde92c37d" [label=""];
  "sha256:3707806003ab08540a724b1e51aa0c75dae11ccbced3d8fe3a53006bde92c37d" -> "sha256:e1f2bba45ab41a47ddab9383e718f4b726be7616680b3111483d31576a981339" [label=""];
  "sha256:e1f2bba45ab41a47ddab9383e718f4b726be7616680b3111483d31576a981339" -> "sha256:bdf153ba3d7e3d96890eaad08f25e02c089258fa98f890973be269825988faac" [label=""];
  "sha256:28d3372d0d7c6df5045e40398d1f7ef3a391600af82c99c100847c6e88e3daf8" -> "sha256:bdf153ba3d7e3d96890eaad08f25e02c089258fa98f890973be269825988faac" [label=""];
  "sha256:bdf153ba3d7e3d96890eaad08f25e02c089258fa98f890973be269825988faac" -> "sha256:429fa28741cbf939ab933fcf3b90deb6dab92d66647c6da1c9a539d2080ab6c9" [label=""];
  "sha256:28d3372d0d7c6df5045e40398d1f7ef3a391600af82c99c100847c6e88e3daf8" -> "sha256:429fa28741cbf939ab933fcf3b90deb6dab92d66647c6da1c9a539d2080ab6c9" [label=""];
  "sha256:429fa28741cbf939ab933fcf3b90deb6dab92d66647c6da1c9a539d2080ab6c9" -> "sha256:5bd276be8e1d82fdf83d8f183f6a7a483833d519cef84f40de81896951ed1dce" [label=""];
  "sha256:5bd276be8e1d82fdf83d8f183f6a7a483833d519cef84f40de81896951ed1dce" -> "sha256:f9fda645cd0a44d5a1c583d65862a932d95560f583d36f184105f60717be25e5" [label=""];
}

