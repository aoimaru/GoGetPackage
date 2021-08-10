[app/sources/325464400.Dockerfile]
digraph {
  "sha256:c9554350e27015c176e964fa032fcba2589320629d3a87204896ce32f597c913" [label="local://context" shape="ellipse"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:161e8a0c1fd9f678c17b4bf09cacee240ead4389cf0a8df922601a1ad318af09" [label="copy{src=/mall_auth-0.0.1-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:8fd4703c7132d712540fc5abac8846504ba3d4c8e5462309830c6f497577c449" [label="sha256:8fd4703c7132d712540fc5abac8846504ba3d4c8e5462309830c6f497577c449" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:161e8a0c1fd9f678c17b4bf09cacee240ead4389cf0a8df922601a1ad318af09" [label=""];
  "sha256:c9554350e27015c176e964fa032fcba2589320629d3a87204896ce32f597c913" -> "sha256:161e8a0c1fd9f678c17b4bf09cacee240ead4389cf0a8df922601a1ad318af09" [label=""];
  "sha256:161e8a0c1fd9f678c17b4bf09cacee240ead4389cf0a8df922601a1ad318af09" -> "sha256:8fd4703c7132d712540fc5abac8846504ba3d4c8e5462309830c6f497577c449" [label=""];
}

