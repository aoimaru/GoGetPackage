[app/sources/285281891.Dockerfile]
digraph {
  "sha256:37232f90675318147270c4cd560fc2704ae4f8fa458746703d120e96078207b7" [label="docker-image://docker.io/library/openjdk:8u171-jdk-alpine" shape="ellipse"];
  "sha256:93ddea0391f3079763cfccb310cb4d21afa593a3979b7831a0d5ffa7828f2c66" [label="local://context" shape="ellipse"];
  "sha256:fe2930e0ad8798bc5cb188dbc8456aa9fb54577dea69049bc16f4bbe017c0829" [label="copy{src=/target/Servlet4-sample-microbundle.jar, dest=/opt/servlet4.jar}" shape="note"];
  "sha256:1947b79a34af8a8673a7f5e712cc2e878db2e8edac102c1c42a640b7962f675c" [label="sha256:1947b79a34af8a8673a7f5e712cc2e878db2e8edac102c1c42a640b7962f675c" shape="plaintext"];
  "sha256:37232f90675318147270c4cd560fc2704ae4f8fa458746703d120e96078207b7" -> "sha256:fe2930e0ad8798bc5cb188dbc8456aa9fb54577dea69049bc16f4bbe017c0829" [label=""];
  "sha256:93ddea0391f3079763cfccb310cb4d21afa593a3979b7831a0d5ffa7828f2c66" -> "sha256:fe2930e0ad8798bc5cb188dbc8456aa9fb54577dea69049bc16f4bbe017c0829" [label=""];
  "sha256:fe2930e0ad8798bc5cb188dbc8456aa9fb54577dea69049bc16f4bbe017c0829" -> "sha256:1947b79a34af8a8673a7f5e712cc2e878db2e8edac102c1c42a640b7962f675c" [label=""];
}

