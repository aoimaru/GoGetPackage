[app/sources/240469222.Dockerfile]
digraph {
  "sha256:fa705a589d6167ebac4707121028260a8ebf5d672810c1232e92fd6b8978c503" [label="docker-image://docker.io/bigtruedata/scala:2.10.3-alpine" shape="ellipse"];
  "sha256:a419fcd119399d17366a8ceeea98cbb714f6a9e1a5fe751ad061315218743795" [label="/bin/sh -c apk add --no-cache --virtual=.dependencies tar wget" shape="box"];
  "sha256:ce263a1c56bd6d94619a8ed579843017fd90bd6837df178d86bb5599943edf45" [label="/bin/sh -c wget -O- \"https://github.com/sbt/sbt/releases/download/v0.13.16/sbt-0.13.16.tgz\"     |  tar xzf - -C /usr/local --strip-components=1     && sbt exit" shape="box"];
  "sha256:8054a1e63ee34f8840cdd56ea1272e36f9f26c21175b2c2f178048ef515818b2" [label="/bin/sh -c apk del --no-cache .dependencies" shape="box"];
  "sha256:e5eff06dccf638cbd226b4d77f9d3105849de92f89f885ea3dd8df1819559e13" [label="mkdir{path=/app}" shape="note"];
  "sha256:f49951821921b09ae36c92ef805a639d0a0bdc6871a3fc806596a33a9f8e9905" [label="sha256:f49951821921b09ae36c92ef805a639d0a0bdc6871a3fc806596a33a9f8e9905" shape="plaintext"];
  "sha256:fa705a589d6167ebac4707121028260a8ebf5d672810c1232e92fd6b8978c503" -> "sha256:a419fcd119399d17366a8ceeea98cbb714f6a9e1a5fe751ad061315218743795" [label=""];
  "sha256:a419fcd119399d17366a8ceeea98cbb714f6a9e1a5fe751ad061315218743795" -> "sha256:ce263a1c56bd6d94619a8ed579843017fd90bd6837df178d86bb5599943edf45" [label=""];
  "sha256:ce263a1c56bd6d94619a8ed579843017fd90bd6837df178d86bb5599943edf45" -> "sha256:8054a1e63ee34f8840cdd56ea1272e36f9f26c21175b2c2f178048ef515818b2" [label=""];
  "sha256:8054a1e63ee34f8840cdd56ea1272e36f9f26c21175b2c2f178048ef515818b2" -> "sha256:e5eff06dccf638cbd226b4d77f9d3105849de92f89f885ea3dd8df1819559e13" [label=""];
  "sha256:e5eff06dccf638cbd226b4d77f9d3105849de92f89f885ea3dd8df1819559e13" -> "sha256:f49951821921b09ae36c92ef805a639d0a0bdc6871a3fc806596a33a9f8e9905" [label=""];
}

