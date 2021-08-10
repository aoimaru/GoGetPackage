[app/sources/362782643.Dockerfile]
digraph {
  "sha256:966b93d164ead85a8d2f81782fc9f1bf3832855ac050d21f180f2a726ca6d160" [label="docker-image://docker.io/airhacks/java:latest" shape="ellipse"];
  "sha256:ed2a1d113e6746db248191ad980fc78fb5271b02b8247d9ef51a72460d3928fc" [label="/bin/sh -c curl -L -O https://s3-us-west-2.amazonaws.com/grafana-releases/release/${ARCHIVE}.linux-x64.tar.gz     && tar zxf ${ARCHIVE}.linux-x64.tar.gz" shape="box"];
  "sha256:31339cff1b341e40628d9c131ff9239e217076ea5832e3039e9fa4874ecba1a8" [label="mkdir{path=/grafana-4.6.2}" shape="note"];
  "sha256:221d15fcaf243d40dfc8a16932609da6f2bcc4930bd69c2f5a82352406c845e4" [label="sha256:221d15fcaf243d40dfc8a16932609da6f2bcc4930bd69c2f5a82352406c845e4" shape="plaintext"];
  "sha256:966b93d164ead85a8d2f81782fc9f1bf3832855ac050d21f180f2a726ca6d160" -> "sha256:ed2a1d113e6746db248191ad980fc78fb5271b02b8247d9ef51a72460d3928fc" [label=""];
  "sha256:ed2a1d113e6746db248191ad980fc78fb5271b02b8247d9ef51a72460d3928fc" -> "sha256:31339cff1b341e40628d9c131ff9239e217076ea5832e3039e9fa4874ecba1a8" [label=""];
  "sha256:31339cff1b341e40628d9c131ff9239e217076ea5832e3039e9fa4874ecba1a8" -> "sha256:221d15fcaf243d40dfc8a16932609da6f2bcc4930bd69c2f5a82352406c845e4" [label=""];
}

